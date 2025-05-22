# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Costs#list
      class CostListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
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
        #   period, or incremental day-by-day costs. If your customer has minimums or
        #   discounts, it's strongly recommended that you use the default cumulative
        #   behavior.
        #
        #   @return [Symbol, Orb::Models::Customers::CostListParams::ViewMode, nil]
        optional :view_mode, enum: -> { Orb::Customers::CostListParams::ViewMode }, nil?: true

        # @!method initialize(currency: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::CostListParams} for more details.
        #
        #   @param currency [String, nil] The currency or custom pricing unit to use.
        #
        #   @param timeframe_end [Time, nil] Costs returned are exclusive of `timeframe_end`.
        #
        #   @param timeframe_start [Time, nil] Costs returned are inclusive of `timeframe_start`.
        #
        #   @param view_mode [Symbol, Orb::Models::Customers::CostListParams::ViewMode, nil] Controls whether Orb returns cumulative costs since the start of the billing per
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        # Controls whether Orb returns cumulative costs since the start of the billing
        # period, or incremental day-by-day costs. If your customer has minimums or
        # discounts, it's strongly recommended that you use the default cumulative
        # behavior.
        module ViewMode
          extend Orb::Internal::Type::Enum

          PERIODIC = :periodic
          CUMULATIVE = :cumulative

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
