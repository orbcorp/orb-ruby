# typed: strong

module Orb
  module Resources
    class Alerts
      sig do
        params(
          alert_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Alert)
      end
      def retrieve(alert_id, request_options: {})
      end

      sig do
        params(
          alert_configuration_id: String,
          thresholds: T::Array[Orb::Models::AlertUpdateParams::Threshold],
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Alert)
      end
      def update(alert_configuration_id, thresholds:, request_options: {})
      end

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          limit: Integer,
          subscription_id: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Page[Orb::Models::Alert])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        customer_id: nil,
        external_customer_id: nil,
        limit: nil,
        subscription_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          customer_id: String,
          currency: String,
          type: Symbol,
          thresholds: T.nilable(T::Array[Orb::Models::AlertCreateForCustomerParams::Threshold]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Alert)
      end
      def create_for_customer(customer_id, currency:, type:, thresholds: nil, request_options: {})
      end

      sig do
        params(
          external_customer_id: String,
          currency: String,
          type: Symbol,
          thresholds: T.nilable(T::Array[Orb::Models::AlertCreateForExternalCustomerParams::Threshold]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Alert)
      end
      def create_for_external_customer(
        external_customer_id,
        currency:,
        type:,
        thresholds: nil,
        request_options: {}
      )
      end

      sig do
        params(
          subscription_id: String,
          thresholds: T::Array[Orb::Models::AlertCreateForSubscriptionParams::Threshold],
          type: Symbol,
          metric_id: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Alert)
      end
      def create_for_subscription(subscription_id, thresholds:, type:, metric_id: nil, request_options: {})
      end

      sig do
        params(
          alert_configuration_id: String,
          subscription_id: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Alert)
      end
      def disable(alert_configuration_id, subscription_id: nil, request_options: {})
      end

      sig do
        params(
          alert_configuration_id: String,
          subscription_id: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Alert)
      end
      def enable(alert_configuration_id, subscription_id: nil, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
