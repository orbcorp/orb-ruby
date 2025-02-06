# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            thresholds: T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold],
            type: Symbol,
            metric_id: T.nilable(String)
          },
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(thresholds:, type:, metric_id: nil, request_options: {}); end

      sig { returns(Orb::Models::AlertCreateForSubscriptionParams::Shape) }
      def to_h; end

      class Threshold < Orb::BaseModel
        Shape = T.type_alias { {value: Float} }

        sig { returns(Float) }
        attr_accessor :value

        sig { params(value: Float).void }
        def initialize(value:); end

        sig { returns(Orb::Models::AlertCreateForSubscriptionParams::Threshold::Shape) }
        def to_h; end
      end

      class Type < Orb::Enum
        abstract!

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
