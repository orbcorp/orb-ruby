# frozen_string_literal: true

module Orb
  module Models
    class AggregatedCost < Orb::Internal::Type::BaseModel
      # @!attribute per_price_costs
      #
      #   @return [Array<Orb::Models::PerPriceCost>]
      required :per_price_costs, -> { Orb::Internal::Type::ArrayOf[Orb::PerPriceCost] }

      # @!attribute subtotal
      #   Total costs for the timeframe, excluding any minimums and discounts.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute timeframe_end
      #
      #   @return [Time]
      required :timeframe_end, Time

      # @!attribute timeframe_start
      #
      #   @return [Time]
      required :timeframe_start, Time

      # @!attribute total
      #   Total costs for the timeframe, including any minimums and discounts.
      #
      #   @return [String]
      required :total, String

      # @!method initialize(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:)
      #   @param per_price_costs [Array<Orb::Models::PerPriceCost>]
      #
      #   @param subtotal [String] Total costs for the timeframe, excluding any minimums and discounts.
      #
      #   @param timeframe_end [Time]
      #
      #   @param timeframe_start [Time]
      #
      #   @param total [String] Total costs for the timeframe, including any minimums and discounts.
    end
  end
end
