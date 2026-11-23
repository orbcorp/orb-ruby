# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::PaymentGatewayConnections#update
      class PaymentGatewayConnectionUpdateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute payment_gateway_connection_id
        #
        #   @return [String]
        required :payment_gateway_connection_id, String

        # @!attribute is_default
        #   Only `true` is accepted: it makes this the customer's default mapping for the
        #   connection's billing entity. Omit it to keep the current default. To move the
        #   default, set it on another mapping.
        #
        #   @return [Boolean, Orb::Models::Customers::PaymentGatewayConnectionUpdateParams::IsDefault, nil]
        optional :is_default,
                 enum: -> { Orb::Customers::PaymentGatewayConnectionUpdateParams::IsDefault },
                 nil?: true

        # @!attribute provider_customer_id
        #   The ID of the customer in the external payment provider. Omit it to keep the
        #   current one; `null` clears it, and Orb creates a Stripe customer at the next
        #   payment through this connection.
        #
        #   @return [String, nil]
        optional :provider_customer_id, String, nil?: true

        # @!method initialize(customer_id:, payment_gateway_connection_id:, is_default: nil, provider_customer_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::PaymentGatewayConnectionUpdateParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param payment_gateway_connection_id [String]
        #
        #   @param is_default [Boolean, Orb::Models::Customers::PaymentGatewayConnectionUpdateParams::IsDefault, nil] Only `true` is accepted: it makes this the customer's default mapping for the co
        #
        #   @param provider_customer_id [String, nil] The ID of the customer in the external payment provider. Omit it to keep the cur
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        # Only `true` is accepted: it makes this the customer's default mapping for the
        # connection's billing entity. Omit it to keep the current default. To move the
        # default, set it on another mapping.
        module IsDefault
          extend Orb::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end
      end
    end
  end
end
