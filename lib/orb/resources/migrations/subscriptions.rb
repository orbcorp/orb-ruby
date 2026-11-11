# frozen_string_literal: true

module Orb
  module Resources
    class Migrations
      class Subscriptions
        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
