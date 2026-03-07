# typed: strong

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::AlertCreateForSubscriptionParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subscription_id

      # The thresholds that define the values at which the alert will be triggered.
      sig { returns(T::Array[Orb::Threshold]) }
      attr_accessor :thresholds

      # The type of alert to create. This must be a valid alert type.
      sig { returns(Orb::AlertCreateForSubscriptionParams::Type::OrSymbol) }
      attr_accessor :type

      # The property keys to group cost alerts by. Only applicable for cost_exceeded
      # alerts.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :grouping_keys

      # The metric to track usage for.
      sig { returns(T.nilable(String)) }
      attr_accessor :metric_id

      # The pricing unit to use for grouped cost alerts. Required when grouping_keys is
      # set.
      sig { returns(T.nilable(String)) }
      attr_accessor :pricing_unit_id

      sig do
        params(
          subscription_id: String,
          thresholds: T::Array[Orb::Threshold::OrHash],
          type: Orb::AlertCreateForSubscriptionParams::Type::OrSymbol,
          grouping_keys: T.nilable(T::Array[String]),
          metric_id: T.nilable(String),
          pricing_unit_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        subscription_id:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The property keys to group cost alerts by. Only applicable for cost_exceeded
        # alerts.
        grouping_keys: nil,
        # The metric to track usage for.
        metric_id: nil,
        # The pricing unit to use for grouped cost alerts. Required when grouping_keys is
        # set.
        pricing_unit_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            thresholds: T::Array[Orb::Threshold],
            type: Orb::AlertCreateForSubscriptionParams::Type::OrSymbol,
            grouping_keys: T.nilable(T::Array[String]),
            metric_id: T.nilable(String),
            pricing_unit_id: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
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
