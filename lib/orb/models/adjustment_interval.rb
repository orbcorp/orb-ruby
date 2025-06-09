# frozen_string_literal: true

module Orb
  module Models
    class AdjustmentInterval < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustment
      #
      #   @return [Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment]
      required :adjustment, union: -> { Orb::AdjustmentInterval::Adjustment }

      # @!attribute applies_to_price_interval_ids
      #   The price interval IDs that this adjustment applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute end_date
      #   The end date of the adjustment interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute start_date
      #   The start date of the adjustment interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:)
      #   @param id [String]
      #
      #   @param adjustment [Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment]
      #
      #   @param applies_to_price_interval_ids [Array<String>] The price interval IDs that this adjustment applies to.
      #
      #   @param end_date [Time, nil] The end date of the adjustment interval.
      #
      #   @param start_date [Time] The start date of the adjustment interval.

      # @see Orb::Models::AdjustmentInterval#adjustment
      module Adjustment
        extend Orb::Internal::Type::Union

        discriminator :adjustment_type

        variant :usage_discount, -> { Orb::PlanPhaseUsageDiscountAdjustment }

        variant :amount_discount, -> { Orb::PlanPhaseAmountDiscountAdjustment }

        variant :percentage_discount, -> { Orb::PlanPhasePercentageDiscountAdjustment }

        variant :minimum, -> { Orb::PlanPhaseMinimumAdjustment }

        variant :maximum, -> { Orb::PlanPhaseMaximumAdjustment }

        # @!method self.variants
        #   @return [Array(Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment)]
      end
    end
  end
end
