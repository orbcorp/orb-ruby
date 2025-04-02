# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold]) }
      attr_accessor :thresholds

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Orb::Models::AlertCreateForSubscriptionParams::Type::OrSymbol) }
      attr_accessor :type

      # The metric to track usage for.
      sig { returns(T.nilable(String)) }
      attr_accessor :metric_id

      sig do
        params(
          thresholds: T::Array[T.any(Orb::Models::AlertCreateForSubscriptionParams::Threshold, Orb::Util::AnyHash)],
          type: Orb::Models::AlertCreateForSubscriptionParams::Type::OrSymbol,
          metric_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
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
              type: Orb::Models::AlertCreateForSubscriptionParams::Type::OrSymbol,
              metric_id: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Threshold < Orb::BaseModel
        # The value at which an alert will fire. For credit balance alerts, the alert will
        #   fire at or below this value. For usage and cost alerts, the alert will fire at
        #   or above this value.
        sig { returns(Float) }
        attr_accessor :value

        # Thresholds are used to define the conditions under which an alert will be
        #   triggered.
        sig { params(value: Float).returns(T.attached_class) }
        def self.new(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
      end

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Orb::Models::AlertCreateForSubscriptionParams::Type::TaggedSymbol) }

        USAGE_EXCEEDED =
          T.let(:usage_exceeded, Orb::Models::AlertCreateForSubscriptionParams::Type::TaggedSymbol)
        COST_EXCEEDED = T.let(:cost_exceeded, Orb::Models::AlertCreateForSubscriptionParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::AlertCreateForSubscriptionParams::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
