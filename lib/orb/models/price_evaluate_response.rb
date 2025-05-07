# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate
    class PriceEvaluateResponse < Orb::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::EvaluatePriceGroup>]
      required :data, -> { Orb::Internal::Type::ArrayOf[Orb::EvaluatePriceGroup] }

      # @!method initialize(data:)
      #   @param data [Array<Orb::EvaluatePriceGroup>]
    end
  end
end
