# frozen_string_literal: true

module Orb
  module Models
    class UnitConfig < Orb::Internal::Type::BaseModel
      # @!attribute unit_amount
      #   Rate per unit of usage
      #
      #   @return [String]
      required :unit_amount, String

      # @!attribute prorated
      #   If true, subtotals from this price are prorated based on the service period
      #
      #   @return [Boolean, nil]
      optional :prorated, Orb::Internal::Type::Boolean

      # @!attribute scaling_factor
      #   @deprecated
      #
      #   Optional multiplier applied to rated quantity before unit_amount.
      #
      #   @return [Float, nil]
      optional :scaling_factor, Float, nil?: true

      # @!method initialize(unit_amount:, prorated: nil, scaling_factor: nil)
      #   Configuration for unit pricing
      #
      #   @param unit_amount [String] Rate per unit of usage
      #
      #   @param prorated [Boolean] If true, subtotals from this price are prorated based on the service period
      #
      #   @param scaling_factor [Float, nil] Optional multiplier applied to rated quantity before unit_amount.
    end
  end
end
