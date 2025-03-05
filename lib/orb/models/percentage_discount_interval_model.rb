# frozen_string_literal: true

module Orb
  module Models
    class PercentageDiscountIntervalModel < Orb::BaseModel
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
      #   @return [Symbol, Orb::Models::PercentageDiscountIntervalModel::DiscountType]
      required :discount_type, enum: -> { Orb::Models::PercentageDiscountIntervalModel::DiscountType }

      # @!attribute end_date
      #   The end date of the discount interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`.This is a number between 0
      #     and 1.
      #
      #   @return [Float]
      required :percentage_discount, Float

      # @!attribute start_date
      #   The start date of the discount interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param applies_to_price_interval_ids [Array<String>]
      #   # @param discount_type [Symbol, Orb::Models::PercentageDiscountIntervalModel::DiscountType]
      #   # @param end_date [Time, nil]
      #   # @param percentage_discount [Float]
      #   # @param start_date [Time]
      #   #
      #   def initialize(
      #     applies_to_price_ids:,
      #     applies_to_price_interval_ids:,
      #     discount_type:,
      #     end_date:,
      #     percentage_discount:,
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
      # in :percentage
      #   # ...
      # end
      # ```
      class DiscountType < Orb::Enum
        PERCENTAGE = :percentage

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
