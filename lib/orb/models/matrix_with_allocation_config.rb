# frozen_string_literal: true

module Orb
  module Models
    class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
      # @!attribute allocation
      #   Allocation to be used to calculate the price
      #
      #   @return [Float]
      required :allocation, Float

      # @!attribute default_unit_amount
      #   Default per unit rate for any usage not bucketed into a specified matrix_value
      #
      #   @return [String]
      required :default_unit_amount, String

      # @!attribute dimensions
      #   One or two event property values to evaluate matrix groups by
      #
      #   @return [Array<String, nil>]
      required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

      # @!attribute matrix_values
      #   Matrix values for specified matrix grouping keys
      #
      #   @return [Array<Orb::Models::MatrixValue>]
      required :matrix_values, -> { Orb::Internal::Type::ArrayOf[Orb::MatrixValue] }

      # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
      #   @param allocation [Float] Allocation to be used to calculate the price
      #
      #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
      #
      #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
      #
      #   @param matrix_values [Array<Orb::Models::MatrixValue>] Matrix values for specified matrix grouping keys
    end
  end
end
