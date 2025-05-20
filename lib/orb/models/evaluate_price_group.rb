# frozen_string_literal: true

module Orb
  module Models
    class EvaluatePriceGroup < Orb::Internal::Type::BaseModel
      # @!attribute amount
      #   The price's output for the group
      #
      #   @return [String]
      required :amount, String

      # @!attribute grouping_values
      #   The values for the group in the order specified by `grouping_keys`
      #
      #   @return [Array<String, Float, Boolean>]
      required :grouping_values,
               -> { Orb::Internal::Type::ArrayOf[union: Orb::EvaluatePriceGroup::GroupingValue] }

      # @!attribute quantity
      #   The price's usage quantity for the group
      #
      #   @return [Float]
      required :quantity, Float

      # @!method initialize(amount:, grouping_values:, quantity:)
      #   @param amount [String] The price's output for the group
      #
      #   @param grouping_values [Array<String, Float, Boolean>] The values for the group in the order specified by `grouping_keys`
      #
      #   @param quantity [Float] The price's usage quantity for the group

      module GroupingValue
        extend Orb::Internal::Type::Union

        variant String

        variant Float

        variant Orb::Internal::Type::Boolean

        # @!method self.variants
        #   @return [Array(String, Float, Boolean)]
      end
    end
  end
end
