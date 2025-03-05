# frozen_string_literal: true

module Orb
  module Models
    class PriceIntervalFixedFeeQuantityTransitionModel < Orb::BaseModel
      # @!attribute effective_date
      #   The date that the fixed fee quantity transition should take effect.
      #
      #   @return [Time]
      required :effective_date, Time

      # @!attribute quantity
      #   The quantity of the fixed fee quantity transition.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!parse
      #   # @param effective_date [Time]
      #   # @param quantity [Integer]
      #   #
      #   def initialize(effective_date:, quantity:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
