# frozen_string_literal: true

module Orb
  module Models
    class EvaluatePriceGroup < Orb::BaseModel
      # @!attribute amount
      #   The price's output for the group
      #
      #   @return [String]
      required :amount, String

      # @!attribute grouping_values
      #   The values for the group in the order specified by `grouping_keys`
      #
      #   @return [Array<String, Float, Boolean>]
      required :grouping_values, -> { Orb::ArrayOf[union: Orb::Models::EvaluatePriceGroup::GroupingValue] }

      # @!attribute quantity
      #   The price's usage quantity for the group
      #
      #   @return [Float]
      required :quantity, Float

      # @!parse
      #   # @param amount [String]
      #   # @param grouping_values [Array<String, Float, Boolean>]
      #   # @param quantity [Float]
      #   #
      #   def initialize(amount:, grouping_values:, quantity:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      class GroupingValue < Orb::Union
        variant String

        variant Float

        variant Orb::BooleanModel

        # @!parse
        #   class << self
        #     # @return [Array(String, Float, Boolean)]
        #     def variants; end
        #   end
      end
    end
  end
end
