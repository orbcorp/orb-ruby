# typed: strong

module Orb
  module Models
    class AggregatedCost < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::AggregatedCost, Orb::Internal::AnyHash) }

      sig { returns(T::Array[Orb::PerPriceCost]) }
      attr_accessor :per_price_costs

      # Total costs for the timeframe, excluding any minimums and discounts.
      sig { returns(String) }
      attr_accessor :subtotal

      sig { returns(Time) }
      attr_accessor :timeframe_end

      sig { returns(Time) }
      attr_accessor :timeframe_start

      # Total costs for the timeframe, including any minimums and discounts.
      sig { returns(String) }
      attr_accessor :total

      sig do
        params(
          per_price_costs: T::Array[Orb::PerPriceCost::OrHash],
          subtotal: String,
          timeframe_end: Time,
          timeframe_start: Time,
          total: String
        ).returns(T.attached_class)
      end
      def self.new(
        per_price_costs:,
        # Total costs for the timeframe, excluding any minimums and discounts.
        subtotal:,
        timeframe_end:,
        timeframe_start:,
        # Total costs for the timeframe, including any minimums and discounts.
        total:
      )
      end

      sig do
        override.returns(
          {
            per_price_costs: T::Array[Orb::PerPriceCost],
            subtotal: String,
            timeframe_end: Time,
            timeframe_start: Time,
            total: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
