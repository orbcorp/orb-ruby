# frozen_string_literal: true

module Orb
  module Models
    class UsageModel < Orb::BaseModel
      # @!attribute quantity
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute timeframe_end
      #
      #   @return [Time]
      required :timeframe_end, Time

      # @!attribute timeframe_start
      #
      #   @return [Time]
      required :timeframe_start, Time

      # @!parse
      #   # @param quantity [Float]
      #   # @param timeframe_end [Time]
      #   # @param timeframe_start [Time]
      #   #
      #   def initialize(quantity:, timeframe_end:, timeframe_start:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
