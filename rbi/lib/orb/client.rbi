# typed: strong

module Orb
  class Client < Orb::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def api_key
    end

    sig { returns(Orb::Resources::TopLevel) }
    def top_level
    end

    sig { returns(Orb::Resources::Coupons) }
    def coupons
    end

    sig { returns(Orb::Resources::CreditNotes) }
    def credit_notes
    end

    sig { returns(Orb::Resources::Customers) }
    def customers
    end

    sig { returns(Orb::Resources::Events) }
    def events
    end

    sig { returns(Orb::Resources::InvoiceLineItems) }
    def invoice_line_items
    end

    sig { returns(Orb::Resources::Invoices) }
    def invoices
    end

    sig { returns(Orb::Resources::Items) }
    def items
    end

    sig { returns(Orb::Resources::Metrics) }
    def metrics
    end

    sig { returns(Orb::Resources::Plans) }
    def plans
    end

    sig { returns(Orb::Resources::Prices) }
    def prices
    end

    sig { returns(Orb::Resources::Subscriptions) }
    def subscriptions
    end

    sig { returns(Orb::Resources::Alerts) }
    def alerts
    end

    sig { returns(Orb::Resources::DimensionalPriceGroups) }
    def dimensional_price_groups
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        base_url: T.nilable(String),
        api_key: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float,
        idempotency_header: String
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # Defaults to `ENV["ORB_API_KEY"]`
      api_key: ENV["ORB_API_KEY"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY,
      idempotency_header: "Idempotency-Key"
    )
    end
  end
end
