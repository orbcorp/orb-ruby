# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::PaymentGatewayConnections#delete_by_external_id
      class PaymentGatewayConnectionDeleteByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute external_customer_id
        #
        #   @return [String]
        required :external_customer_id, String

        # @!attribute payment_gateway_connection_id
        #
        #   @return [String]
        required :payment_gateway_connection_id, String

        # @!method initialize(external_customer_id:, payment_gateway_connection_id:, request_options: {})
        #   @param external_customer_id [String]
        #   @param payment_gateway_connection_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
