# frozen_string_literal: true

module Orb
  module Models
    class MatrixValue < Orb::Internal::Type::BaseModel
      # @!attribute dimension_values
      #   One or two matrix keys to filter usage to this Matrix value by
      #
      #   @return [Array<String, nil>]
      required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

      # @!attribute unit_amount
      #   Unit price for the specified dimension_values
      #
      #   @return [String]
      required :unit_amount, String

      # @!attribute scaling_factor
      #   @deprecated
      #
      #   Optional multiplier applied to rated quantity before unit_amount.
      #
      #   @return [Float, nil]
      optional :scaling_factor, Float, nil?: true

      # @!method initialize(dimension_values:, unit_amount:, scaling_factor: nil)
      #   Configuration for a single matrix value
      #
      #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by
      #
      #   @param unit_amount [String] Unit price for the specified dimension_values
      #
      #   @param scaling_factor [Float, nil] Optional multiplier applied to rated quantity before unit_amount.
    end
  end
end
