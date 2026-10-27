# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#fetch_balance
      class CreditFetchBalanceParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute currency
        #   The ledger currency or custom pricing unit to use.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!method initialize(customer_id:, currency: nil, request_options: {})
        #   @param customer_id [String]
        #
        #   @param currency [String, nil] The ledger currency or custom pricing unit to use.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
