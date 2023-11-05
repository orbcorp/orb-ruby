# typed: true
# frozen_string_literal: true

require "json"
require_relative "pooled_net_requester"
require "uri"

# TODO: retry-after headers, courtesy of Python SDK
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After
# TODO justify these magic default numbers
# TODO i have no idea what class to put this on but i assume it's very
#   rude not to have a class for everything in ruby
def with_retry(max_tries: 5, initial_delay: 1, max_delay: 10, &block)
  delay = initial_delay
  tries = 0
  loop do
    return yield block
  rescue StandardError => e
    raise e unless tries < max_tries

    tries += 1
    sleep delay
    jitter_factor = rand
    delay = [0, [max_delay, delay * (2**tries) + jitter_factor].min].max
  end
end

# convert the OpenAPI domain to raw HTTP:
# - apply security schemes
# - coerce requests/responses to and from content types
# - add server host and scheme, base api paths to URI
# - apply retries
module Orb
  class BaseClient
    attr_reader :accounts, :http_bin

    def initialize(server_uri_string:, requester: nil, headers: nil)
      @requester = requester || PooledNetRequester.new
      env_uri = URI.parse(server_uri_string)
      @headers = headers
      @host = env_uri.host
      @scheme = env_uri.scheme&.to_sym
      @port = env_uri.port
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

    # TODO: (Ruby) specialized Ruby methods for http methods
    def request(**options)
      request_args = prep_request(**options)
      # TODO: client-side errors (DNS resolution, timeouts, etc)
      # TODO: response codes we don't like, 400 etc.
      # TODO: passing retry config
      response = with_retry { @requester.execute request_args }

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
end
