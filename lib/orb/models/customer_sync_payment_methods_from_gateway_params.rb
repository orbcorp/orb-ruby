# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Customers#sync_payment_methods_from_gateway
    class CustomerSyncPaymentMethodsFromGatewayParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
