# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::ThresholdModel]) }
      def thresholds
      end

      sig { params(_: T::Array[Orb::Models::ThresholdModel]).returns(T::Array[Orb::Models::ThresholdModel]) }
      def thresholds=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(String)) }
      def metric_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def metric_id=(_)
      end

      sig do
        params(
          thresholds: T::Array[Orb::Models::ThresholdModel],
          type: Symbol,
          metric_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(thresholds:, type:, metric_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              thresholds: T::Array[Orb::Models::ThresholdModel],
              type: Symbol,
              metric_id: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Type < Orb::Enum
        abstract!

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
