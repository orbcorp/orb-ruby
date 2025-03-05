# frozen_string_literal: true

module Orb
  module Models
    class AmountDiscountIntervalModel < Orb::BaseModel
      # @!attribute amount_discount
      #   Only available if discount_type is `amount`.
      #
      #   @return [String]
      required :amount_discount, String

      # @!attribute applies_to_price_ids
      #   The price ids that this discount interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this discount interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::AmountDiscountIntervalModel::DiscountType]
      required :discount_type, enum: -> { Orb::Models::AmountDiscountIntervalModel::DiscountType }

      # @!attribute end_date
      #   The end date of the discount interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute start_date
      #   The start date of the discount interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!parse
      #   # @param amount_discount [String]
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param applies_to_price_interval_ids [Array<String>]
      #   # @param discount_type [Symbol, Orb::Models::AmountDiscountIntervalModel::DiscountType]
      #   # @param end_date [Time, nil]
      #   # @param start_date [Time]
      #   #
      #   def initialize(
      #     amount_discount:,
      #     applies_to_price_ids:,
      #     applies_to_price_interval_ids:,
      #     discount_type:,
      #     end_date:,
      #     start_date:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case discount_type
      # in :amount
      #   # ...
      # end
      # ```
      class DiscountType < Orb::Enum
        AMOUNT = :amount

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
