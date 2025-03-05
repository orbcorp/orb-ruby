# frozen_string_literal: true

module Orb
  module Resources
    class Alerts
      # This endpoint retrieves an alert by its ID.
      #
      # @param alert_id [String]
      #
      # @param params [Orb::Models::AlertRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::AlertModel]
      #
      def retrieve(alert_id, params = {})
        @client.request(
          method: :get,
          path: ["alerts/%0s", alert_id],
          model: Orb::Models::AlertModel,
          options: params[:request_options]
        )
      end

      # This endpoint updates the thresholds of an alert.
      #
      # @param alert_configuration_id [String]
      #
      # @param params [Orb::Models::AlertUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Orb::Models::ThresholdModel>] :thresholds The thresholds that define the values at which the alert will be triggered.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::AlertModel]
      #
      def update(alert_configuration_id, params)
        parsed, options = Orb::Models::AlertUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["alerts/%0s", alert_configuration_id],
          body: parsed,
          model: Orb::Models::AlertModel,
          options: options
        )
      end

      # This endpoint returns a list of alerts within Orb.
      #
      #   The request must specify one of `customer_id`, `external_customer_id`, or
      #   `subscription_id`.
      #
      #   If querying by subscripion_id, the endpoint will return the subscription level
      #   alerts as well as the plan level alerts associated with the subscription.
      #
      #   The list of alerts is ordered starting from the most recently created alert.
      #   This endpoint follows Orb's
      #   [standardized pagination format](/api-reference/pagination).
      #
      # @param params [Orb::Models::AlertListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time, nil] :created_at_gt
      #
      #   @option params [Time, nil] :created_at_gte
      #
      #   @option params [Time, nil] :created_at_lt
      #
      #   @option params [Time, nil] :created_at_lte
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [String, nil] :customer_id Fetch alerts scoped to this customer_id
      #
      #   @option params [String, nil] :external_customer_id Fetch alerts scoped to this external_customer_id
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [String, nil] :subscription_id Fetch alerts scoped to this subscription_id
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::AlertModel>]
      #
      def list(params = {})
        parsed, options = Orb::Models::AlertListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "alerts",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::AlertModel,
          options: options
        )
      end

      # This endpoint creates a new alert to monitor a customer's credit balance. There
      #   are three types of alerts that can be scoped to customers:
      #   `credit_balance_depleted`, `credit_balance_dropped`, and
      #   `credit_balance_recovered`. Customers can have a maximum of one of each type of
      #   alert per [credit balance currency](/product-catalog/prepurchase).
      #   `credit_balance_dropped` alerts require a list of thresholds to be provided
      #   while `credit_balance_depleted` and `credit_balance_recovered` alerts do not
      #   require thresholds.
      #
      # @param customer_id [String]
      #
      # @param params [Orb::Models::AlertCreateForCustomerParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :currency The case sensitive currency or custom pricing unit to use for this alert.
      #
      #   @option params [Symbol, Orb::Models::CreateCustomerAlertRequest::Type] :type The type of alert to create. This must be a valid alert type.
      #
      #   @option params [Array<Orb::Models::ThresholdModel>, nil] :thresholds The thresholds that define the values at which the alert will be triggered.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::AlertModel]
      #
      def create_for_customer(customer_id, params)
        parsed, options = Orb::Models::AlertCreateForCustomerParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/customer_id/%0s", customer_id],
          body: parsed,
          model: Orb::Models::AlertModel,
          options: options
        )
      end

      # This endpoint creates a new alert to monitor a customer's credit balance. There
      #   are three types of alerts that can be scoped to customers:
      #   `credit_balance_depleted`, `credit_balance_dropped`, and
      #   `credit_balance_recovered`. Customers can have a maximum of one of each type of
      #   alert per [credit balance currency](/product-catalog/prepurchase).
      #   `credit_balance_dropped` alerts require a list of thresholds to be provided
      #   while `credit_balance_depleted` and `credit_balance_recovered` alerts do not
      #   require thresholds.
      #
      # @param external_customer_id [String]
      #
      # @param params [Orb::Models::AlertCreateForExternalCustomerParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :currency The case sensitive currency or custom pricing unit to use for this alert.
      #
      #   @option params [Symbol, Orb::Models::CreateCustomerAlertRequest::Type] :type The type of alert to create. This must be a valid alert type.
      #
      #   @option params [Array<Orb::Models::ThresholdModel>, nil] :thresholds The thresholds that define the values at which the alert will be triggered.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::AlertModel]
      #
      def create_for_external_customer(external_customer_id, params)
        parsed, options = Orb::Models::AlertCreateForExternalCustomerParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/external_customer_id/%0s", external_customer_id],
          body: parsed,
          model: Orb::Models::AlertModel,
          options: options
        )
      end

      # This endpoint is used to create alerts at the subscription level.
      #
      #   Subscription level alerts can be one of two types: `usage_exceeded` or
      #   `cost_exceeded`. A `usage_exceeded` alert is scoped to a particular metric and
      #   is triggered when the usage of that metric exceeds predefined thresholds during
      #   the current billing cycle. A `cost_exceeded` alert is triggered when the total
      #   amount due during the current billing cycle surpasses predefined thresholds.
      #   `cost_exceeded` alerts do not include burndown of pre-purchase credits. Each
      #   subscription can have one `cost_exceeded` alert and one `usage_exceeded` alert
      #   per metric that is a part of the subscription. Alerts are triggered based on
      #   usage or cost conditions met during the current billing cycle.
      #
      # @param subscription_id [String]
      #
      # @param params [Orb::Models::AlertCreateForSubscriptionParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Orb::Models::ThresholdModel>] :thresholds The thresholds that define the values at which the alert will be triggered.
      #
      #   @option params [Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type] :type The type of alert to create. This must be a valid alert type.
      #
      #   @option params [String, nil] :metric_id The metric to track usage for.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::AlertModel]
      #
      def create_for_subscription(subscription_id, params)
        parsed, options = Orb::Models::AlertCreateForSubscriptionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/subscription_id/%0s", subscription_id],
          body: parsed,
          model: Orb::Models::AlertModel,
          options: options
        )
      end

      # This endpoint allows you to disable an alert. To disable a plan-level alert for
      #   a specific subscription, you must include the `subscription_id`. The
      #   `subscription_id` is not required for customer or subscription level alerts.
      #
      # @param alert_configuration_id [String]
      #
      # @param params [Orb::Models::AlertDisableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :subscription_id Used to update the status of a plan alert scoped to this subscription_id
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::AlertModel]
      #
      def disable(alert_configuration_id, params = {})
        parsed, options = Orb::Models::AlertDisableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/%0s/disable", alert_configuration_id],
          query: parsed,
          model: Orb::Models::AlertModel,
          options: options
        )
      end

      # This endpoint allows you to enable an alert. To enable a plan-level alert for a
      #   specific subscription, you must include the `subscription_id`. The
      #   `subscription_id` is not required for customer or subscription level alerts.
      #
      # @param alert_configuration_id [String]
      #
      # @param params [Orb::Models::AlertEnableParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :subscription_id Used to update the status of a plan alert scoped to this subscription_id
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::AlertModel]
      #
      def enable(alert_configuration_id, params = {})
        parsed, options = Orb::Models::AlertEnableParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["alerts/%0s/enable", alert_configuration_id],
          query: parsed,
          model: Orb::Models::AlertModel,
          options: options
        )
      end

      # @param client [Orb::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
