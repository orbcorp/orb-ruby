# typed: strong

module Orb
  module Models
    class SubscriptionFetchCostsParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # The currency or custom pricing unit to use.
      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_)
      end

      # Costs returned are exclusive of `timeframe_end`.
      sig { returns(T.nilable(Time)) }
      def timeframe_end
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def timeframe_end=(_)
      end

      # Costs returned are inclusive of `timeframe_start`.
      sig { returns(T.nilable(Time)) }
      def timeframe_start
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def timeframe_start=(_)
      end

      # Controls whether Orb returns cumulative costs since the start of the billing
      #   period, or incremental day-by-day costs. If your customer has minimums or
      #   discounts, it's strongly recommended that you use the default cumulative
      #   behavior.
      sig { returns(T.nilable(Symbol)) }
      def view_mode
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def view_mode=(_)
      end

      sig do
        params(
          currency: T.nilable(String),
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          view_mode: T.nilable(Symbol),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(currency: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              currency: T.nilable(String),
              timeframe_end: T.nilable(Time),
              timeframe_start: T.nilable(Time),
              view_mode: T.nilable(Symbol),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Controls whether Orb returns cumulative costs since the start of the billing
      #   period, or incremental day-by-day costs. If your customer has minimums or
      #   discounts, it's strongly recommended that you use the default cumulative
      #   behavior.
      class ViewMode < Orb::Enum
        abstract!

        PERIODIC = T.let(:periodic, T.nilable(Symbol))
        CUMULATIVE = T.let(:cumulative, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
