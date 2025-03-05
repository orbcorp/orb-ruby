# frozen_string_literal: true

module Orb
  module Models
    class ThresholdModel < Orb::BaseModel
      # @!attribute value
      #   The value at which an alert will fire. For credit balance alerts, the alert will
      #     fire at or below this value. For usage and cost alerts, the alert will fire at
      #     or above this value.
      #
      #   @return [Float]
      required :value, Float

      # @!parse
      #   # Thresholds are used to define the conditions under which an alert will be
      #   #   triggered.
      #   #
      #   # @param value [Float]
      #   #
      #   def initialize(value:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
