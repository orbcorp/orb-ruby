# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # price_evaluate_response => {
    #   data: -> { Orb::ArrayOf[Orb::Models::EvaluatePriceGroup] === _1 }
    # }
    # ```
    class PriceEvaluateResponse < Orb::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::EvaluatePriceGroup>]
      required :data, -> { Orb::ArrayOf[Orb::Models::EvaluatePriceGroup] }

      # @!parse
      #   # @param data [Array<Orb::Models::EvaluatePriceGroup>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
