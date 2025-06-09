# frozen_string_literal: true

module Orb
  module Models
    class NewDimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute dimension_values
      #   The list of dimension values matching (in order) the dimensions of the price
      #   group
      #
      #   @return [Array<String>]
      required :dimension_values, Orb::Internal::Type::ArrayOf[String]

      # @!attribute dimensional_price_group_id
      #   The id of the dimensional price group to include this price in
      #
      #   @return [String, nil]
      optional :dimensional_price_group_id, String, nil?: true

      # @!attribute external_dimensional_price_group_id
      #   The external id of the dimensional price group to include this price in
      #
      #   @return [String, nil]
      optional :external_dimensional_price_group_id, String, nil?: true

      # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewDimensionalPriceConfiguration} for more details.
      #
      #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
      #
      #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
      #
      #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
    end
  end
end
