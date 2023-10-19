# typed: true
# frozen_string_literal: true

require 'json'
require_relative 'pooled_net_requester'
require 'uri'

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
    delay = [0,
             [max_delay, delay * (2**tries) + jitter_factor].min].max
  end
end

# convert the OpenAPI domain to raw HTTP:
# - apply security schemes
# - coerce requests/responses to and from content types
# - add server host and scheme, base api paths to URI
# - apply retries
class BaseClient
  attr_reader :accounts, :http_bin

  def initialize(server_uri_string:, requester: nil, headers:nil)
    @requester = requester || PooledNetRequester.new
    env_uri = URI.parse(server_uri_string)
    @headers = headers
    @host = env_uri.host
    @scheme = env_uri.scheme&.to_sym
    @port = env_uri.port
    # TODO(Ruby) real auth
    @api_key = 'KEY'
    @api_key_header = 'API_KEY'
  end

  # begin auth. could extract this section.

  # TODO: initialize api key
  def authenticate!(security_scheme, request_args)
    add_api_key_header!(request_args, @api_key_header, @api_key)
  end

  # TODO: do we not support api keys in queries? I don't see it in python yet.
  def add_api_key_header!(request_args, header_name, key)
    request_args[:headers] ||= {}
    request_args[:headers][header_name] = key
  end

  # TODO: api key query
  # TODO bearer
  # TODO oauth
  # TODO basic auth

  # end auth.

  def prep_request(**options)
    request_content = options[:request_content]
    response_content = options[:response_content]
    headers = @headers
    case response_content
    when :json, nil # TODO(Ruby) content types other than JSON
      headers['Content-Type'] = 'application/json'
    else
      raise NotImplementedError
    end
    case request_content
    when :json, nil # TODO(Ruby) content types other than JSON
      headers['Accept'] = 'application/json'
    else
      raise NotImplementedError
    end

    method = options[:method]
    case method
    when :post
      case request_content
      when :json, nil
        # TODO: bodies that aren't hashes
        body = JSON.dump options[:body].to_h
      else
        raise NotImplementedError, "unknown request content type #{request_content}"
      end
    else
      body = nil
    end

    security_scheme = options[:security_scheme]

    request_args = { method: method, path: (@base_path || '') + (options[:path] || ''),
                     body: body, headers: headers.filter { |_k, v| !v.nil? }.transform_values(&:to_s),
                     host: options[:host] || @host, scheme: options[:scheme] || @scheme,
                     port: @port}
    # tricky to do authentication in immutable style without deep-merge
    authenticate!(security_scheme, request_args)

    request_args
  end

  def request(**options)
    response_content = options[:response_content]
    request_args = prep_request(**options)
    # TODO: client-side errors (DNS resolution, timeouts, etc)
    # TODO: response codes we don't like, 400 etc.
    # TODO: passing retry config
    response = with_retry { @requester.execute request_args }

    # TODO: responses that aren't JSON
    case response_content || :json
    when :json
      # TODO: responses that aren't hashes
      raw_data = JSON.parse(response.body)
      response_class = options[:response_class]

      if response_class
        response_class.convert raw_data
      else
        raw_data
      end
    else
      raise NotImplementedError, "unknown response content type #{response_content}"
    end
  end
end
