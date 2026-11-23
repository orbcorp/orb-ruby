# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::PaymentGatewayConnections#list
      class PaymentGatewayConnectionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute billing_entity_id
        #   Only return connections of this billing entity.
        #
        #   @return [String, nil]
        optional :billing_entity_id, String, nil?: true

        # @!attribute cursor
        #   Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute provider_type
        #   Only return connections of this payment provider.
        #
        #   @return [Symbol, Orb::Models::Account::PaymentGatewayConnectionListParams::ProviderType, nil]
        optional :provider_type,
                 enum: -> { Orb::Account::PaymentGatewayConnectionListParams::ProviderType },
                 nil?: true

        # @!method initialize(billing_entity_id: nil, cursor: nil, limit: nil, provider_type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Account::PaymentGatewayConnectionListParams} for more details.
        #
        #   @param billing_entity_id [String, nil] Only return connections of this billing entity.
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param provider_type [Symbol, Orb::Models::Account::PaymentGatewayConnectionListParams::ProviderType, nil] Only return connections of this payment provider.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        # Only return connections of this payment provider.
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
