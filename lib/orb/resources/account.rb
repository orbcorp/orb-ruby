# frozen_string_literal: true

module Orb
  module Resources
    class Account
      # A billing entity is a legal entity an account invoices from, with its own legal
      # name, address and tax registrations.
      # @return [Orb::Resources::Account::BillingEntities]
      attr_reader :billing_entities

      # A payment gateway connection is one Stripe account or one Adyen merchant account
      # that a billing entity collects payments through.
      # @return [Orb::Resources::Account::PaymentGatewayConnections]
      attr_reader :payment_gateway_connections

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @billing_entities = Orb::Resources::Account::BillingEntities.new(client: client)
        @payment_gateway_connections = Orb::Resources::Account::PaymentGatewayConnections.new(client: client)
      end
    end
  end
end
