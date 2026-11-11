# frozen_string_literal: true

module Orb
  module Resources
    class Migrations
      # @return [Orb::Resources::Migrations::Subscriptions]
      attr_reader :subscriptions

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @subscriptions = Orb::Resources::Migrations::Subscriptions.new(client: client)
      end
    end
  end
end
