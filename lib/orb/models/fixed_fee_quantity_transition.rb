# frozen_string_literal: true

module Orb
  module Models
    class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
      # @!attribute effective_date
      #
      #   @return [Time]
      required :effective_date, Time

      # @!attribute price_id
      #
      #   @return [String]
      required :price_id, String

      # @!attribute quantity
      #
      #   @return [Float]
      required :quantity, Float

      # @!method initialize(effective_date:, price_id:, quantity:)
      #   @param effective_date [Time]
      #   @param price_id [String]
      #   @param quantity [Float]
    end
  end
end
