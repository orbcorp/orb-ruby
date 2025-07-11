# frozen_string_literal: true

module Orb
  module Models
    class MonetaryMinimumAdjustment < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustment_type
      #
      #   @return [Symbol, Orb::Models::MonetaryMinimumAdjustment::AdjustmentType]
      required :adjustment_type, enum: -> { Orb::MonetaryMinimumAdjustment::AdjustmentType }

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

      # @!attribute item_id
      #   The item ID that revenue from this minimum will be attributed to.
      #
      #   @return [String]
      required :item_id, String

      # @!attribute minimum_amount
      #   The minimum amount to charge in a given billing period for the prices this
      #   adjustment applies to.
      #
      #   @return [String]
      required :minimum_amount, String

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

      # @!method initialize(id:, adjustment_type:, amount:, applies_to_price_ids:, filters:, is_invoice_level:, item_id:, minimum_amount:, reason:, replaces_adjustment_id:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MonetaryMinimumAdjustment} for more details.
      #
      #   @param id [String]
      #
      #   @param adjustment_type [Symbol, Orb::Models::MonetaryMinimumAdjustment::AdjustmentType]
      #
      #   @param amount [String] The value applied by an adjustment.
      #
      #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices to apply this adjustment to.
      #
      #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
      #
      #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
      #
      #   @param minimum_amount [String] The minimum amount to charge in a given billing period for the prices this adjus
      #
      #   @param reason [String, nil] The reason for the adjustment.
      #
      #   @param replaces_adjustment_id [String, nil] The adjustment id this adjustment replaces. This adjustment will take the place

      # @see Orb::Models::MonetaryMinimumAdjustment#adjustment_type
      module AdjustmentType
        extend Orb::Internal::Type::Enum

        MINIMUM = :minimum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
