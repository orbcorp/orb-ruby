# frozen_string_literal: true

module Orb
  module Models
    class ReplaceSubscriptionAdjustmentParams < Orb::BaseModel
      # @!attribute adjustment
      #   The definition of a new adjustment to create and add to the subscription.
      #
      #   @return [Orb::Models::NewAdjustmentModel::NewPercentageDiscount, Orb::Models::NewAdjustmentModel::NewUsageDiscount, Orb::Models::NewAdjustmentModel::NewAmountDiscount, Orb::Models::NewAdjustmentModel::NewMinimum, Orb::Models::NewAdjustmentModel::NewMaximum]
      required :adjustment, union: -> { Orb::Models::NewAdjustmentModel }

      # @!attribute replaces_adjustment_id
      #   The id of the adjustment on the plan to replace in the subscription.
      #
      #   @return [String]
      required :replaces_adjustment_id, String

      # @!parse
      #   # @param adjustment [Orb::Models::NewAdjustmentModel::NewPercentageDiscount, Orb::Models::NewAdjustmentModel::NewUsageDiscount, Orb::Models::NewAdjustmentModel::NewAmountDiscount, Orb::Models::NewAdjustmentModel::NewMinimum, Orb::Models::NewAdjustmentModel::NewMaximum]
      #   # @param replaces_adjustment_id [String]
      #   #
      #   def initialize(adjustment:, replaces_adjustment_id:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
