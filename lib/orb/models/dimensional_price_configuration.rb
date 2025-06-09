# frozen_string_literal: true

module Orb
  module Models
    class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute dimension_values
      #
      #   @return [Array<String>]
      required :dimension_values, Orb::Internal::Type::ArrayOf[String]

      # @!attribute dimensional_price_group_id
      #
      #   @return [String]
      required :dimensional_price_group_id, String

      # @!method initialize(dimension_values:, dimensional_price_group_id:)
      #   @param dimension_values [Array<String>]
      #   @param dimensional_price_group_id [String]
    end
  end
end
