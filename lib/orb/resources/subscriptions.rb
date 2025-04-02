# frozen_string_literal: true

module Orb
  module Resources
    class Subscriptions
      # A subscription represents the purchase of a plan by a customer. The customer is
      #   identified by either the `customer_id` or the `external_customer_id`, and
      #   exactly one of these fields must be provided.
      #
      #   By default, subscriptions begin on the day that they're created and renew
      #   automatically for each billing cycle at the cadence that's configured in the
      #   plan definition.
      #
      #   The default configuration for subscriptions in Orb is **In-advance billing** and
      #   **Beginning of month alignment** (see
      #   [Subscription](/core-concepts##subscription) for more details).
      #
      #   In order to change the alignment behavior, Orb also supports billing
      #   subscriptions on the day of the month they are created. If
      #   `align_billing_with_subscription_start_date = true` is specified, subscriptions
      #   have billing cycles that are aligned with their `start_date`. For example, a
      #   subscription that begins on January 15th will have a billing cycle from January
      #   15th to February 15th. Every subsequent billing cycle will continue to start and
      #   invoice on the 15th.
      #
      #   If the "day" value is greater than the number of days in the month, the next
      #   billing cycle will start at the end of the month. For example, if the start_date
      #   is January 31st, the next billing cycle will start on February 28th.
      #
      #   If a customer was created with a currency, Orb only allows subscribing the
      #   customer to a plan with a matching `invoicing_currency`. If the customer does
      #   not have a currency set, on subscription creation, we set the customer's
      #   currency to be the `invoicing_currency` of the plan.
      #
      #   ## Customize your customer's subscriptions
      #
      #   Prices and adjustments in a plan can be added, removed, or replaced for the
      #   subscription being created. This is useful when a customer has prices that
      #   differ from the default prices for a specific plan.
      #
      #   <Note>
      #   This feature is only available for accounts that have migrated to Subscription Overrides Version 2. You can find your
      #   Subscription Overrides Version at the bottom of your [Plans page](https://app.withorb.com/plans)
      #   </Note>
      #
      #   ### Adding Prices
      #
      #   To add prices, provide a list of objects with the key `add_prices`. An object in
      #   the list must specify an existing add-on price with a `price_id` or
      #   `external_price_id` field, or create a new add-on price by including an object
      #   with the key `price`, identical to what would be used in the request body for
      #   the [create price endpoint](/api-reference/price/create-price). See the
      #   [Price resource](/product-catalog/price-configuration) for the specification of
      #   different price model configurations possible in this object.
      #
      #   If the plan has phases, each object in the list must include a number with
      #   `plan_phase_order` key to indicate which phase the price should be added to.
      #
      #   An object in the list can specify an optional `start_date` and optional
      #   `end_date`. This is equivalent to creating a price interval with the
      #   [add/edit price intervals endpoint](/api-reference/price-interval/add-or-edit-price-intervals).
      #   If unspecified, the start or end date of the phase or subscription will be used.
      #
      #   An object in the list can specify an optional `minimum_amount`,
      #   `maximum_amount`, or `discounts`. This will create adjustments which apply only
      #   to this price.
      #
      #   Additionally, an object in the list can specify an optional `reference_id`. This
      #   ID can be used to reference this price when
      #   [adding an adjustment](#adding-adjustments) in the same API call. However the ID
      #   is _transient_ and cannot be used to refer to the price in future API calls.
      #
      #   ### Removing Prices
      #
      #   To remove prices, provide a list of objects with the key `remove_prices`. An
      #   object in the list must specify a plan price with either a `price_id` or
      #   `external_price_id` field.
      #
      #   ### Replacing Prices
      #
      #   To replace prices, provide a list of objects with the key `replace_prices`. An
      #   object in the list must specify a plan price to replace with the
      #   `replaces_price_id` key, and it must specify a price to replace it with by
      #   either referencing an existing add-on price with a `price_id` or
      #   `external_price_id` field, or by creating a new add-on price by including an
      #   object with the key `price`, identical to what would be used in the request body
      #   for the [create price endpoint](/api-reference/price/create-price). See the
      #   [Price resource](/product-catalog/price-configuration) for the specification of
      #   different price model configurations possible in this object.
      #
      #   For fixed fees, an object in the list can supply a `fixed_price_quantity`
      #   instead of a `price`, `price_id`, or `external_price_id` field. This will update
      #   only the quantity for the price, similar to the
      #   [Update price quantity](/api-reference/subscription/update-price-quantity)
      #   endpoint.
      #
      #   The replacement price will have the same phase, if applicable, and the same
      #   start and end dates as the price it replaces.
      #
      #   An object in the list can specify an optional `minimum_amount`,
      #   `maximum_amount`, or `discounts`. This will create adjustments which apply only
      #   to this price.
      #
      #   Additionally, an object in the list can specify an optional `reference_id`. This
      #   ID can be used to reference the replacement price when
      #   [adding an adjustment](#adding-adjustments) in the same API call. However the ID
      #   is _transient_ and cannot be used to refer to the price in future API calls.
      #
      #   ### Adding adjustments
      #
      #   To add adjustments, provide a list of objects with the key `add_adjustments`. An
      #   object in the list must include an object with the key `adjustment`, identical
      #   to the adjustment object in the
      #   [add/edit price intervals endpoint](/api-reference/price-interval/add-or-edit-price-intervals).
      #
      #   If the plan has phases, each object in the list must include a number with
      #   `plan_phase_order` key to indicate which phase the adjustment should be added
      #   to.
      #
      #   An object in the list can specify an optional `start_date` and optional
      #   `end_date`. If unspecified, the start or end date of the phase or subscription
      #   will be used.
      #
      #   ### Removing adjustments
      #
      #   To remove adjustments, provide a list of objects with the key
      #   `remove_adjustments`. An object in the list must include a key, `adjustment_id`,
      #   with the ID of the adjustment to be removed.
      #
      #   ### Replacing adjustments
      #
      #   To replace adjustments, provide a list of objects with the key
      #   `replace_adjustments`. An object in the list must specify a plan adjustment to
      #   replace with the `replaces_adjustment_id` key, and it must specify an adjustment
      #   to replace it with by including an object with the key `adjustment`, identical
      #   to the adjustment object in the
      #   [add/edit price intervals endpoint](/api-reference/price-interval/add-or-edit-price-intervals).
      #
      #   The replacement adjustment will have the same phase, if applicable, and the same
      #   start and end dates as the adjustment it replaces.
      #
      #   ## Price overrides (DEPRECATED)
      #
      #   <Note>
      #   Price overrides are being phased out in favor adding/removing/replacing prices. (See
      #   [Customize your customer's subscriptions](/api-reference/subscription/create-subscription))
      #   </Note>
      #
      #   Price overrides are used to update some or all prices in a plan for the specific
      #   subscription being created. This is useful when a new customer has negotiated a
      #   rate that is unique to the customer.
      #
      #   To override prices, provide a list of objects with the key `price_overrides`.
      #   The price object in the list of overrides is expected to contain the existing
      #   price id, the `model_type` and configuration. (See the
      #   [Price resource](/product-catalog/price-configuration) for the specification of
      #   different price model configurations.) The numerical values can be updated, but
      #   the billable metric, cadence, type, and name of a price can not be overridden.
      #
      #   ### Maximums and Minimums
      #
      #   Minimums and maximums, much like price overrides, can be useful when a new
      #   customer has negotiated a new or different minimum or maximum spend cap than the
      #   default for a given price. If one exists for a price and null is provided for
      #   the minimum/maximum override on creation, then there will be no minimum/maximum
      #   on the new subscription. If no value is provided, then the default price maximum
      #   or minimum is used.
      #
      #   To add a minimum for a specific price, add `minimum_amount` to the specific
      #   price in the `price_overrides` object.
      #
      #   To add a maximum for a specific price, add `maximum_amount` to the specific
      #   price in the `price_overrides` object.
      #
      #   ### Minimum override example
      #
      #   Price minimum override example:
      #
      #   ```json
      #   {
      #     ...
      #     "id": "price_id",
      #     "model_type": "unit",
      #     "unit_config": {
      #       "unit_amount": "0.50"
      #     },
      #     "minimum_amount": "100.00"
      #     ...
      #   }
      #   ```
      #
      #   Removing an existing minimum example
      #
      #   ```json
      #   {
      #     ...
      #     "id": "price_id",
      #     "model_type": "unit",
      #     "unit_config": {
      #       "unit_amount": "0.50"
      #     },
      #     "minimum_amount": null
      #     ...
      #   }
      #   ```
      #
      #   ### Discounts
      #
      #   Discounts, like price overrides, can be useful when a new customer has
      #   negotiated a new or different discount than the default for a price. If a
      #   discount exists for a price and a null discount is provided on creation, then
      #   there will be no discount on the new subscription.
      #
      #   To add a discount for a specific price, add `discount` to the price in the
      #   `price_overrides` object. Discount should be a dictionary of the format:
      #
      #   ```ts
      #   {
      #     "discount_type": "amount" | "percentage" | "usage",
      #     "amount_discount": string,
      #     "percentage_discount": string,
      #     "usage_discount": string
      #   }
      #   ```
      #
      #   where either `amount_discount`, `percentage_discount`, or `usage_discount` is
      #   provided.
      #
      #   Price discount example
      #
      #   ```json
      #   {
      #     ...
      #     "id": "price_id",
      #     "model_type": "unit",
      #     "unit_config": {
      #       "unit_amount": "0.50"
      #     },
      #     "discount": {"discount_type": "amount", "amount_discount": "175"},
      #   }
      #   ```
      #
      #   Removing an existing discount example
      #
      #   ```json
      #   {
      #     "customer_id": "customer_id",
      #     "plan_id": "plan_id",
      #     "discount": null,
      #     "price_overrides": [ ... ]
      #     ...
      #   }
      #   ```
      #
      #   ## Threshold Billing
      #
      #   Orb supports invoicing for a subscription when a preconfigured usage threshold
      #   is hit. To enable threshold billing, pass in an `invoicing_threshold`, which is
      #   specified in the subscription's invoicing currency, when creating a
      #   subscription. E.g. pass in `10.00` to issue an invoice when usage amounts hit
      #   $10.00 for a subscription that invoices in USD.
      #
      # @overload create(add_adjustments: nil, add_prices: nil, align_billing_with_subscription_start_date: nil, auto_collection: nil, aws_region: nil, billing_cycle_anchor_configuration: nil, coupon_redemption_code: nil, credits_overage_rate: nil, customer_id: nil, default_invoice_memo: nil, end_date: nil, external_customer_id: nil, external_marketplace: nil, external_marketplace_reporting_id: nil, external_plan_id: nil, filter: nil, initial_phase_order: nil, invoicing_threshold: nil, metadata: nil, net_terms: nil, per_credit_overage_amount: nil, plan_id: nil, plan_version_number: nil, price_overrides: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, start_date: nil, trial_duration_days: nil, usage_customer_ids: nil, request_options: {})
      #
      # @param add_adjustments [Array<Orb::Models::SubscriptionCreateParams::AddAdjustment>, nil]
      # @param add_prices [Array<Orb::Models::SubscriptionCreateParams::AddPrice>, nil]
      # @param align_billing_with_subscription_start_date [Boolean]
      # @param auto_collection [Boolean, nil]
      # @param aws_region [String, nil]
      # @param billing_cycle_anchor_configuration [Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration, nil]
      # @param coupon_redemption_code [String, nil]
      # @param credits_overage_rate [Float, nil]
      # @param customer_id [String, nil]
      # @param default_invoice_memo [String, nil]
      # @param end_date [Time, nil]
      # @param external_customer_id [String, nil]
      # @param external_marketplace [Symbol, Orb::Models::SubscriptionCreateParams::ExternalMarketplace, nil]
      # @param external_marketplace_reporting_id [String, nil]
      # @param external_plan_id [String, nil]
      # @param filter [String, nil]
      # @param initial_phase_order [Integer, nil]
      # @param invoicing_threshold [String, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param net_terms [Integer, nil]
      # @param per_credit_overage_amount [Float, nil]
      # @param plan_id [String, nil]
      # @param plan_version_number [Integer, nil]
      # @param price_overrides [Array<Object>, nil]
      # @param remove_adjustments [Array<Orb::Models::SubscriptionCreateParams::RemoveAdjustment>, nil]
      # @param remove_prices [Array<Orb::Models::SubscriptionCreateParams::RemovePrice>, nil]
      # @param replace_adjustments [Array<Orb::Models::SubscriptionCreateParams::ReplaceAdjustment>, nil]
      # @param replace_prices [Array<Orb::Models::SubscriptionCreateParams::ReplacePrice>, nil]
      # @param start_date [Time, nil]
      # @param trial_duration_days [Integer, nil]
      # @param usage_customer_ids [Array<String>, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionCreateResponse]
      #
      # @see Orb::Models::SubscriptionCreateParams
      def create(params = {})
        parsed, options = Orb::Models::SubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions",
          body: parsed,
          model: Orb::Models::SubscriptionCreateResponse,
          options: options
        )
      end

      # This endpoint can be used to update the `metadata`, `net terms`,
      #   `auto_collection`, `invoicing_threshold`, and `default_invoice_memo` properties
      #   on a subscription.
      #
      # @overload update(subscription_id, auto_collection: nil, default_invoice_memo: nil, invoicing_threshold: nil, metadata: nil, net_terms: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param auto_collection [Boolean, nil]
      # @param default_invoice_memo [String, nil]
      # @param invoicing_threshold [String, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param net_terms [Integer, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Subscription]
      #
      # @see Orb::Models::SubscriptionUpdateParams
      def update(subscription_id, params = {})
        parsed, options = Orb::Models::SubscriptionUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["subscriptions/%1$s", subscription_id],
          body: parsed,
          model: Orb::Models::Subscription,
          options: options
        )
      end

      # This endpoint returns a list of all subscriptions for an account as a
      #   [paginated](/api-reference/pagination) list, ordered starting from the most
      #   recently created subscription. For a full discussion of the subscription
      #   resource, see [Subscription](/core-concepts##subscription).
      #
      #   Subscriptions can be filtered for a specific customer by using either the
      #   customer_id or external_customer_id query parameters. To filter subscriptions
      #   for multiple customers, use the customer_id[] or external_customer_id[] query
      #   parameters.
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, customer_id: nil, external_customer_id: nil, limit: nil, status: nil, request_options: {})
      #
      # @param created_at_gt [Time, nil]
      # @param created_at_gte [Time, nil]
      # @param created_at_lt [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param cursor [String, nil]
      # @param customer_id [Array<String>, nil]
      # @param external_customer_id [Array<String>, nil]
      # @param limit [Integer]
      # @param status [Symbol, Orb::Models::SubscriptionListParams::Status, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Page<Orb::Models::Subscription>]
      #
      # @see Orb::Models::SubscriptionListParams
      def list(params = {})
        parsed, options = Orb::Models::SubscriptionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "subscriptions",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::Subscription,
          options: options
        )
      end

      # This endpoint can be used to cancel an existing subscription. It returns the
      #   serialized subscription object with an `end_date` parameter that signifies when
      #   the subscription will transition to an ended state.
      #
      #   The body parameter `cancel_option` determines the cancellation behavior. Orb
      #   supports three cancellation options:
      #
      #   - `end_of_subscription_term`: stops the subscription from auto-renewing.
      #     Subscriptions that have been cancelled with this option can still incur
      #     charges for the remainder of their term:
      #
      #     - Issuing this cancellation request for a monthly subscription will keep the
      #       subscription active until the start of the subsequent month, and potentially
      #       issue an invoice for any usage charges incurred in the intervening period.
      #     - Issuing this cancellation request for a quarterly subscription will keep the
      #       subscription active until the end of the quarter and potentially issue an
      #       invoice for any usage charges incurred in the intervening period.
      #     - Issuing this cancellation request for a yearly subscription will keep the
      #       subscription active for the full year. For example, a yearly subscription
      #       starting on 2021-11-01 and cancelled on 2021-12-08 will remain active until
      #       2022-11-01 and potentially issue charges in the intervening months for any
      #       recurring monthly usage charges in its plan.
      #     - **Note**: If a subscription's plan contains prices with difference cadences,
      #       the end of term date will be determined by the largest cadence value. For
      #       example, cancelling end of term for a subscription with a quarterly fixed
      #       fee with a monthly usage fee will result in the subscription ending at the
      #       end of the quarter.
      #
      #   - `immediate`: ends the subscription immediately, setting the `end_date` to the
      #     current time:
      #
      #     - Subscriptions that have been cancelled with this option will be invoiced
      #       immediately. This invoice will include any usage fees incurred in the
      #       billing period up to the cancellation, along with any prorated recurring
      #       fees for the billing period, if applicable.
      #     - **Note**: If the subscription has a recurring fee that was paid in-advance,
      #       the prorated amount for the remaining time period will be added to the
      #       [customer's balance](list-balance-transactions) upon immediate cancellation.
      #       However, if the customer is ineligible to use the customer balance, the
      #       subscription cannot be cancelled immediately.
      #
      #   - `requested_date`: ends the subscription on a specified date, which requires a
      #     `cancellation_date` to be passed in. If no timezone is provided, the
      #     customer's timezone is used. For example, a subscription starting on January
      #     1st with a monthly price can be set to be cancelled on the first of any month
      #     after January 1st (e.g. March 1st, April 1st, May 1st). A subscription with
      #     multiple prices with different cadences defines the "term" to be the highest
      #     cadence of the prices.
      #
      #   Upcoming subscriptions are only eligible for immediate cancellation, which will
      #   set the `end_date` equal to the `start_date` upon cancellation.
      #
      #   ## Backdated cancellations
      #
      #   Orb allows you to cancel a subscription in the past as long as there are no paid
      #   invoices between the `requested_date` and the current time. If the cancellation
      #   is after the latest issued invoice, Orb will generate a balance refund for the
      #   current period. If the cancellation is before the most recently issued invoice,
      #   Orb will void the intervening invoice and generate a new one based on the new
      #   dates for the subscription. See the section on
      #   [cancellation behaviors](/product-catalog/creating-subscriptions#cancellation-behaviors).
      #
      # @overload cancel(subscription_id, cancel_option:, allow_invoice_credit_or_void: nil, cancellation_date: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param cancel_option [Symbol, Orb::Models::SubscriptionCancelParams::CancelOption]
      # @param allow_invoice_credit_or_void [Boolean, nil]
      # @param cancellation_date [Time, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionCancelResponse]
      #
      # @see Orb::Models::SubscriptionCancelParams
      def cancel(subscription_id, params)
        parsed, options = Orb::Models::SubscriptionCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/cancel", subscription_id],
          body: parsed,
          model: Orb::Models::SubscriptionCancelResponse,
          options: options
        )
      end

      # This endpoint is used to fetch a [Subscription](/core-concepts##subscription)
      #   given an identifier.
      #
      # @overload fetch(subscription_id, request_options: {})
      #
      # @param subscription_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Subscription]
      #
      # @see Orb::Models::SubscriptionFetchParams
      def fetch(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s", subscription_id],
          model: Orb::Models::Subscription,
          options: params[:request_options]
        )
      end

      # This endpoint is used to fetch a day-by-day snapshot of a subscription's costs
      #   in Orb, calculated by applying pricing information to the underlying usage (see
      #   the [subscription usage endpoint](fetch-subscription-usage) to fetch usage per
      #   metric, in usage units rather than a currency).
      #
      #   The semantics of this endpoint exactly mirror those of
      #   [fetching a customer's costs](fetch-customer-costs). Use this endpoint to limit
      #   your analysis of costs to a specific subscription for the customer (e.g. to
      #   de-aggregate costs when a customer's subscription has started and stopped on the
      #   same day).
      #
      # @overload fetch_costs(subscription_id, currency: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param currency [String, nil]
      # @param timeframe_end [Time, nil]
      # @param timeframe_start [Time, nil]
      # @param view_mode [Symbol, Orb::Models::SubscriptionFetchCostsParams::ViewMode, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionFetchCostsResponse]
      #
      # @see Orb::Models::SubscriptionFetchCostsParams
      def fetch_costs(subscription_id, params = {})
        parsed, options = Orb::Models::SubscriptionFetchCostsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s/costs", subscription_id],
          query: parsed,
          model: Orb::Models::SubscriptionFetchCostsResponse,
          options: options
        )
      end

      # This endpoint returns a [paginated](/api-reference/pagination) list of all plans
      #   associated with a subscription along with their start and end dates. This list
      #   contains the subscription's initial plan along with past and future plan
      #   changes.
      #
      # @overload fetch_schedule(subscription_id, cursor: nil, limit: nil, start_date_gt: nil, start_date_gte: nil, start_date_lt: nil, start_date_lte: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param cursor [String, nil]
      # @param limit [Integer]
      # @param start_date_gt [Time, nil]
      # @param start_date_gte [Time, nil]
      # @param start_date_lt [Time, nil]
      # @param start_date_lte [Time, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Page<Orb::Models::SubscriptionFetchScheduleResponse>]
      #
      # @see Orb::Models::SubscriptionFetchScheduleParams
      def fetch_schedule(subscription_id, params = {})
        parsed, options = Orb::Models::SubscriptionFetchScheduleParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s/schedule", subscription_id],
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::SubscriptionFetchScheduleResponse,
          options: options
        )
      end

      # This endpoint is used to fetch a subscription's usage in Orb. Especially when
      #   combined with optional query parameters, this endpoint is a powerful way to
      #   build visualizations on top of Orb's event data and metrics.
      #
      #   With no query parameters specified, this endpoint returns usage for the
      #   subscription's _current billing period_ across each billable metric that
      #   participates in the subscription. Usage quantities returned are the result of
      #   evaluating the metric definition for the entirety of the customer's billing
      #   period.
      #
      #   ### Default response shape
      #
      #   Orb returns a `data` array with an object corresponding to each billable metric.
      #   Nested within this object is a `usage` array which has a `quantity` value and a
      #   corresponding `timeframe_start` and `timeframe_end`. The `quantity` value
      #   represents the calculated usage value for the billable metric over the specified
      #   timeframe (inclusive of the `timeframe_start` timestamp and exclusive of the
      #   `timeframe_end` timestamp).
      #
      #   Orb will include _every_ window in the response starting from the beginning of
      #   the billing period, even when there were no events (and therefore no usage) in
      #   the window. This increases the size of the response but prevents the caller from
      #   filling in gaps and handling cumbersome time-based logic.
      #
      #   The query parameters in this endpoint serve to override this behavior and
      #   provide some key functionality, as listed below. Note that this functionality
      #   can also be used _in conjunction_ with each other, e.g. to display grouped usage
      #   on a custom timeframe.
      #
      #   ## Custom timeframe
      #
      #   In order to view usage for a custom timeframe rather than the current billing
      #   period, specify a `timeframe_start` and `timeframe_end`. This will calculate
      #   quantities for usage incurred between timeframe_start (inclusive) and
      #   timeframe_end (exclusive), i.e. `[timeframe_start, timeframe_end)`.
      #
      #   Note:
      #
      #   - These timestamps must be specified in ISO 8601 format and UTC timezone, e.g.
      #     `2022-02-01T05:00:00Z`.
      #   - Both parameters must be specified if either is specified.
      #
      #   ## Grouping by custom attributes
      #
      #   In order to view a single metric grouped by a specific _attribute_ that each
      #   event is tagged with (e.g. `cluster`), you must additionally specify a
      #   `billable_metric_id` and a `group_by` key. The `group_by` key denotes the event
      #   property on which to group.
      #
      #   When returning grouped usage, only usage for `billable_metric_id` is returned,
      #   and a separate object in the `data` array is returned for each value of the
      #   `group_by` key present in your events. The `quantity` value is the result of
      #   evaluating the billable metric for events filtered to a single value of the
      #   `group_by` key.
      #
      #   Orb expects that events that match the billable metric will contain values in
      #   the `properties` dictionary that correspond to the `group_by` key specified. By
      #   default, Orb will not return a `null` group (i.e. events that match the metric
      #   but do not have the key set). Currently, it is only possible to view usage
      #   grouped by a single attribute at a time.
      #
      #   When viewing grouped usage, Orb uses pagination to limit the response size to
      #   1000 groups by default. If there are more groups for a given subscription,
      #   pagination metadata in the response can be used to fetch all of the data.
      #
      #   The following example shows usage for an "API Requests" billable metric grouped
      #   by `region`. Note the extra `metric_group` dictionary in the response, which
      #   provides metadata about the group:
      #
      #   ```json
      #   {
      #       "data": [
      #           {
      #               "usage": [
      #                   {
      #                       "quantity": 0.19291,
      #                       "timeframe_start": "2021-10-01T07:00:00Z",
      #                       "timeframe_end": "2021-10-02T07:00:00Z",
      #                   },
      #                   ...
      #               ],
      #               "metric_group": {
      #                   "property_key": "region",
      #                   "property_value": "asia/pacific"
      #               },
      #               "billable_metric": {
      #                   "id": "Fe9pbpMk86xpwdGB",
      #                   "name": "API Requests"
      #               },
      #               "view_mode": "periodic"
      #           },
      #           ...
      #       ]
      #   }
      #   ```
      #
      #   ## Windowed usage
      #
      #   The `granularity` parameter can be used to _window_ the usage `quantity` value
      #   into periods. When not specified, usage is returned for the entirety of the time
      #   range.
      #
      #   When `granularity = day` is specified with a timeframe longer than a day, Orb
      #   will return a `quantity` value for each full day between `timeframe_start` and
      #   `timeframe_end`. Note that the days are demarcated by the _customer's local
      #   midnight_.
      #
      #   For example, with `timeframe_start = 2022-02-01T05:00:00Z`,
      #   `timeframe_end = 2022-02-04T01:00:00Z` and `granularity=day`, the following
      #   windows will be returned for a customer in the `America/Los_Angeles` timezone
      #   since local midnight is `08:00` UTC:
      #
      #   - `[2022-02-01T05:00:00Z, 2022-02-01T08:00:00Z)`
      #   - `[2022-02-01T08:00:00, 2022-02-02T08:00:00Z)`
      #   - `[2022-02-02T08:00:00, 2022-02-03T08:00:00Z)`
      #   - `[2022-02-03T08:00:00, 2022-02-04T01:00:00Z)`
      #
      #   ```json
      #   {
      #       "data": [
      #           {
      #               "billable_metric": {
      #                   "id": "Q8w89wjTtBdejXKsm",
      #                   "name": "API Requests"
      #               },
      #               "usage": [
      #                   {
      #                       "quantity": 0,
      #                       "timeframe_end": "2022-02-01T08:00:00+00:00",
      #                       "timeframe_start": "2022-02-01T05:00:00+00:00"
      #                   },
      #                   {
      #
      #                       "quantity": 0,
      #                       "timeframe_end": "2022-02-02T08:00:00+00:00",
      #                       "timeframe_start": "2022-02-01T08:00:00+00:00"
      #                   },
      #                   {
      #                       "quantity": 0,
      #                       "timeframe_end": "2022-02-03T08:00:00+00:00",
      #                       "timeframe_start": "2022-02-02T08:00:00+00:00"
      #                   },
      #                   {
      #                       "quantity": 0,
      #                       "timeframe_end": "2022-02-04T01:00:00+00:00",
      #                       "timeframe_start": "2022-02-03T08:00:00+00:00"
      #                   }
      #               ],
      #               "view_mode": "periodic"
      #           },
      #           ...
      #       ]
      #   }
      #   ```
      #
      #   ## Decomposable vs. non-decomposable metrics
      #
      #   Billable metrics fall into one of two categories: decomposable and
      #   non-decomposable. A decomposable billable metric, such as a sum or a count, can
      #   be displayed and aggregated across arbitrary timescales. On the other hand, a
      #   non-decomposable metric is not meaningful when only a slice of the billing
      #   window is considered.
      #
      #   As an example, if we have a billable metric that's defined to count unique
      #   users, displaying a graph of unique users for each day is not representative of
      #   the billable metric value over the month (days could have an overlapping set of
      #   'unique' users). Instead, what's useful for any given day is the number of
      #   unique users in the billing period so far, which are the _cumulative_ unique
      #   users.
      #
      #   Accordingly, this endpoint returns treats these two types of metrics differently
      #   when `group_by` is specified:
      #
      #   - Decomposable metrics can be grouped by any event property.
      #   - Non-decomposable metrics can only be grouped by the corresponding price's
      #     invoice grouping key. If no invoice grouping key is present, the metric does
      #     not support `group_by`.
      #
      #   ## Matrix prices
      #
      #   When a billable metric is attached to a price that uses matrix pricing, it's
      #   important to view usage grouped by those matrix dimensions. In this case, use
      #   the query parameters `first_dimension_key`, `first_dimension_value` and
      #   `second_dimension_key`, `second_dimension_value` while filtering to a specific
      #   `billable_metric_id`.
      #
      #   For example, if your compute metric has a separate unit price (i.e. a matrix
      #   pricing model) per `region` and `provider`, your request might provide the
      #   following parameters:
      #
      #   - `first_dimension_key`: `region`
      #   - `first_dimension_value`: `us-east-1`
      #   - `second_dimension_key`: `provider`
      #   - `second_dimension_value`: `aws`
      #
      # @overload fetch_usage(subscription_id, billable_metric_id: nil, first_dimension_key: nil, first_dimension_value: nil, granularity: nil, group_by: nil, second_dimension_key: nil, second_dimension_value: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param billable_metric_id [String, nil]
      # @param first_dimension_key [String, nil]
      # @param first_dimension_value [String, nil]
      # @param granularity [Symbol, Orb::Models::SubscriptionFetchUsageParams::Granularity, nil]
      # @param group_by [String, nil]
      # @param second_dimension_key [String, nil]
      # @param second_dimension_value [String, nil]
      # @param timeframe_end [Time, nil]
      # @param timeframe_start [Time, nil]
      # @param view_mode [Symbol, Orb::Models::SubscriptionFetchUsageParams::ViewMode, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage, Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage]
      #
      # @see Orb::Models::SubscriptionFetchUsageParams
      def fetch_usage(subscription_id, params = {})
        parsed, options = Orb::Models::SubscriptionFetchUsageParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["subscriptions/%1$s/usage", subscription_id],
          query: parsed,
          model: Orb::Models::SubscriptionUsage,
          options: options
        )
      end

      # This endpoint is used to add and edit subscription
      #   [price intervals](/api-reference/price-interval/add-or-edit-price-intervals). By
      #   making modifications to a subscription’s price intervals, you can
      #   [flexibly and atomically control the billing behavior of a subscription](/product-catalog/modifying-subscriptions).
      #
      #   ## Adding price intervals
      #
      #   Prices can be added as price intervals to a subscription by specifying them in
      #   the `add` array. A `price_id` or `external_price_id` from an add-on price or
      #   previously removed plan price can be specified to reuse an existing price
      #   definition (however, please note that prices from other plans cannot be added to
      #   the subscription). Additionally, a new price can be specified using the `price`
      #   field — this price will be created automatically.
      #
      #   A `start_date` must be specified for the price interval. This is the date when
      #   the price will start billing on the subscription, so this will notably result in
      #   an immediate charge at this time for any billed in advance fixed fees. The
      #   `end_date` will default to null, resulting in a price interval that will bill on
      #   a continually recurring basis. Both of these dates can be set in the past or the
      #   future and Orb will generate or modify invoices to ensure the subscription’s
      #   invoicing behavior is correct.
      #
      #   Additionally, a discount, minimum, or maximum can be specified on the price
      #   interval. This will only apply to this price interval, not any other price
      #   intervals on the subscription.
      #
      #   ## Adjustment intervals
      #
      #   An adjustment interval represents the time period that a particular adjustment
      #   (a discount, minimum, or maximum) applies to the prices on a subscription.
      #   Adjustment intervals can be added to a subscription by specifying them in the
      #   `add_adjustments` array, or modified via the `edit_adjustments` array. When
      #   creating an adjustment interval, you'll need to provide the definition of the
      #   new adjustment (the type of adjustment, and which prices it applies to), as well
      #   as the start and end dates for the adjustment interval. The start and end dates
      #   of an existing adjustment interval can be edited via the `edit_adjustments`
      #   field (just like price intervals). (To "change" the amount of a discount,
      #   minimum, or maximum, then, you'll need to end the existing interval, and create
      #   a new adjustment interval with the new amount and a start date that matches the
      #   end date of the previous interval.)
      #
      #   ## Editing price intervals
      #
      #   Price intervals can be adjusted by specifying edits to make in the `edit` array.
      #   A `price_interval_id` to edit must be specified — this can be retrieved from the
      #   `price_intervals` field on the subscription.
      #
      #   A new `start_date` or `end_date` can be specified to change the range of the
      #   price interval, which will modify past or future invoices to ensure correctness.
      #   If either of these dates are unspecified, they will default to the existing date
      #   on the price interval. To remove a price interval entirely from a subscription,
      #   set the `end_date` to be equivalent to the `start_date`.
      #
      #   ## Fixed fee quantity transitions
      #
      #   The fixed fee quantity transitions for a fixed fee price interval can also be
      #   specified when adding or editing by passing an array for
      #   `fixed_fee_quantity_transitions`. A fixed fee quantity transition must have a
      #   `quantity` and an `effective_date`, which is the date after which the new
      #   quantity will be used for billing. If a fixed fee quantity transition is
      #   scheduled at a billing period boundary, the full quantity will be billed on an
      #   invoice with the other prices on the subscription. If the fixed fee quantity
      #   transition is scheduled mid-billing period, the difference between the existing
      #   quantity and quantity specified in the transition will be prorated for the rest
      #   of the billing period and billed immediately, which will generate a new invoice.
      #
      #   Notably, the list of fixed fee quantity transitions passed will overwrite the
      #   existing fixed fee quantity transitions on the price interval, so the entire
      #   list of transitions must be specified to add additional transitions. The
      #   existing list of transitions can be retrieved using the
      #   `fixed_fee_quantity_transitions` property on a subscription’s serialized price
      #   intervals.
      #
      # @overload price_intervals(subscription_id, add: nil, add_adjustments: nil, allow_invoice_credit_or_void: nil, edit: nil, edit_adjustments: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param add [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>]
      # @param add_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>]
      # @param allow_invoice_credit_or_void [Boolean, nil]
      # @param edit [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>]
      # @param edit_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionPriceIntervalsResponse]
      #
      # @see Orb::Models::SubscriptionPriceIntervalsParams
      def price_intervals(subscription_id, params = {})
        parsed, options = Orb::Models::SubscriptionPriceIntervalsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/price_intervals", subscription_id],
          body: parsed,
          model: Orb::Models::SubscriptionPriceIntervalsResponse,
          options: options
        )
      end

      # This endpoint can be used to change an existing subscription's plan. It returns
      #   the serialized updated subscription object.
      #
      #   The body parameter `change_option` determines when the plan change occurrs. Orb
      #   supports three options:
      #
      #   - `end_of_subscription_term`: changes the plan at the end of the existing plan's
      #     term.
      #     - Issuing this plan change request for a monthly subscription will keep the
      #       existing plan active until the start of the subsequent month. Issuing this
      #       plan change request for a yearly subscription will keep the existing plan
      #       active for the full year. Charges incurred in the remaining period will be
      #       invoiced as normal.
      #     - Example: The plan is billed monthly on the 1st of the month, the request is
      #       made on January 15th, so the plan will be changed on February 1st, and
      #       invoice will be issued on February 1st for the last month of the original
      #       plan.
      #   - `immediate`: changes the plan immediately.
      #     - Subscriptions that have their plan changed with this option will move to the
      #       new plan immediately, and be invoiced immediately.
      #     - This invoice will include any usage fees incurred in the billing period up
      #       to the change, along with any prorated recurring fees for the billing
      #       period, if applicable.
      #     - Example: The plan is billed monthly on the 1st of the month, the request is
      #       made on January 15th, so the plan will be changed on January 15th, and an
      #       invoice will be issued for the partial month, from January 1 to January 15,
      #       on the original plan.
      #   - `requested_date`: changes the plan on the requested date (`change_date`).
      #     - If no timezone is provided, the customer's timezone is used. The
      #       `change_date` body parameter is required if this option is chosen.
      #     - Example: The plan is billed monthly on the 1st of the month, the request is
      #       made on January 15th, with a requested `change_date` of February 15th, so
      #       the plan will be changed on February 15th, and invoices will be issued on
      #       February 1st and February 15th.
      #
      #   Note that one of `plan_id` or `external_plan_id` is required in the request body
      #   for this operation.
      #
      #   ## Customize your customer's subscriptions
      #
      #   Prices and adjustments in a plan can be added, removed, or replaced on the
      #   subscription when you schedule the plan change. This is useful when a customer
      #   has prices that differ from the default prices for a specific plan.
      #
      #   <Note>
      #   This feature is only available for accounts that have migrated to Subscription Overrides Version 2. You can find your
      #   Subscription Overrides Version at the bottom of your [Plans page](https://app.withorb.com/plans)
      #   </Note>
      #
      #   ### Adding Prices
      #
      #   To add prices, provide a list of objects with the key `add_prices`. An object in
      #   the list must specify an existing add-on price with a `price_id` or
      #   `external_price_id` field, or create a new add-on price by including an object
      #   with the key `price`, identical to what would be used in the request body for
      #   the [create price endpoint](/api-reference/price/create-price). See the
      #   [Price resource](/product-catalog/price-configuration) for the specification of
      #   different price model configurations possible in this object.
      #
      #   If the plan has phases, each object in the list must include a number with
      #   `plan_phase_order` key to indicate which phase the price should be added to.
      #
      #   An object in the list can specify an optional `start_date` and optional
      #   `end_date`. If `start_date` is unspecified, the start of the phase / plan change
      #   time will be used. If `end_date` is unspecified, it will finish at the end of
      #   the phase / have no end time.
      #
      #   An object in the list can specify an optional `minimum_amount`,
      #   `maximum_amount`, or `discounts`. This will create adjustments which apply only
      #   to this price.
      #
      #   Additionally, an object in the list can specify an optional `reference_id`. This
      #   ID can be used to reference this price when
      #   [adding an adjustment](#adding-adjustments) in the same API call. However the ID
      #   is _transient_ and cannot be used to refer to the price in future API calls.
      #
      #   ### Removing Prices
      #
      #   To remove prices, provide a list of objects with the key `remove_prices`. An
      #   object in the list must specify a plan price with either a `price_id` or
      #   `external_price_id` field.
      #
      #   ### Replacing Prices
      #
      #   To replace prices, provide a list of objects with the key `replace_prices`. An
      #   object in the list must specify a plan price to replace with the
      #   `replaces_price_id` key, and it must specify a price to replace it with by
      #   either referencing an existing add-on price with a `price_id` or
      #   `external_price_id` field, or by creating a new add-on price by including an
      #   object with the key `price`, identical to what would be used in the request body
      #   for the [create price endpoint](/api-reference/price/create-price). See the
      #   [Price resource](/product-catalog/price-configuration) for the specification of
      #   different price model configurations possible in this object.
      #
      #   For fixed fees, an object in the list can supply a `fixed_price_quantity`
      #   instead of a `price`, `price_id`, or `external_price_id` field. This will update
      #   only the quantity for the price, similar to the
      #   [Update price quantity](/api-reference/subscription/update-price-quantity)
      #   endpoint.
      #
      #   The replacement price will have the same phase, if applicable, and the same
      #   start and end dates as the price it replaces.
      #
      #   An object in the list can specify an optional `minimum_amount`,
      #   `maximum_amount`, or `discounts`. This will create adjustments which apply only
      #   to this price.
      #
      #   Additionally, an object in the list can specify an optional `reference_id`. This
      #   ID can be used to reference the replacement price when
      #   [adding an adjustment](#adding-adjustments) in the same API call. However the ID
      #   is _transient_ and cannot be used to refer to the price in future API calls.
      #
      #   ### Adding adjustments
      #
      #   To add adjustments, provide a list of objects with the key `add_adjustments`. An
      #   object in the list must include an object with the key `adjustment`, identical
      #   to the adjustment object in the
      #   [add/edit price intervals endpoint](/api-reference/price-interval/add-or-edit-price-intervals).
      #
      #   If the plan has phases, each object in the list must include a number with
      #   `plan_phase_order` key to indicate which phase the adjustment should be added
      #   to.
      #
      #   An object in the list can specify an optional `start_date` and optional
      #   `end_date`. If `start_date` is unspecified, the start of the phase / plan change
      #   time will be used. If `end_date` is unspecified, it will finish at the end of
      #   the phase / have no end time.
      #
      #   ### Removing adjustments
      #
      #   To remove adjustments, provide a list of objects with the key
      #   `remove_adjustments`. An object in the list must include a key, `adjustment_id`,
      #   with the ID of the adjustment to be removed.
      #
      #   ### Replacing adjustments
      #
      #   To replace adjustments, provide a list of objects with the key
      #   `replace_adjustments`. An object in the list must specify a plan adjustment to
      #   replace with the `replaces_adjustment_id` key, and it must specify an adjustment
      #   to replace it with by including an object with the key `adjustment`, identical
      #   to the adjustment object in the
      #   [add/edit price intervals endpoint](/api-reference/price-interval/add-or-edit-price-intervals).
      #
      #   The replacement adjustment will have the same phase, if applicable, and the same
      #   start and end dates as the adjustment it replaces.
      #
      #   ## Price overrides (DEPRECATED)
      #
      #   <Note>
      #   Price overrides are being phased out in favor adding/removing/replacing prices. (See
      #   [Customize your customer's subscriptions](/api-reference/subscription/schedule-plan-change))
      #   </Note>
      #
      #   Price overrides are used to update some or all prices in a plan for the specific
      #   subscription being created. This is useful when a new customer has negotiated a
      #   rate that is unique to the customer.
      #
      #   To override prices, provide a list of objects with the key `price_overrides`.
      #   The price object in the list of overrides is expected to contain the existing
      #   price id, the `model_type` and configuration. (See the
      #   [Price resource](/product-catalog/price-configuration) for the specification of
      #   different price model configurations.) The numerical values can be updated, but
      #   the billable metric, cadence, type, and name of a price can not be overridden.
      #
      #   ### Maximums, and minimums
      #
      #   Price overrides are used to update some or all prices in the target plan.
      #   Minimums and maximums, much like price overrides, can be useful when a new
      #   customer has negotiated a new or different minimum or maximum spend cap than the
      #   default for the plan. The request format for maximums and minimums is the same
      #   as those in [subscription creation](create-subscription).
      #
      #   ## Scheduling multiple plan changes
      #
      #   When scheduling multiple plan changes with the same date, the latest plan change
      #   on that day takes effect.
      #
      #   ## Prorations for in-advance fees
      #
      #   By default, Orb calculates the prorated difference in any fixed fees when making
      #   a plan change, adjusting the customer balance as needed. For details on this
      #   behavior, see
      #   [Modifying subscriptions](/product-catalog/modifying-subscriptions#prorations-for-in-advance-fees).
      #
      # @overload schedule_plan_change(subscription_id, change_option:, add_adjustments: nil, add_prices: nil, align_billing_with_plan_change_date: nil, auto_collection: nil, billing_cycle_alignment: nil, billing_cycle_anchor_configuration: nil, change_date: nil, coupon_redemption_code: nil, credits_overage_rate: nil, default_invoice_memo: nil, external_plan_id: nil, filter: nil, initial_phase_order: nil, invoicing_threshold: nil, net_terms: nil, per_credit_overage_amount: nil, plan_id: nil, plan_version_number: nil, price_overrides: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, trial_duration_days: nil, usage_customer_ids: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param change_option [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::ChangeOption]
      # @param add_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment>, nil]
      # @param add_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice>, nil]
      # @param align_billing_with_plan_change_date [Boolean, nil]
      # @param auto_collection [Boolean, nil]
      # @param billing_cycle_alignment [Symbol, Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAlignment, nil]
      # @param billing_cycle_anchor_configuration [Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration, nil]
      # @param change_date [Time, nil]
      # @param coupon_redemption_code [String, nil]
      # @param credits_overage_rate [Float, nil]
      # @param default_invoice_memo [String, nil]
      # @param external_plan_id [String, nil]
      # @param filter [String, nil]
      # @param initial_phase_order [Integer, nil]
      # @param invoicing_threshold [String, nil]
      # @param net_terms [Integer, nil]
      # @param per_credit_overage_amount [Float, nil]
      # @param plan_id [String, nil]
      # @param plan_version_number [Integer, nil]
      # @param price_overrides [Array<Object>, nil]
      # @param remove_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment>, nil]
      # @param remove_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice>, nil]
      # @param replace_adjustments [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment>, nil]
      # @param replace_prices [Array<Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice>, nil]
      # @param trial_duration_days [Integer, nil]
      # @param usage_customer_ids [Array<String>, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionSchedulePlanChangeResponse]
      #
      # @see Orb::Models::SubscriptionSchedulePlanChangeParams
      def schedule_plan_change(subscription_id, params)
        parsed, options = Orb::Models::SubscriptionSchedulePlanChangeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/schedule_plan_change", subscription_id],
          body: parsed,
          model: Orb::Models::SubscriptionSchedulePlanChangeResponse,
          options: options
        )
      end

      # Manually trigger a phase, effective the given date (or the current time, if not
      #   specified).
      #
      # @overload trigger_phase(subscription_id, allow_invoice_credit_or_void: nil, effective_date: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param allow_invoice_credit_or_void [Boolean, nil]
      # @param effective_date [Date, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionTriggerPhaseResponse]
      #
      # @see Orb::Models::SubscriptionTriggerPhaseParams
      def trigger_phase(subscription_id, params = {})
        parsed, options = Orb::Models::SubscriptionTriggerPhaseParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/trigger_phase", subscription_id],
          body: parsed,
          model: Orb::Models::SubscriptionTriggerPhaseResponse,
          options: options
        )
      end

      # This endpoint can be used to unschedule any pending cancellations for a
      #   subscription.
      #
      #   To be eligible, the subscription must currently be active and have a future
      #   cancellation. This operation will turn on auto-renew, ensuring that the
      #   subscription does not end at the currently scheduled cancellation time.
      #
      # @overload unschedule_cancellation(subscription_id, request_options: {})
      #
      # @param subscription_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionUnscheduleCancellationResponse]
      #
      # @see Orb::Models::SubscriptionUnscheduleCancellationParams
      def unschedule_cancellation(subscription_id, params = {})
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/unschedule_cancellation", subscription_id],
          model: Orb::Models::SubscriptionUnscheduleCancellationResponse,
          options: params[:request_options]
        )
      end

      # This endpoint can be used to clear scheduled updates to the quantity for a fixed
      #   fee.
      #
      #   If there are no updates scheduled, a request validation error will be returned
      #   with a 400 status code.
      #
      # @overload unschedule_fixed_fee_quantity_updates(subscription_id, price_id:, request_options: {})
      #
      # @param subscription_id [String]
      # @param price_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse]
      #
      # @see Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesParams
      def unschedule_fixed_fee_quantity_updates(subscription_id, params)
        parsed, options = Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/unschedule_fixed_fee_quantity_updates", subscription_id],
          body: parsed,
          model: Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse,
          options: options
        )
      end

      # This endpoint can be used to unschedule any pending plan changes on an existing
      #   subscription.
      #
      # @overload unschedule_pending_plan_changes(subscription_id, request_options: {})
      #
      # @param subscription_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse]
      #
      # @see Orb::Models::SubscriptionUnschedulePendingPlanChangesParams
      def unschedule_pending_plan_changes(subscription_id, params = {})
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/unschedule_pending_plan_changes", subscription_id],
          model: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse,
          options: params[:request_options]
        )
      end

      # This endpoint can be used to update the quantity for a fixed fee.
      #
      #   To be eligible, the subscription must currently be active and the price
      #   specified must be a fixed fee (not usage-based). This operation will immediately
      #   update the quantity for the fee, or if a `effective_date` is passed in, will
      #   update the quantity on the requested date at midnight in the customer's
      #   timezone.
      #
      #   In order to change the fixed fee quantity as of the next draft invoice for this
      #   subscription, pass `change_option=upcoming_invoice` without an `effective_date`
      #   specified.
      #
      #   If the fee is an in-advance fixed fee, it will also issue an immediate invoice
      #   for the difference for the remainder of the billing period.
      #
      # @overload update_fixed_fee_quantity(subscription_id, price_id:, quantity:, allow_invoice_credit_or_void: nil, change_option: nil, effective_date: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param price_id [String]
      # @param quantity [Float]
      # @param allow_invoice_credit_or_void [Boolean, nil]
      # @param change_option [Symbol, Orb::Models::SubscriptionUpdateFixedFeeQuantityParams::ChangeOption]
      # @param effective_date [Date, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse]
      #
      # @see Orb::Models::SubscriptionUpdateFixedFeeQuantityParams
      def update_fixed_fee_quantity(subscription_id, params)
        parsed, options = Orb::Models::SubscriptionUpdateFixedFeeQuantityParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/update_fixed_fee_quantity", subscription_id],
          body: parsed,
          model: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse,
          options: options
        )
      end

      # This endpoint is used to update the trial end date for a subscription. The new
      #   trial end date must be within the time range of the current plan (i.e. the new
      #   trial end date must be on or after the subscription's start date on the current
      #   plan, and on or before the subscription end date).
      #
      #   In order to retroactively remove a trial completely, the end date can be set to
      #   the transition date of the subscription to this plan (or, if this is the first
      #   plan for this subscription, the subscription's start date). In order to end a
      #   trial immediately, the keyword `immediate` can be provided as the trial end
      #   date.
      #
      #   By default, Orb will shift only the trial end date (and price intervals that
      #   start or end on the previous trial end date), and leave all other future price
      #   intervals untouched. If the `shift` parameter is set to `true`, Orb will shift
      #   all subsequent price and adjustment intervals by the same amount as the trial
      #   end date shift (so, e.g., if a plan change is scheduled or an add-on price was
      #   added, that change will be pushed back by the same amount of time the trial is
      #   extended).
      #
      # @overload update_trial(subscription_id, trial_end_date:, shift: nil, request_options: {})
      #
      # @param subscription_id [String]
      # @param trial_end_date [Time, Symbol, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate]
      # @param shift [Boolean]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::SubscriptionUpdateTrialResponse]
      #
      # @see Orb::Models::SubscriptionUpdateTrialParams
      def update_trial(subscription_id, params)
        parsed, options = Orb::Models::SubscriptionUpdateTrialParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["subscriptions/%1$s/update_trial", subscription_id],
          body: parsed,
          model: Orb::Models::SubscriptionUpdateTrialResponse,
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
