# frozen_string_literal: true

module Orb
  module Models
    class MatrixWithAllocationConfigModel < Orb::BaseModel
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
      required :dimensions, Orb::ArrayOf[String, nil?: true]

      # @!attribute matrix_values
      #   Matrix values for specified matrix grouping keys
      #
      #   @return [Array<Orb::Models::MatrixValueModel>]
      required :matrix_values, -> { Orb::ArrayOf[Orb::Models::MatrixValueModel] }

      # @!parse
      #   # @param allocation [Float]
      #   # @param default_unit_amount [String]
      #   # @param dimensions [Array<String, nil>]
      #   # @param matrix_values [Array<Orb::Models::MatrixValueModel>]
      #   #
      #   def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
