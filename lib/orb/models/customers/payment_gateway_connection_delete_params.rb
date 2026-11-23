# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::PaymentGatewayConnections#delete
      class PaymentGatewayConnectionDeleteParams < Orb::Internal::Type::BaseModel
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

        # @!method initialize(customer_id:, payment_gateway_connection_id:, request_options: {})
        #   @param customer_id [String]
        #   @param payment_gateway_connection_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
