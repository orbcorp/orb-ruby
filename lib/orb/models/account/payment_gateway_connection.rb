# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::PaymentGatewayConnections#list
      class PaymentGatewayConnection < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The Orb-assigned unique identifier for the payment gateway connection.
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_entity_id
        #   The ID of the billing entity that collects payments through this connection.
        #
        #   @return [String]
        required :billing_entity_id, String

        # @!attribute created_at
        #   The time the connection was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute external_account_id
        #   The ID of the account in the external payment provider.
        #
        #   @return [String, nil]
        required :external_account_id, String, nil?: true

        # @!attribute is_default
        #   Whether this is the billing entity's default payment gateway connection.
        #
        #   @return [Boolean]
        required :is_default, Orb::Internal::Type::Boolean

        # @!attribute provider_type
        #   The external payment provider of this connection.
        #
        #   @return [Symbol, Orb::Models::Account::PaymentGatewayConnection::ProviderType]
        required :provider_type, enum: -> { Orb::Account::PaymentGatewayConnection::ProviderType }

        # @!method initialize(id:, billing_entity_id:, created_at:, external_account_id:, is_default:, provider_type:)
        #   A payment gateway connection is one Stripe account or one Adyen merchant account
        #   that a billing entity collects payments through.
        #
        #   @param id [String] The Orb-assigned unique identifier for the payment gateway connection.
        #
        #   @param billing_entity_id [String] The ID of the billing entity that collects payments through this connection.
        #
        #   @param created_at [Time] The time the connection was created.
        #
        #   @param external_account_id [String, nil] The ID of the account in the external payment provider.
        #
        #   @param is_default [Boolean] Whether this is the billing entity's default payment gateway connection.
        #
        #   @param provider_type [Symbol, Orb::Models::Account::PaymentGatewayConnection::ProviderType] The external payment provider of this connection.

        # The external payment provider of this connection.
        #
        # @see Orb::Models::Account::PaymentGatewayConnection#provider_type
        module ProviderType
          extend Orb::Internal::Type::Enum

          STRIPE = :stripe
          ADYEN = :adyen

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
