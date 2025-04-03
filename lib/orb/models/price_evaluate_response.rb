# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate
    class PriceEvaluateResponse < Orb::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::EvaluatePriceGroup>]
      required :data, -> { Orb::Internal::Type::ArrayOf[Orb::Models::EvaluatePriceGroup] }

      # @!parse
      #   # @param data [Array<Orb::Models::EvaluatePriceGroup>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
