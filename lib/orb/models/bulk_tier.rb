# frozen_string_literal: true

module Orb
  module Models
    class BulkTier < Orb::Internal::Type::BaseModel
      # @!attribute unit_amount
      #   Amount per unit
      #
      #   @return [String]
      required :unit_amount, String

      # @!attribute maximum_units
      #   Upper bound for this tier
      #
      #   @return [Float, nil]
      optional :maximum_units, Float, nil?: true

      # @!method initialize(unit_amount:, maximum_units: nil)
      #   @param unit_amount [String] Amount per unit
      #
      #   @param maximum_units [Float, nil] Upper bound for this tier
    end
  end
end
