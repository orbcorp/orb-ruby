# frozen_string_literal: true

module Orb
  module Models
    class UsageDiscountIntervalModel < Orb::BaseModel
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
      #   @return [Symbol, Orb::Models::UsageDiscountIntervalModel::DiscountType]
      required :discount_type, enum: -> { Orb::Models::UsageDiscountIntervalModel::DiscountType }

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

      # @!attribute usage_discount
      #   Only available if discount_type is `usage`. Number of usage units that this
      #     discount is for
      #
      #   @return [Float]
      required :usage_discount, Float

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param applies_to_price_interval_ids [Array<String>]
      #   # @param discount_type [Symbol, Orb::Models::UsageDiscountIntervalModel::DiscountType]
      #   # @param end_date [Time, nil]
      #   # @param start_date [Time]
      #   # @param usage_discount [Float]
      #   #
      #   def initialize(
      #     applies_to_price_ids:,
      #     applies_to_price_interval_ids:,
      #     discount_type:,
      #     end_date:,
      #     start_date:,
      #     usage_discount:,
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
      # in :usage
      #   # ...
      # end
      # ```
      class DiscountType < Orb::Enum
        USAGE = :usage

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
