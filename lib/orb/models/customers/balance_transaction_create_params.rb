# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::BalanceTransactions#create
      class BalanceTransactionCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute amount
        #
        #   @return [String]
        required :amount, String

        # @!attribute type
        #
        #   @return [Symbol, Orb::Models::Customers::BalanceTransactionCreateParams::Type]
        required :type, enum: -> { Orb::Customers::BalanceTransactionCreateParams::Type }

        # @!attribute description
        #   An optional description that can be specified around this entry.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(amount:, type:, description: nil, request_options: {})
        #   @param amount [String]
        #
        #   @param type [Symbol, Orb::Models::Customers::BalanceTransactionCreateParams::Type]
        #
        #   @param description [String, nil] An optional description that can be specified around this entry.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        module Type
          extend Orb::Internal::Type::Enum

          INCREMENT = :increment
          DECREMENT = :decrement

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
