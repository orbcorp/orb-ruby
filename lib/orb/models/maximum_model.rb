# frozen_string_literal: true

module Orb
  module Models
    class MaximumModel < Orb::BaseModel
      # @!attribute applies_to_price_ids
      #   List of price_ids that this maximum amount applies to. For plan/plan phase
      #     maximums, this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute maximum_amount
      #   Maximum amount applied
      #
      #   @return [String]
      required :maximum_amount, String

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param maximum_amount [String]
      #   #
      #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
