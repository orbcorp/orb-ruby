# typed: strong

module Orb
  module Models
    class UsageModel < Orb::BaseModel
      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      sig { returns(Time) }
      def timeframe_end
      end

      sig { params(_: Time).returns(Time) }
      def timeframe_end=(_)
      end

      sig { returns(Time) }
      def timeframe_start
      end

      sig { params(_: Time).returns(Time) }
      def timeframe_start=(_)
      end

      sig { params(quantity: Float, timeframe_end: Time, timeframe_start: Time).void }
      def initialize(quantity:, timeframe_end:, timeframe_start:)
      end

      sig { override.returns({quantity: Float, timeframe_end: Time, timeframe_start: Time}) }
      def to_hash
      end
    end
  end
end
