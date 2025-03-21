# frozen_string_literal: true

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateParams < Orb::BaseModel
        # @!parse
        #   extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

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

        # def initialize: (Hash | Orb::BaseModel) -> void

        module Type
          extend Orb::Enum

          INCREMENT = :increment
          DECREMENT = :decrement

          finalize!

          class << self
            # @!parse
            #   # @return [Array<Symbol>]
            #   def values; end
          end
        end
      end
    end
  end
end
