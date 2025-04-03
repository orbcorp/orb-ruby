# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::BalanceTransactions#create
      class BalanceTransactionCreateParams < Orb::Internal::Type::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute amount
        #
        #   @return [String]
        required :amount, String

        # @!attribute type
        #
        #   @return [Symbol, Orb::Models::Customers::BalanceTransactionCreateParams::Type]
        required :type, enum: -> { Orb::Models::Customers::BalanceTransactionCreateParams::Type }

        # @!attribute description
        #   An optional description that can be specified around this entry.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!parse
        #   # @param amount [String]
        #   # @param type [Symbol, Orb::Models::Customers::BalanceTransactionCreateParams::Type]
        #   # @param description [String, nil]
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(amount:, type:, description: nil, request_options: {}, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

        module Type
          extend Orb::Internal::Type::Enum

          INCREMENT = :increment
          DECREMENT = :decrement

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
