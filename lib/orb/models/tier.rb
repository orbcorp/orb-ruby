# frozen_string_literal: true

module Orb
  module Models
    class Tier < Orb::Internal::Type::BaseModel
      # @!attribute first_unit
      #   Exclusive tier starting value
      #
      #   @return [Float]
      required :first_unit, Float

      # @!attribute unit_amount
      #   Amount per unit
      #
      #   @return [String]
      required :unit_amount, String

      # @!attribute last_unit
      #   Inclusive tier ending value. If null, this is treated as the last tier
      #
      #   @return [Float, nil]
      optional :last_unit, Float, nil?: true

      # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
      #   @param first_unit [Float] Exclusive tier starting value
      #
      #   @param unit_amount [String] Amount per unit
      #
      #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
    end
  end
end
