# frozen_string_literal: true

module Orb
  module Models
    class MonetaryPercentageDiscountAdjustment < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustment_type
      #
      #   @return [Symbol, Orb::Models::MonetaryPercentageDiscountAdjustment::AdjustmentType]
      required :adjustment_type, enum: -> { Orb::MonetaryPercentageDiscountAdjustment::AdjustmentType }

      # @!attribute amount
      #   The value applied by an adjustment.
      #
      #   @return [String]
      required :amount, String

      # @!attribute applies_to_price_ids
      #   @deprecated
      #
      #   The price IDs that this adjustment applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute filters
      #   The filters that determine which prices to apply this adjustment to.
      #
      #   @return [Array<Orb::Models::TransformPriceFilter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] }

      # @!attribute is_invoice_level
      #   True for adjustments that apply to an entire invocice, false for adjustments
      #   that apply to only one price.
      #
      #   @return [Boolean]
      required :is_invoice_level, Orb::Internal::Type::Boolean

      # @!attribute percentage_discount
      #   The percentage (as a value between 0 and 1) by which to discount the price
      #   intervals this adjustment applies to in a given billing period.
      #
      #   @return [Float]
      required :percentage_discount, Float

      # @!attribute reason
      #   The reason for the adjustment.
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!method initialize(id:, adjustment_type:, amount:, applies_to_price_ids:, filters:, is_invoice_level:, percentage_discount:, reason:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MonetaryPercentageDiscountAdjustment} for more details.
      #
      #   @param id [String]
      #
      #   @param adjustment_type [Symbol, Orb::Models::MonetaryPercentageDiscountAdjustment::AdjustmentType]
      #
      #   @param amount [String] The value applied by an adjustment.
      #
      #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices to apply this adjustment to.
      #
      #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
      #
      #   @param percentage_discount [Float] The percentage (as a value between 0 and 1) by which to discount the price inter
      #
      #   @param reason [String, nil] The reason for the adjustment.

      # @see Orb::Models::MonetaryPercentageDiscountAdjustment#adjustment_type
      module AdjustmentType
        extend Orb::Internal::Type::Enum

        PERCENTAGE_DISCOUNT = :percentage_discount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
