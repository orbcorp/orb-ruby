# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::PaymentGatewayConnections#list_by_external_id
      class PaymentGatewayConnectionListByExternalIDResponse < Orb::Internal::Type::BaseModel
        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute payment_gateway_connections
        #
        #   @return [Array<Orb::Models::Customers::CustomerPaymentGatewayConnection>]
        required :payment_gateway_connections,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Customers::CustomerPaymentGatewayConnection] }

        # @!method initialize(customer_id:, payment_gateway_connections:)
        #   @param customer_id [String]
        #   @param payment_gateway_connections [Array<Orb::Models::Customers::CustomerPaymentGatewayConnection>]
      end
    end
  end
end
