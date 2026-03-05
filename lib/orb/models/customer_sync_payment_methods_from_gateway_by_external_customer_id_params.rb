# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Customers#sync_payment_methods_from_gateway_by_external_customer_id
    class CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute external_customer_id
      #
      #   @return [String]
      required :external_customer_id, String

      # @!method initialize(external_customer_id:, request_options: {})
      #   @param external_customer_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
