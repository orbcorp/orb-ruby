# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::PaymentGatewayConnections#create
      class CustomerPaymentGatewayConnection < Orb::Internal::Type::BaseModel
        # @!attribute billing_entity_id
        #   The ID of the billing entity that collects payments through the connection.
        #
        #   @return [String]
        required :billing_entity_id, String

        # @!attribute created_at
        #   The time the mapping was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute external_account_id
        #   The ID of the account in the external payment provider.
        #
        #   @return [String, nil]
        required :external_account_id, String, nil?: true

        # @!attribute is_default
        #   Whether Orb charges the customer for that billing entity's invoices through this
        #   mapping. On the default billing entity, it is the mapping the customer's
        #   `payment_provider_id` reflects.
        #
        #   @return [Boolean]
        required :is_default, Orb::Internal::Type::Boolean

        # @!attribute payment_gateway_connection_id
        #   The ID of the payment gateway connection the customer is mapped to.
        #
        #   @return [String]
        required :payment_gateway_connection_id, String

        # @!attribute provider_customer_id
        #   The ID of the customer in the external payment provider, or null if none is set.
        #
        #   @return [String, nil]
        required :provider_customer_id, String, nil?: true

        # @!attribute provider_type
        #   The external payment provider of the connection.
        #
        #   @return [Symbol, Orb::Models::Customers::CustomerPaymentGatewayConnection::ProviderType]
        required :provider_type, enum: -> { Orb::Customers::CustomerPaymentGatewayConnection::ProviderType }

        # @!method initialize(billing_entity_id:, created_at:, external_account_id:, is_default:, payment_gateway_connection_id:, provider_customer_id:, provider_type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::CustomerPaymentGatewayConnection} for more details.
        #
        #   A customer's mapping to one payment gateway connection.
        #
        #   @param billing_entity_id [String] The ID of the billing entity that collects payments through the connection.
        #
        #   @param created_at [Time] The time the mapping was created.
        #
        #   @param external_account_id [String, nil] The ID of the account in the external payment provider.
        #
        #   @param is_default [Boolean] Whether Orb charges the customer for that billing entity's invoices through this
        #
        #   @param payment_gateway_connection_id [String] The ID of the payment gateway connection the customer is mapped to.
        #
        #   @param provider_customer_id [String, nil] The ID of the customer in the external payment provider, or null if none is set.
        #
        #   @param provider_type [Symbol, Orb::Models::Customers::CustomerPaymentGatewayConnection::ProviderType] The external payment provider of the connection.

        # The external payment provider of the connection.
        #
        # @see Orb::Models::Customers::CustomerPaymentGatewayConnection#provider_type
        module ProviderType
          extend Orb::Internal::Type::Enum

          STRIPE = :stripe
          ADYEN = :adyen

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    CustomerPaymentGatewayConnection = Customers::CustomerPaymentGatewayConnection
  end
end
