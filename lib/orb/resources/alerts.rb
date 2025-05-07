# frozen_string_literal: true

module Orb
  module Resources
    class Alerts
      # This endpoint retrieves an alert by its ID.
      #
      # @overload retrieve(alert_id, request_options: {})
      #
      # @param alert_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Alert]
      #
      # @see Orb::Models::AlertRetrieveParams
      def retrieve(alert_id, params = {})
        @client.request(
          method: :get,
          path: ["alerts/%1$s", alert_id],
          model: Orb::Alert,
          options: params[:request_options]
        )
      end

      # This endpoint updates the thresholds of an alert.
      #
      # @overload update(alert_configuration_id, thresholds:, request_options: {})
      #
      # @param alert_configuration_id [String]
      #
      # @param thresholds [Array<Orb::AlertUpdateParams::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Alert]
      #
      # @see Orb::Models::AlertUpdateParams
      def update(alert_configuration_id, params)
        parsed, options = Orb::AlertUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["alerts/%1$s", alert_configuration_id],
          body: parsed,
          model: Orb::Alert,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::AlertListParams} for more details.
      #
      # This endpoint returns a list of alerts within Orb.
      #
      # The request must specify one of `customer_id`, `external_customer_id`, or
      # `subscription_id`.
      #
      # If querying by subscripion_id, the endpoint will return the subscription level
      # alerts as well as the plan level alerts associated with the subscription.
      #
      # The list of alerts is ordered starting from the most recently created alert.
      # This endpoint follows Orb's
      # [standardized pagination format](/api-reference/pagination).
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, customer_id: nil, external_customer_id: nil, limit: nil, subscription_id: nil, request_options: {})
      #
      # @param created_at_gt [Time, nil]
      #
      # @param created_at_gte [Time, nil]
      #
      # @param created_at_lt [Time, nil]
      #
      # @param created_at_lte [Time, nil]
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param customer_id [String, nil] Fetch alerts scoped to this customer_id
      #
      # @param external_customer_id [String, nil] Fetch alerts scoped to this external_customer_id
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param subscription_id [String, nil] Fetch alerts scoped to this subscription_id
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Alert>]
      #
      # @see Orb::Models::AlertListParams
      def list(params = {})
        parsed, options = Orb::AlertListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "alerts",
          query: parsed.transform_keys(
            created_at_gt: "created_at[gt]",
            created_at_gte: "created_at[gte]",
            created_at_lt: "created_at[lt]",
            created_at_lte: "created_at[lte]"
          ),
          page: Orb::Internal::Page,
          model: Orb::Alert,
          options: options
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
      #
      # @overload create_for_customer(customer_id, currency:, type:, thresholds: nil, request_options: {})
      #
      # @param customer_id [String]
      #
      # @param currency [String] The case sensitive currency or custom pricing unit to use for this alert.
      #
      # @param type [Symbol, Orb::AlertCreateForCustomerParams::Type] The type of alert to create. This must be a valid alert type.
      #
      # @param thresholds [Array<Orb::AlertCreateForCustomerParams::Threshold>, nil] The thresholds that define the values at which the alert will be triggered.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Alert]
      #
      # @see Orb::Models::AlertCreateForCustomerParams
      def create_for_customer(customer_id, params)
        parsed, options = Orb::AlertCreateForCustomerParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/customer_id/%1$s", customer_id],
          body: parsed,
          model: Orb::Alert,
          options: options
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
      #
      # @overload create_for_external_customer(external_customer_id, currency:, type:, thresholds: nil, request_options: {})
      #
      # @param external_customer_id [String]
      #
      # @param currency [String] The case sensitive currency or custom pricing unit to use for this alert.
      #
      # @param type [Symbol, Orb::AlertCreateForExternalCustomerParams::Type] The type of alert to create. This must be a valid alert type.
      #
      # @param thresholds [Array<Orb::AlertCreateForExternalCustomerParams::Threshold>, nil] The thresholds that define the values at which the alert will be triggered.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Alert]
      #
      # @see Orb::Models::AlertCreateForExternalCustomerParams
      def create_for_external_customer(external_customer_id, params)
        parsed, options = Orb::AlertCreateForExternalCustomerParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/external_customer_id/%1$s", external_customer_id],
          body: parsed,
          model: Orb::Alert,
          options: options
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
      #
      # @overload create_for_subscription(subscription_id, thresholds:, type:, metric_id: nil, request_options: {})
      #
      # @param subscription_id [String]
      #
      # @param thresholds [Array<Orb::AlertCreateForSubscriptionParams::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      # @param type [Symbol, Orb::AlertCreateForSubscriptionParams::Type] The type of alert to create. This must be a valid alert type.
      #
      # @param metric_id [String, nil] The metric to track usage for.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Alert]
      #
      # @see Orb::Models::AlertCreateForSubscriptionParams
      def create_for_subscription(subscription_id, params)
        parsed, options = Orb::AlertCreateForSubscriptionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/subscription_id/%1$s", subscription_id],
          body: parsed,
          model: Orb::Alert,
          options: options
        )
      end

      # This endpoint allows you to disable an alert. To disable a plan-level alert for
      # a specific subscription, you must include the `subscription_id`. The
      # `subscription_id` is not required for customer or subscription level alerts.
      #
      # @overload disable(alert_configuration_id, subscription_id: nil, request_options: {})
      #
      # @param alert_configuration_id [String]
      #
      # @param subscription_id [String, nil] Used to update the status of a plan alert scoped to this subscription_id
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Alert]
      #
      # @see Orb::Models::AlertDisableParams
      def disable(alert_configuration_id, params = {})
        parsed, options = Orb::AlertDisableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/%1$s/disable", alert_configuration_id],
          query: parsed,
          model: Orb::Alert,
          options: options
        )
      end

      # This endpoint allows you to enable an alert. To enable a plan-level alert for a
      # specific subscription, you must include the `subscription_id`. The
      # `subscription_id` is not required for customer or subscription level alerts.
      #
      # @overload enable(alert_configuration_id, subscription_id: nil, request_options: {})
      #
      # @param alert_configuration_id [String]
      #
      # @param subscription_id [String, nil] Used to update the status of a plan alert scoped to this subscription_id
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Alert]
      #
      # @see Orb::Models::AlertEnableParams
      def enable(alert_configuration_id, params = {})
        parsed, options = Orb::AlertEnableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/%1$s/enable", alert_configuration_id],
          query: parsed,
          model: Orb::Alert,
          options: options
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
