# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::PaymentGatewayConnections#list
      class PaymentGatewayConnectionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute billing_entity_id
        #   Only return mappings to this billing entity's connections.
        #
        #   @return [String, nil]
        optional :billing_entity_id, String, nil?: true

        # @!attribute payment_gateway_connection_id
        #   Only return the mapping to this connection.
        #
        #   @return [String, nil]
        optional :payment_gateway_connection_id, String, nil?: true

        # @!method initialize(customer_id:, billing_entity_id: nil, payment_gateway_connection_id: nil, request_options: {})
        #   @param customer_id [String]
        #
        #   @param billing_entity_id [String, nil] Only return mappings to this billing entity's connections.
        #
        #   @param payment_gateway_connection_id [String, nil] Only return the mapping to this connection.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
