# frozen_string_literal: true

module Orb
  module Models
    class Threshold < Orb::Internal::Type::BaseModel
      # @!attribute value
      #   The value at which an alert will fire. For credit balance alerts, the alert will
      #   fire at or below this value. For usage and cost alerts, the alert will fire at
      #   or above this value.
      #
      #   @return [Float]
      required :value, Float

      # @!method initialize(value:)
      #   Some parameter documentations has been truncated, see {Orb::Models::Threshold}
      #   for more details.
      #
      #   Thresholds are used to define the conditions under which an alert will be
      #   triggered.
      #
      #   @param value [Float] The value at which an alert will fire. For credit balance alerts, the alert will
    end
  end
end
