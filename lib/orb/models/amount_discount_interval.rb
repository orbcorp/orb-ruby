# frozen_string_literal: true

module Orb
  module Models
    class AmountDiscountInterval < Orb::Internal::Type::BaseModel
      # @!attribute amount_discount
      #   Only available if discount_type is `amount`.
      #
      #   @return [String]
      required :amount_discount, String

      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this discount interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::AmountDiscountInterval::DiscountType]
      required :discount_type, enum: -> { Orb::AmountDiscountInterval::DiscountType }

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

      # @!attribute start_date
      #   The start date of the discount interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(amount_discount:, applies_to_price_interval_ids:, discount_type:, end_date:, filters:, start_date:)
      #   @param amount_discount [String] Only available if discount_type is `amount`.
      #
      #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
      #
      #   @param discount_type [Symbol, Orb::Models::AmountDiscountInterval::DiscountType]
      #
      #   @param end_date [Time, nil] The end date of the discount interval.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices this discount interval applies to.
      #
      #   @param start_date [Time] The start date of the discount interval.

      # @see Orb::Models::AmountDiscountInterval#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        AMOUNT = :amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
