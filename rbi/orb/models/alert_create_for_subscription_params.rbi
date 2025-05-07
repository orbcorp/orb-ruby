# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # The thresholds that define the values at which the alert will be triggered.
      sig do
        returns(T::Array[Orb::AlertCreateForSubscriptionParams::Threshold])
      end
      attr_accessor :thresholds

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Orb::AlertCreateForSubscriptionParams::Type::OrSymbol) }
      attr_accessor :type

      # The metric to track usage for.
      sig { returns(T.nilable(String)) }
      attr_accessor :metric_id

      sig do
        params(
          thresholds:
            T::Array[Orb::AlertCreateForSubscriptionParams::Threshold::OrHash],
          type: Orb::AlertCreateForSubscriptionParams::Type::OrSymbol,
          metric_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The metric to track usage for.
        metric_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            thresholds:
              T::Array[Orb::AlertCreateForSubscriptionParams::Threshold],
            type: Orb::AlertCreateForSubscriptionParams::Type::OrSymbol,
            metric_id: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Threshold < Orb::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

        # The value at which an alert will fire. For credit balance alerts, the alert will
        # fire at or below this value. For usage and cost alerts, the alert will fire at
        # or above this value.
        sig { returns(Float) }
        attr_accessor :value

        # Thresholds are used to define the conditions under which an alert will be
        # triggered.
        sig { params(value: Float).returns(T.attached_class) }
        def self.new(
          # The value at which an alert will fire. For credit balance alerts, the alert will
          # fire at or below this value. For usage and cost alerts, the alert will fire at
          # or above this value.
          value:
        )
        end

        sig { override.returns({ value: Float }) }
        def to_hash
        end
      end

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::AlertCreateForSubscriptionParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE_EXCEEDED =
          T.let(
            :usage_exceeded,
            Orb::AlertCreateForSubscriptionParams::Type::TaggedSymbol
          )
        COST_EXCEEDED =
          T.let(
            :cost_exceeded,
            Orb::AlertCreateForSubscriptionParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::AlertCreateForSubscriptionParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
