# typed: strong

module Orb
  module Resources
    # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
    # usage, or credit balance and trigger webhooks when a threshold is exceeded.
    #
    # Alerts created through the API can be scoped to either customers or
    # subscriptions.
    class Alerts
      # This endpoint retrieves an alert by its ID.
      sig do
        params(
          alert_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Alert)
      end
      def retrieve(alert_id, request_options: {})
      end

      # This endpoint updates the thresholds of an alert.
      sig do
        params(
          alert_configuration_id: String,
          thresholds: T::Array[Orb::Threshold::OrHash],
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Alert)
      end
      def update(
        alert_configuration_id,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        request_options: {}
      )
      end

      # This endpoint returns a list of alerts within Orb.
      #
      # The request must specify one of `customer_id`, `external_customer_id`, or
      # `subscription_id`.
      #
      # If querying by subscription_id, the endpoint will return the subscription level
      # alerts as well as the plan level alerts associated with the subscription.
      #
      # The list of alerts is ordered starting from the most recently created alert.
      # This endpoint follows Orb's
      # [standardized pagination format](/api-reference/pagination).
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
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Alert])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # Fetch alerts scoped to this customer_id
        customer_id: nil,
        # Fetch alerts scoped to this external_customer_id
        external_customer_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        # Fetch alerts scoped to this subscription_id
        subscription_id: nil,
        request_options: {}
      )
      end

      # This endpoint creates a new alert to monitor a customer's credit balance. There
      # are three types of alerts that can be scoped to customers:
      # `credit_balance_depleted`, `credit_balance_dropped`, and
      # `credit_balance_recovered`. Customers can have a maximum of one of each type of
      # alert per [credit balance currency](/product-catalog/prepurchase).
      # `credit_balance_dropped` alerts require a list of thresholds to be provided
      # while `credit_balance_depleted` and `credit_balance_recovered` alerts do not
      # require thresholds.
      sig do
        params(
          customer_id: String,
          currency: String,
          type: Orb::AlertCreateForCustomerParams::Type::OrSymbol,
          thresholds: T.nilable(T::Array[Orb::Threshold::OrHash]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Alert)
      end
      def create_for_customer(
        customer_id,
        # The case sensitive currency or custom pricing unit to use for this alert.
        currency:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds: nil,
        request_options: {}
      )
      end

      # This endpoint creates a new alert to monitor a customer's credit balance. There
      # are three types of alerts that can be scoped to customers:
      # `credit_balance_depleted`, `credit_balance_dropped`, and
      # `credit_balance_recovered`. Customers can have a maximum of one of each type of
      # alert per [credit balance currency](/product-catalog/prepurchase).
      # `credit_balance_dropped` alerts require a list of thresholds to be provided
      # while `credit_balance_depleted` and `credit_balance_recovered` alerts do not
      # require thresholds.
      sig do
        params(
          external_customer_id: String,
          currency: String,
          type: Orb::AlertCreateForExternalCustomerParams::Type::OrSymbol,
          thresholds: T.nilable(T::Array[Orb::Threshold::OrHash]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Alert)
      end
      def create_for_external_customer(
        external_customer_id,
        # The case sensitive currency or custom pricing unit to use for this alert.
        currency:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds: nil,
        request_options: {}
      )
      end

      # This endpoint is used to create alerts at the subscription level.
      #
      # Subscription level alerts can be one of two types: `usage_exceeded` or
      # `cost_exceeded`. A `usage_exceeded` alert is scoped to a particular metric and
      # is triggered when the usage of that metric exceeds predefined thresholds during
      # the current billing cycle. A `cost_exceeded` alert is triggered when the total
      # amount due during the current billing cycle surpasses predefined thresholds.
      # `cost_exceeded` alerts do not include burndown of pre-purchase credits. Each
      # subscription can have one `cost_exceeded` alert and one `usage_exceeded` alert
      # per metric that is a part of the subscription. Alerts are triggered based on
      # usage or cost conditions met during the current billing cycle.
      sig do
        params(
          subscription_id: String,
          thresholds: T::Array[Orb::Threshold::OrHash],
          type: Orb::AlertCreateForSubscriptionParams::Type::OrSymbol,
          currency: T.nilable(String),
          grouping_keys: T.nilable(T::Array[String]),
          metric_id: T.nilable(String),
          price_filters:
            T.nilable(
              T::Array[
                Orb::AlertCreateForSubscriptionParams::PriceFilter::OrHash
              ]
            ),
          threshold_overrides:
            T.nilable(
              T::Array[
                Orb::AlertCreateForSubscriptionParams::ThresholdOverride::OrHash
              ]
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Alert)
      end
      def create_for_subscription(
        subscription_id,
        # The thresholds that define the values at which the alert will be triggered.
        thresholds:,
        # The type of alert to create. This must be a valid alert type.
        type:,
        # The case sensitive currency or custom pricing unit to use for grouped cost
        # alerts. Required when grouping_keys is set.
        currency: nil,
        # The property keys to group cost alerts by. Only applicable for cost_exceeded
        # alerts.
        grouping_keys: nil,
        # The metric to track usage for.
        metric_id: nil,
        # Filters to scope which prices are included in grouped cost alert evaluation.
        # Supports filtering by price_id, item_id, or price_type with includes/excludes
        # operators. Only applicable when grouping_keys is set.
        price_filters: nil,
        # Per-group threshold overrides. Each override maps a specific combination of
        # grouping_keys values to a list of thresholds that fully replaces the default
        # thresholds for that group. An empty thresholds list silences the group. Groups
        # without an override use the default thresholds. Only applicable when
        # grouping_keys is set.
        threshold_overrides: nil,
        request_options: {}
      )
      end

      # This endpoint allows you to disable an alert. To disable a plan-level alert for
      # a specific subscription, you must include the `subscription_id`. The
      # `subscription_id` is not required for customer or subscription level alerts.
      sig do
        params(
          alert_configuration_id: String,
          subscription_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Alert)
      end
      def disable(
        alert_configuration_id,
        # Used to update the status of a plan alert scoped to this subscription_id
        subscription_id: nil,
        request_options: {}
      )
      end

      # This endpoint allows you to enable an alert. To enable a plan-level alert for a
      # specific subscription, you must include the `subscription_id`. The
      # `subscription_id` is not required for customer or subscription level alerts.
      sig do
        params(
          alert_configuration_id: String,
          subscription_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Alert)
      end
      def enable(
        alert_configuration_id,
        # Used to update the status of a plan alert scoped to this subscription_id
        subscription_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
