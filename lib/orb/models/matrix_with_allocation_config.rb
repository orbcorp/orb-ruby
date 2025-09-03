# frozen_string_literal: true

module Orb
  module Models
    class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
      # @!attribute allocation
      #   Usage allocation
      #
      #   @return [String]
      required :allocation, String

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
      #   Matrix values configuration
      #
      #   @return [Array<Orb::Models::MatrixWithAllocationConfig::MatrixValue>]
      required :matrix_values, -> { Orb::Internal::Type::ArrayOf[Orb::MatrixWithAllocationConfig::MatrixValue] }

      # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
      #   Configuration for matrix pricing with usage allocation
      #
      #   @param allocation [String] Usage allocation
      #
      #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
      #
      #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
      #
      #   @param matrix_values [Array<Orb::Models::MatrixWithAllocationConfig::MatrixValue>] Matrix values configuration

      class MatrixValue < Orb::Internal::Type::BaseModel
        # @!attribute dimension_values
        #   One or two matrix keys to filter usage to this Matrix value by. For example,
        #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
        #   instance tier.
        #
        #   @return [Array<String, nil>]
        required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

        # @!attribute unit_amount
        #   Unit price for the specified dimension_values
        #
        #   @return [String]
        required :unit_amount, String

        # @!method initialize(dimension_values:, unit_amount:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::MatrixWithAllocationConfig::MatrixValue} for more details.
        #
        #   Configuration for a single matrix value
        #
        #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
        #
        #   @param unit_amount [String] Unit price for the specified dimension_values
      end
    end
  end
end
