# frozen_string_literal: true

module Orb
  module Models
    class MinimumModel < Orb::BaseModel
      # @!attribute applies_to_price_ids
      #   List of price_ids that this minimum amount applies to. For plan/plan phase
      #     minimums, this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute minimum_amount
      #   Minimum amount applied
      #
      #   @return [String]
      required :minimum_amount, String

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param minimum_amount [String]
      #   #
      #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
