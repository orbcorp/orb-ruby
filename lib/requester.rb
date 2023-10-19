# typed: false
# type: strong
# frozen_string_literal: true

# an abstraction for executing a single http request message exchange.
# TODO types of requests and responses so people can implement. Does Net have default request/response types that aren't terrible?
module Requester
  def execute(_request)
    raise 'Not implemented'
  end
end
