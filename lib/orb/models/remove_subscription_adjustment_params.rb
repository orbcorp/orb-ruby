# frozen_string_literal: true

module Orb
  module Models
    class RemoveSubscriptionAdjustmentParams < Orb::BaseModel
      # @!attribute adjustment_id
      #   The id of the adjustment to remove on the subscription.
      #
      #   @return [String]
      required :adjustment_id, String

      # @!parse
      #   # @param adjustment_id [String]
      #   #
      #   def initialize(adjustment_id:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
