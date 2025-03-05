# frozen_string_literal: true

module Orb
  module Models
    class DimensionalPriceConfigurationModel < Orb::BaseModel
      # @!attribute dimension_values
      #
      #   @return [Array<String>]
      required :dimension_values, Orb::ArrayOf[String]

      # @!attribute dimensional_price_group_id
      #
      #   @return [String]
      required :dimensional_price_group_id, String

      # @!parse
      #   # @param dimension_values [Array<String>]
      #   # @param dimensional_price_group_id [String]
      #   #
      #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
