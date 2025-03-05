# frozen_string_literal: true

module Orb
  module Models
    class NewAllocationPriceModel < Orb::BaseModel
      # @!attribute amount
      #   An amount of the currency to allocate to the customer at the specified cadence.
      #
      #   @return [String]
      required :amount, String

      # @!attribute cadence
      #   The cadence at which to allocate the amount to the customer.
      #
      #   @return [Symbol, Orb::Models::NewAllocationPriceModel::Cadence]
      required :cadence, enum: -> { Orb::Models::NewAllocationPriceModel::Cadence }

      # @!attribute currency
      #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
      #     this price.
      #
      #   @return [String]
      required :currency, String

      # @!attribute expires_at_end_of_cadence
      #   Whether the allocated amount should expire at the end of the cadence or roll
      #     over to the next period.
      #
      #   @return [Boolean]
      required :expires_at_end_of_cadence, Orb::BooleanModel

      # @!parse
      #   # @param amount [String]
      #   # @param cadence [Symbol, Orb::Models::NewAllocationPriceModel::Cadence]
      #   # @param currency [String]
      #   # @param expires_at_end_of_cadence [Boolean]
      #   #
      #   def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # The cadence at which to allocate the amount to the customer.
      #
      # @example
      # ```ruby
      # case cadence
      # in :one_time
      #   # ...
      # in :monthly
      #   # ...
      # in :quarterly
      #   # ...
      # in :semi_annual
      #   # ...
      # in :annual
      #   # ...
      # in ...
      #   #...
      # end
      # ```
      class Cadence < Orb::Enum
        ONE_TIME = :one_time
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        SEMI_ANNUAL = :semi_annual
        ANNUAL = :annual
        CUSTOM = :custom

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
