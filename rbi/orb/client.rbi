# typed: strong

module Orb
  class Client < Orb::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Orb::Resources::TopLevel) }
    attr_reader :top_level

    # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
    # subscribed to by a customer. Plans define the billing behavior of the
    # subscription. You can see more about how to configure prices in the
    # [Price resource](/reference/price).
    sig { returns(Orb::Resources::Beta) }
    attr_reader :beta

    # A coupon represents a reusable discount configuration that can be applied either
    # as a fixed or percentage amount to an invoice or subscription. Coupons are
    # activated using a redemption code, which applies the discount to a subscription
    # or invoice. The duration of a coupon determines how long it remains available
    # for use by end users.
    sig { returns(Orb::Resources::Coupons) }
    attr_reader :coupons

    # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
    # been applied to a particular invoice.
    sig { returns(Orb::Resources::CreditNotes) }
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
    sig { returns(Orb::Resources::Customers) }
    attr_reader :customers

    # The [Event](/core-concepts#event) resource represents a usage event that has
    # been created for a customer. Events are the core of Orb's usage-based billing
    # model, and are used to calculate the usage charges for a given billing period.
    sig { returns(Orb::Resources::Events) }
    attr_reader :events

    # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
    # representing the request for payment for a single subscription. This includes a
    # set of line items, which correspond to prices in the subscription's plan and can
    # represent fixed recurring fees or usage-based fees. They are generated at the
    # end of a billing period, or as the result of an action, such as a cancellation.
    sig { returns(Orb::Resources::InvoiceLineItems) }
    attr_reader :invoice_line_items

    # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
    # representing the request for payment for a single subscription. This includes a
    # set of line items, which correspond to prices in the subscription's plan and can
    # represent fixed recurring fees or usage-based fees. They are generated at the
    # end of a billing period, or as the result of an action, such as a cancellation.
    sig { returns(Orb::Resources::Invoices) }
    attr_reader :invoices

    # The Item resource represents a sellable product or good. Items are associated
    # with all line items, billable metrics, and prices and are used for defining
    # external sync behavior for invoices and tax calculation purposes.
    sig { returns(Orb::Resources::Items) }
    attr_reader :items

    # The Metric resource represents a calculation of a quantity based on events.
    # Metrics are defined by the query that transforms raw usage events into
    # meaningful values for your customers.
    sig { returns(Orb::Resources::Metrics) }
    attr_reader :metrics

    # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
    # subscribed to by a customer. Plans define the billing behavior of the
    # subscription. You can see more about how to configure prices in the
    # [Price resource](/reference/price).
    sig { returns(Orb::Resources::Plans) }
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
    sig { returns(Orb::Resources::Prices) }
    attr_reader :prices

    sig { returns(Orb::Resources::Subscriptions) }
    attr_reader :subscriptions

    # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
    # usage, or credit balance and trigger webhooks when a threshold is exceeded.
    #
    # Alerts created through the API can be scoped to either customers or
    # subscriptions.
    sig { returns(Orb::Resources::Alerts) }
    attr_reader :alerts

    sig { returns(Orb::Resources::DimensionalPriceGroups) }
    attr_reader :dimensional_price_groups

    sig { returns(Orb::Resources::SubscriptionChanges) }
    attr_reader :subscription_changes

    # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
    # credits within Orb.
    sig { returns(Orb::Resources::CreditBlocks) }
    attr_reader :credit_blocks

    # The LicenseType resource represents a type of license that can be assigned to
    # users. License types are used during billing by grouping metrics on the
    # configured grouping key.
    sig { returns(Orb::Resources::LicenseTypes) }
    attr_reader :license_types

    sig { returns(Orb::Resources::Licenses) }
    attr_reader :licenses

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float,
        idempotency_header: String
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["ORB_API_KEY"]`
      api_key: ENV["ORB_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["ORB_BASE_URL"]`
      base_url: ENV["ORB_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Orb::Client::DEFAULT_MAX_RETRIES,
      timeout: Orb::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Orb::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Orb::Client::DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
    end
  end
end
