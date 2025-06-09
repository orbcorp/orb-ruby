# frozen_string_literal: true

module Orb
  module Models
    class PercentageDiscountInterval < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this discount interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::PercentageDiscountInterval::DiscountType]
      required :discount_type, enum: -> { Orb::PercentageDiscountInterval::DiscountType }

      # @!attribute end_date
      #   The end date of the discount interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute filters
      #   The filters that determine which prices this discount interval applies to.
      #
      #   @return [Array<Orb::Models::TransformPriceFilter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] }

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`.This is a number between 0
      #   and 1.
      #
      #   @return [Float]
      required :percentage_discount, Float

      # @!attribute start_date
      #   The start date of the discount interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(applies_to_price_interval_ids:, discount_type:, end_date:, filters:, percentage_discount:, start_date:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PercentageDiscountInterval} for more details.
      #
      #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
      #
      #   @param discount_type [Symbol, Orb::Models::PercentageDiscountInterval::DiscountType]
      #
      #   @param end_date [Time, nil] The end date of the discount interval.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices this discount interval applies to.
      #
      #   @param percentage_discount [Float] Only available if discount_type is `percentage`.This is a number between 0 and 1
      #
      #   @param start_date [Time] The start date of the discount interval.

      # @see Orb::Models::PercentageDiscountInterval#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        PERCENTAGE = :percentage

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
