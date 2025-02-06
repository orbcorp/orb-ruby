# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold]) }
      attr_accessor :thresholds

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_accessor :metric_id

      sig do
        params(
          thresholds: T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold],
          type: Symbol,
          metric_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(thresholds:, type:, metric_id: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            thresholds: T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold],
            type: Symbol,
            metric_id: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Threshold < Orb::BaseModel
        sig { returns(Float) }
        attr_accessor :value

        sig { params(value: Float).void }
        def initialize(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
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
