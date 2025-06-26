# frozen_string_literal: true

module Orb
  module Models
    class MonetaryUsageDiscountAdjustment < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustment_type
      #
      #   @return [Symbol, Orb::Models::MonetaryUsageDiscountAdjustment::AdjustmentType]
      required :adjustment_type, enum: -> { Orb::MonetaryUsageDiscountAdjustment::AdjustmentType }

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

      # @!attribute reason
      #   The reason for the adjustment.
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!attribute replaces_adjustment_id
      #   The adjustment id this adjustment replaces. This adjustment will take the place
      #   of the replaced adjustment in plan version migrations.
      #
      #   @return [String, nil]
      required :replaces_adjustment_id, String, nil?: true

      # @!attribute usage_discount
      #   The number of usage units by which to discount the price this adjustment applies
      #   to in a given billing period.
      #
      #   @return [Float]
      required :usage_discount, Float

      # @!method initialize(id:, adjustment_type:, amount:, applies_to_price_ids:, filters:, is_invoice_level:, reason:, replaces_adjustment_id:, usage_discount:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MonetaryUsageDiscountAdjustment} for more details.
      #
      #   @param id [String]
      #
      #   @param adjustment_type [Symbol, Orb::Models::MonetaryUsageDiscountAdjustment::AdjustmentType]
      #
      #   @param amount [String] The value applied by an adjustment.
      #
      #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices to apply this adjustment to.
      #
      #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
      #
      #   @param reason [String, nil] The reason for the adjustment.
      #
      #   @param replaces_adjustment_id [String, nil] The adjustment id this adjustment replaces. This adjustment will take the place
      #
      #   @param usage_discount [Float] The number of usage units by which to discount the price this adjustment applies

      # @see Orb::Models::MonetaryUsageDiscountAdjustment#adjustment_type
      module AdjustmentType
        extend Orb::Internal::Type::Enum

        USAGE_DISCOUNT = :usage_discount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
