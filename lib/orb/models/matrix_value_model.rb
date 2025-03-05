# frozen_string_literal: true

module Orb
  module Models
    class MatrixValueModel < Orb::BaseModel
      # @!attribute dimension_values
      #   One or two matrix keys to filter usage to this Matrix value by. For example,
      #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
      #     instance tier.
      #
      #   @return [Array<String, nil>]
      required :dimension_values, Orb::ArrayOf[String, nil?: true]

      # @!attribute unit_amount
      #   Unit price for the specified dimension_values
      #
      #   @return [String]
      required :unit_amount, String

      # @!parse
      #   # @param dimension_values [Array<String, nil>]
      #   # @param unit_amount [String]
      #   #
      #   def initialize(dimension_values:, unit_amount:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
