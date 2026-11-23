# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::PaymentGatewayConnections#fetch
      class PaymentGatewayConnectionFetchParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute payment_gateway_connection_id
        #
        #   @return [String]
        required :payment_gateway_connection_id, String

        # @!method initialize(payment_gateway_connection_id:, request_options: {})
        #   @param payment_gateway_connection_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
