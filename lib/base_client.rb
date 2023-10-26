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
  end

  def prep_request(**options)
    request_content = options[:request_content]
    response_content = options[:response_content]
    headers = @headers

    headers['Content-Type'] = 'application/json'

    headers['Accept'] = 'application/json'

    method = options[:method]
    body = case method
           when :post

             # TODO(Ruby): bodies that aren't JSON, dummy. Same for responses.
             JSON.dump options[:body].to_h

           end

    security_scheme = options[:security_scheme]

      { method: method, path: (@base_path || '') + (options[:path] || ''),
                     body: body, headers: headers.merge(auth_headers).filter { |_k, v| !v.nil? }.transform_values(&:to_s),
                     host: options[:host] || @host, scheme: options[:scheme] || @scheme,
                     port: @port}.merge(resolve_uri_elements(options))
  end

  # TODO: (Ruby) specialized Ruby methods for http methods
  def request(**options)
    request_args = prep_request(**options)
    # TODO: client-side errors (DNS resolution, timeouts, etc)
    # TODO: response codes we don't like, 400 etc.
    # TODO: passing retry config
    response = with_retry { @requester.execute request_args }

    # TODO: responses that aren't hashes
    raw_data = JSON.parse(response.body)
    if options[:page]
        page = options[:page].new(
          client: self,
          json: raw_data,
          request: options
        )
        page.convert(**raw_data)
        return page
    end

    model = options[:model]

    if model
      model.convert(**raw_data)
    else
      raw_data
    end
  end
end
