# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::PaymentGatewayConnections#create
      class PaymentGatewayConnectionCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute payment_gateway_connection_id
        #   The ID of the payment gateway connection to map the customer to.
        #
        #   @return [String]
        required :payment_gateway_connection_id, String

        # @!attribute is_default
        #   Whether Orb charges the customer for the billing entity's invoices through this
        #   mapping. The customer's first mapping for a billing entity is the default
        #   regardless.
        #
        #   @return [Boolean, nil]
        optional :is_default, Orb::Internal::Type::Boolean

        # @!attribute provider_customer_id
        #   The ID of the customer in the external payment provider.
        #
        #   @return [String, nil]
        optional :provider_customer_id, String, nil?: true

        # @!method initialize(customer_id:, payment_gateway_connection_id:, is_default: nil, provider_customer_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::PaymentGatewayConnectionCreateParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param payment_gateway_connection_id [String] The ID of the payment gateway connection to map the customer to.
        #
        #   @param is_default [Boolean] Whether Orb charges the customer for the billing entity's invoices through this
        #
        #   @param provider_customer_id [String, nil] The ID of the customer in the external payment provider.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
