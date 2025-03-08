# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold]) }
      def thresholds
      end

      sig do
        params(_: T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold])
          .returns(T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold])
      end
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
          thresholds: T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold],
          type: Symbol,
          metric_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(thresholds:, type:, metric_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        sig { params(value: Float).returns(T.attached_class) }
        def self.new(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
      end

      class Type < Orb::Enum
        abstract!

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
