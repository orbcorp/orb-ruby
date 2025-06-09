# frozen_string_literal: true

module Orb
  module Models
    class TierConfig < Orb::Internal::Type::BaseModel
      # @!attribute first_unit
      #
      #   @return [Float]
      required :first_unit, Float

      # @!attribute last_unit
      #
      #   @return [Float, nil]
      required :last_unit, Float, nil?: true

      # @!attribute unit_amount
      #
      #   @return [String]
      required :unit_amount, String

      # @!method initialize(first_unit:, last_unit:, unit_amount:)
      #   @param first_unit [Float]
      #   @param last_unit [Float, nil]
      #   @param unit_amount [String]
    end
  end
end
