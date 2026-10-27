# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#fetch_balance_by_external_id
      class CreditFetchBalanceByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute external_customer_id
        #
        #   @return [String]
        required :external_customer_id, String

        # @!attribute currency
        #   The ledger currency or custom pricing unit to use.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!method initialize(external_customer_id:, currency: nil, request_options: {})
        #   @param external_customer_id [String]
        #
        #   @param currency [String, nil] The ledger currency or custom pricing unit to use.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
