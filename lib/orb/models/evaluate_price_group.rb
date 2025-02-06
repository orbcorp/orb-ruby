# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # evaluate_price_group => {
    #   amount: String,
    #   grouping_values: -> { Orb::ArrayOf[union: Orb::Models::EvaluatePriceGroup::GroupingValue] === _1 },
    #   quantity: Float
    # }
    # ```
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
      #
      # @example
      # ```ruby
      # case grouping_value
      # in String
      #   # ...
      # in Float
      #   # ...
      # in Orb::BooleanModel
      #   # ...
      # end
      # ```
      class GroupingValue < Orb::Union
        variant String

        variant Float

        variant Orb::BooleanModel
      end
    end
  end
end
