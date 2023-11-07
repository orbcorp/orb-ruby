# typed: true
# frozen_string_literal: true

require "json"
require_relative "pooled_net_requester"
require "uri"

# convert the OpenAPI domain to raw HTTP:
# - apply security schemes
# - coerce requests/responses to and from content types
# - add server host and scheme, base api paths to URI
# - apply retries
module Orb
  class BaseClient
    DEFAULT_MAX_RETRIES = 2
    attr_reader :accounts, :http_bin

    def initialize(
      server_uri_string:,
      requester: nil,
      headers: nil,
      max_retries: nil
    )
      @requester = requester || PooledNetRequester.new
      env_uri = URI.parse(server_uri_string)
      @headers = headers
      @host = env_uri.host
      @scheme = env_uri.scheme&.to_sym
      @port = env_uri.port
      @max_retries = max_retries || DEFAULT_MAX_RETRIES
    end

    def auth_headers
      {}
    end

    def resolve_uri_elements(req)
      uri_components =
        if req[:url]
          uri = URI.parse(req[:url])
          {
            host: uri.host,
            scheme: uri.scheme,
            path: uri.path,
            query: uri.query,
            port: uri.port
          }
        else
          req.slice(:host, :scheme, :path, :port, :query)
        end

      uri_components[:query] = uri_components[:query]&.filter do |k, v|
        !v.is_a? NotGiven
      end
      uri_components
    end

    def prep_request(**options)
      request_content = options[:request_content]
      response_content = options[:response_content]
      headers = @headers.dup

      headers["Content-Type"] = "application/json"

      headers["Accept"] = "application/json"

      method = options[:method].to_sym
      body =
        case method
        when :post, :put, :patch
          body = options[:body]
          if body
            # TODO(Ruby): bodies that aren't JSON, dummy. Same for responses.
            # TODO(Ruby): bodies that aren't hashes.
            to_send =
              if body.is_a? Hash
                body.filter { |k, v| !v.is_a? NotGiven }.to_h
              else
                body
              end
            JSON.dump to_send
          end
        else
          nil
        end

      security_scheme = options[:security_scheme]

      {
        method: method,
        path: (@base_path || "") + (options[:path] || ""),
        body: body,
        headers:
          headers
            .merge(auth_headers)
            .filter { |_k, v| !v.nil? }
            .transform_values(&:to_s),
        host: options[:host] || @host,
        scheme: options[:scheme] || @scheme,
        port: @port
      }.merge(resolve_uri_elements(options))
    end

    def should_retry?(response)
      should_retry_header = response.header["x-should-retry"]

      case should_retry_header
      when "true"
        true
      when "false"
        false
      else
        response_code = response.code.to_i
        # retry on:
        # 408: timeouts
        # 409: locks
        # 429: rate limits
        # 500+: unknown errors
        [408, 409, 429].include?(response_code) || response_code >= 500
      end
    end

    def make_status_error(err_msg:, body:, response:)
      raise NotImplementedError
    end

    def make_status_error_from_response(response)
      err_body =
        begin
          JSON.parse(response.body)
        rescue StandardError
          response
        end

      # NB: we include the body in the error message as well as returning it,
      # since logging error messages is a common and quick way to assess what's wrong with a response.
      err_msg = "Error code: #{response.code}; Response: #{response.body}"

      make_status_error(err_msg: err_msg, body: err_body, response: response)
    end

    # About the Retry-After header: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After
    #
    # <http-date>". See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After#syntax for
    # details.
    def header_based_retry(response)
      begin
        retry_after = response.header["retry-after"]
        retry_after
          .split(",")
          .map do |element|
            as_int =
              begin
                Integer(element)
              rescue StandardError
              end

            as_datetime =
              begin
                Time.httpdate(element) - Time.now
              rescue StandardError
              end

            [as_int, as_datetime].filter { |x| x }.max
          end
      rescue StandardError
      end
    end

    def with_retry(request)
      delay = 0.5
      max_delay = 8.0
      tries = 0
      loop do
        begin
          response = @requester.execute request
          is_ok = response.code.to_i < 400
          return response if is_ok
        rescue Net::HTTPBadResponse
          if tries >= @max_retries
            raise HTTP::APIConnectionError.new(request: request)
          end
        rescue Timeout::Error
          if tries >= @max_retries
            raise HTTP::APITimeoutError.new(request: request)
          end
        end

        if tries >= @max_retries && !should_retry?(response)
          raise make_status_error_from_response(response)
        end

        tries += 1
        sleep delay
        base_delay = header_based_retry(response) || (delay * (2**tries))
        jitter_factor = 1 - 0.25 * rand
        delay = [max_delay, [0, base_delay * jitter_factor].max].min
      end
    end

    # TODO: (Ruby) specialized Ruby methods for http methods
    def request(**options)
      request_args = prep_request(**options)
      # TODO: client-side errors (DNS resolution, timeouts, etc)
      # TODO: response codes we don't like, 400 etc.
      # TODO: passing retry config
      response = with_retry(request_args)

      raw_data =
        case response.content_type
        when "application/problem+json"
          # TODO(PR #2724) after that PR merges, this block shouldn't be necessary
          raise StandardError.new("Failed with #{response.code}")
        when "application/json"
          begin
            JSON.parse(response.body)
          rescue JSON::ParserError
            response.body
          end
          # TODO parsing other response types
        else
          response.body
        end
      if options[:page]
        page =
          options[:page].new(client: self, json: raw_data, request: options)
        page.convert(**raw_data)
        return page
      end

      model = options[:model]

      model ? Converter.convert(model, raw_data) : raw_data
    end
  end

  module HTTP
    class Error < StandardError
    end

    class ResponseError < Error
      attr_reader :err_msg, :response, :body, :code
      def initialize(err_msg:, response:, body:)
        @err_msg = err_msg
        @response = response
        @body = body
        @code = response.code.to_i
      end
    end

    class RequestError < Error
      attr_reader :request
      def initialize(request:)
        @request = request
      end
    end

    class BadRequestError < ResponseError
    end
    class AuthenticationError < ResponseError
    end
    class PermissionDeniedError < ResponseError
    end
    class NotFoundError < ResponseError
    end
    class ConflictError < ResponseError
    end
    class UnprocessableEntityError < ResponseError
    end
    class RateLimitError < ResponseError
    end
    class InternalServerError < ResponseError
    end
    class APIStatusError < ResponseError
    end
    class APIConnectionError < RequestError
    end
    class APITimeoutError < RequestError
    end
  end
end
