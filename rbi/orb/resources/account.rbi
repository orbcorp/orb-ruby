# typed: strong

module Orb
  module Resources
    class Account
      # A billing entity is a legal entity an account invoices from, with its own legal
      # name, address and tax registrations.
      sig { returns(Orb::Resources::Account::BillingEntities) }
      attr_reader :billing_entities

      # A payment gateway connection is one Stripe account or one Adyen merchant account
      # that a billing entity collects payments through.
      sig { returns(Orb::Resources::Account::PaymentGatewayConnections) }
      attr_reader :payment_gateway_connections

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
