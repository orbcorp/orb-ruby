# frozen_string_literal: true

module Orb
  module Models
    class AddSubscriptionAdjustmentParams < Orb::BaseModel
      # @!attribute adjustment
      #   The definition of a new adjustment to create and add to the subscription.
      #
      #   @return [Orb::Models::NewAdjustmentModel::NewPercentageDiscount, Orb::Models::NewAdjustmentModel::NewUsageDiscount, Orb::Models::NewAdjustmentModel::NewAmountDiscount, Orb::Models::NewAdjustmentModel::NewMinimum, Orb::Models::NewAdjustmentModel::NewMaximum]
      required :adjustment, union: -> { Orb::Models::NewAdjustmentModel }

      # @!attribute end_date
      #   The end date of the adjustment interval. This is the date that the adjustment
      #     will stop affecting prices on the subscription.
      #
      #   @return [Time, nil]
      optional :end_date, Time, nil?: true

      # @!attribute plan_phase_order
      #   The phase to add this adjustment to.
      #
      #   @return [Integer, nil]
      optional :plan_phase_order, Integer, nil?: true

      # @!attribute start_date
      #   The start date of the adjustment interval. This is the date that the adjustment
      #     will start affecting prices on the subscription. If null, the adjustment will
      #     start when the phase or subscription starts.
      #
      #   @return [Time, nil]
      optional :start_date, Time, nil?: true

      # @!parse
      #   # @param adjustment [Orb::Models::NewAdjustmentModel::NewPercentageDiscount, Orb::Models::NewAdjustmentModel::NewUsageDiscount, Orb::Models::NewAdjustmentModel::NewAmountDiscount, Orb::Models::NewAdjustmentModel::NewMinimum, Orb::Models::NewAdjustmentModel::NewMaximum]
      #   # @param end_date [Time, nil]
      #   # @param plan_phase_order [Integer, nil]
      #   # @param start_date [Time, nil]
      #   #
      #   def initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
