# frozen_string_literal: true

module Orb
  class Client < Orb::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :api_key

    # @return [Orb::Resources::TopLevel]
    attr_reader :top_level

    # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
    # subscribed to by a customer. Plans define the billing behavior of the
    # subscription. You can see more about how to configure prices in the
    # [Price resource](/reference/price).
    # @return [Orb::Resources::Beta]
    attr_reader :beta

    # A coupon represents a reusable discount configuration that can be applied either
    # as a fixed or percentage amount to an invoice or subscription. Coupons are
    # activated using a redemption code, which applies the discount to a subscription
    # or invoice. The duration of a coupon determines how long it remains available
    # for use by end users.
    # @return [Orb::Resources::Coupons]
    attr_reader :coupons

    # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
    # been applied to a particular invoice.
    # @return [Orb::Resources::CreditNotes]
    attr_reader :credit_notes

    # A customer is a buyer of your products, and the other party to the billing
    # relationship.
    #
    # In Orb, customers are assigned system generated identifiers automatically, but
    # it's often desirable to have these match existing identifiers in your system. To
    # avoid having to denormalize Orb ID information, you can pass in an
    # `external_customer_id` with your own identifier. See
    # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
    # information about how these aliases work in Orb.
    #
    # In addition to having an identifier in your system, a customer may exist in a
    # payment provider solution like Stripe. Use the `payment_provider_id` and the
    # `payment_provider` enum field to express this mapping.
    #
    # A customer also has a timezone (from the standard
    # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
    # your account's timezone. See [Timezone localization](/essentials/timezones) for
    # information on what this timezone parameter influences within Orb.
    # @return [Orb::Resources::Customers]
    attr_reader :customers

    # The [Event](/core-concepts#event) resource represents a usage event that has
    # been created for a customer. Events are the core of Orb's usage-based billing
    # model, and are used to calculate the usage charges for a given billing period.
    # @return [Orb::Resources::Events]
    attr_reader :events

    # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
    # representing the request for payment for a single subscription. This includes a
    # set of line items, which correspond to prices in the subscription's plan and can
    # represent fixed recurring fees or usage-based fees. They are generated at the
    # end of a billing period, or as the result of an action, such as a cancellation.
    # @return [Orb::Resources::InvoiceLineItems]
    attr_reader :invoice_line_items

    # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
    # representing the request for payment for a single subscription. This includes a
    # set of line items, which correspond to prices in the subscription's plan and can
    # represent fixed recurring fees or usage-based fees. They are generated at the
    # end of a billing period, or as the result of an action, such as a cancellation.
    # @return [Orb::Resources::Invoices]
    attr_reader :invoices

    # The Item resource represents a sellable product or good. Items are associated
    # with all line items, billable metrics, and prices and are used for defining
    # external sync behavior for invoices and tax calculation purposes.
    # @return [Orb::Resources::Items]
    attr_reader :items

    # The Metric resource represents a calculation of a quantity based on events.
    # Metrics are defined by the query that transforms raw usage events into
    # meaningful values for your customers.
    # @return [Orb::Resources::Metrics]
    attr_reader :metrics

    # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
    # subscribed to by a customer. Plans define the billing behavior of the
    # subscription. You can see more about how to configure prices in the
    # [Price resource](/reference/price).
    # @return [Orb::Resources::Plans]
    attr_reader :plans

    # The Price resource represents a price that can be billed on a subscription,
    # resulting in a charge on an invoice in the form of an invoice line item. Prices
    # take a quantity and determine an amount to bill.
    #
    # Orb supports a few different pricing models out of the box. Each of these models
    # is serialized differently in a given Price object. The model_type field
    # determines the key for the configuration object that is present.
    #
    # For more on the types of prices, see
    # [the core concepts documentation](/core-concepts#plan-and-price)
    # @return [Orb::Resources::Prices]
    attr_reader :prices

    # @return [Orb::Resources::Subscriptions]
    attr_reader :subscriptions

    # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
    # usage, or credit balance and trigger webhooks when a threshold is exceeded.
    #
    # Alerts created through the API can be scoped to either customers or
    # subscriptions.
    # @return [Orb::Resources::Alerts]
    attr_reader :alerts

    # @return [Orb::Resources::DimensionalPriceGroups]
    attr_reader :dimensional_price_groups

    # @return [Orb::Resources::SubscriptionChanges]
    attr_reader :subscription_changes

    # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
    # credits within Orb.
    # @return [Orb::Resources::CreditBlocks]
    attr_reader :credit_blocks

    # The LicenseType resource represents a type of license that can be assigned to
    # users. License types are used during billing by grouping metrics on the
    # configured grouping key.
    # @return [Orb::Resources::LicenseTypes]
    attr_reader :license_types

    # @return [Orb::Resources::Licenses]
    attr_reader :licenses

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["ORB_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["ORB_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    # @param idempotency_header [String]
    def initialize(
      api_key: ENV["ORB_API_KEY"],
      base_url: ENV["ORB_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
      base_url ||= "https://api.withorb.com/v1"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"ORB_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        idempotency_header: idempotency_header
      )

      @top_level = Orb::Resources::TopLevel.new(client: self)
      @beta = Orb::Resources::Beta.new(client: self)
      @coupons = Orb::Resources::Coupons.new(client: self)
      @credit_notes = Orb::Resources::CreditNotes.new(client: self)
      @customers = Orb::Resources::Customers.new(client: self)
      @events = Orb::Resources::Events.new(client: self)
      @invoice_line_items = Orb::Resources::InvoiceLineItems.new(client: self)
      @invoices = Orb::Resources::Invoices.new(client: self)
      @items = Orb::Resources::Items.new(client: self)
      @metrics = Orb::Resources::Metrics.new(client: self)
      @plans = Orb::Resources::Plans.new(client: self)
      @prices = Orb::Resources::Prices.new(client: self)
      @subscriptions = Orb::Resources::Subscriptions.new(client: self)
      @alerts = Orb::Resources::Alerts.new(client: self)
      @dimensional_price_groups = Orb::Resources::DimensionalPriceGroups.new(client: self)
      @subscription_changes = Orb::Resources::SubscriptionChanges.new(client: self)
      @credit_blocks = Orb::Resources::CreditBlocks.new(client: self)
      @license_types = Orb::Resources::LicenseTypes.new(client: self)
      @licenses = Orb::Resources::Licenses.new(client: self)
    end
  end
end
