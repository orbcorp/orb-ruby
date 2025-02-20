# frozen_string_literal: true

module Orb
  module Models
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
