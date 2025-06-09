# frozen_string_literal: true

module Orb
  module Models
    class PlanPhaseMaximumAdjustment < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustment_type
      #
      #   @return [Symbol, Orb::Models::PlanPhaseMaximumAdjustment::AdjustmentType]
      required :adjustment_type, enum: -> { Orb::PlanPhaseMaximumAdjustment::AdjustmentType }

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

      # @!attribute maximum_amount
      #   The maximum amount to charge in a given billing period for the prices this
      #   adjustment applies to.
      #
      #   @return [String]
      required :maximum_amount, String

      # @!attribute plan_phase_order
      #   The plan phase in which this adjustment is active.
      #
      #   @return [Integer, nil]
      required :plan_phase_order, Integer, nil?: true

      # @!attribute reason
      #   The reason for the adjustment.
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!method initialize(id:, adjustment_type:, applies_to_price_ids:, filters:, is_invoice_level:, maximum_amount:, plan_phase_order:, reason:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PlanPhaseMaximumAdjustment} for more details.
      #
      #   @param id [String]
      #
      #   @param adjustment_type [Symbol, Orb::Models::PlanPhaseMaximumAdjustment::AdjustmentType]
      #
      #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices to apply this adjustment to.
      #
      #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
      #
      #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the prices this adjus
      #
      #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
      #
      #   @param reason [String, nil] The reason for the adjustment.

      # @see Orb::Models::PlanPhaseMaximumAdjustment#adjustment_type
      module AdjustmentType
        extend Orb::Internal::Type::Enum

        MAXIMUM = :maximum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
