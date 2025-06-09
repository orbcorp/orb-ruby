# frozen_string_literal: true

module Orb
  module Models
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
      #   Some parameter documentations has been truncated, see {Orb::Models::MatrixValue}
      #   for more details.
      #
      #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
      #
      #   @param unit_amount [String] Unit price for the specified dimension_values
    end
  end
end
