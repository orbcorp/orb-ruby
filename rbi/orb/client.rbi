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

    sig { returns(Orb::Resources::Coupons) }
    attr_reader :coupons

    sig { returns(Orb::Resources::CreditNotes) }
    attr_reader :credit_notes

    sig { returns(Orb::Resources::Customers) }
    attr_reader :customers

    sig { returns(Orb::Resources::Events) }
    attr_reader :events

    sig { returns(Orb::Resources::InvoiceLineItems) }
    attr_reader :invoice_line_items

    sig { returns(Orb::Resources::Invoices) }
    attr_reader :invoices

    sig { returns(Orb::Resources::Items) }
    attr_reader :items

    sig { returns(Orb::Resources::Metrics) }
    attr_reader :metrics

    sig { returns(Orb::Resources::Plans) }
    attr_reader :plans

    sig { returns(Orb::Resources::Prices) }
    attr_reader :prices

    sig { returns(Orb::Resources::Subscriptions) }
    attr_reader :subscriptions

    sig { returns(Orb::Resources::Alerts) }
    attr_reader :alerts

    sig { returns(Orb::Resources::DimensionalPriceGroups) }
    attr_reader :dimensional_price_groups

    sig { returns(Orb::Resources::SubscriptionChanges) }
    attr_reader :subscription_changes

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
