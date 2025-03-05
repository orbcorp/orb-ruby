# frozen_string_literal: true

module Orb
  module Models
    class AdjustmentIntervalModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustment
      #
      #   @return [Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment]
      required :adjustment, union: -> { Orb::Models::AdjustmentModel }

      # @!attribute applies_to_price_interval_ids
      #   The price interval IDs that this adjustment applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::ArrayOf[String]

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

      # @!parse
      #   # @param id [String]
      #   # @param adjustment [Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment]
      #   # @param applies_to_price_interval_ids [Array<String>]
      #   # @param end_date [Time, nil]
      #   # @param start_date [Time]
      #   #
      #   def initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
