# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_costs
    class SubscriptionFetchCostsParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute currency
      #   The currency or custom pricing unit to use.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute timeframe_end
      #   Costs returned are exclusive of `timeframe_end`.
      #
      #   @return [Time, nil]
      optional :timeframe_end, Time, nil?: true

      # @!attribute timeframe_start
      #   Costs returned are inclusive of `timeframe_start`.
      #
      #   @return [Time, nil]
      optional :timeframe_start, Time, nil?: true

      # @!attribute view_mode
      #   Controls whether Orb returns cumulative costs since the start of the billing
      #     period, or incremental day-by-day costs. If your customer has minimums or
      #     discounts, it's strongly recommended that you use the default cumulative
      #     behavior.
      #
      #   @return [Symbol, Orb::Models::SubscriptionFetchCostsParams::ViewMode, nil]
      optional :view_mode, enum: -> { Orb::Models::SubscriptionFetchCostsParams::ViewMode }, nil?: true

      # @!parse
      #   # @param currency [String, nil]
      #   # @param timeframe_end [Time, nil]
      #   # @param timeframe_start [Time, nil]
      #   # @param view_mode [Symbol, Orb::Models::SubscriptionFetchCostsParams::ViewMode, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(currency: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      # Controls whether Orb returns cumulative costs since the start of the billing
      #   period, or incremental day-by-day costs. If your customer has minimums or
      #   discounts, it's strongly recommended that you use the default cumulative
      #   behavior.
      module ViewMode
        extend Orb::Internal::Type::Enum

        PERIODIC = :periodic
        CUMULATIVE = :cumulative

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
