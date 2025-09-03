# frozen_string_literal: true

module Orb
  module Models
    class UnitConfig < Orb::Internal::Type::BaseModel
      # @!attribute unit_amount
      #   Rate per unit of usage
      #
      #   @return [String]
      required :unit_amount, String

      # @!attribute scaling_factor
      #   Multiplier to scale rated quantity by
      #
      #   @return [Float, nil]
      optional :scaling_factor, Float, nil?: true

      # @!method initialize(unit_amount:, scaling_factor: nil)
      #   Configuration for unit pricing
      #
      #   @param unit_amount [String] Rate per unit of usage
      #
      #   @param scaling_factor [Float, nil] Multiplier to scale rated quantity by
    end
  end
end
