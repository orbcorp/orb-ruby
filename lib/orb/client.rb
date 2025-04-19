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

    # @return [Orb::Resources::Coupons]
    attr_reader :coupons

    # @return [Orb::Resources::CreditNotes]
    attr_reader :credit_notes

    # @return [Orb::Resources::Customers]
    attr_reader :customers

    # @return [Orb::Resources::Events]
    attr_reader :events

    # @return [Orb::Resources::InvoiceLineItems]
    attr_reader :invoice_line_items

    # @return [Orb::Resources::Invoices]
    attr_reader :invoices

    # @return [Orb::Resources::Items]
    attr_reader :items

    # @return [Orb::Resources::Metrics]
    attr_reader :metrics

    # @return [Orb::Resources::Plans]
    attr_reader :plans

    # @return [Orb::Resources::Prices]
    attr_reader :prices

    # @return [Orb::Resources::Subscriptions]
    attr_reader :subscriptions

    # @return [Orb::Resources::Alerts]
    attr_reader :alerts

    # @return [Orb::Resources::DimensionalPriceGroups]
    attr_reader :dimensional_price_groups

    # @return [Orb::Resources::SubscriptionChanges]
    attr_reader :subscription_changes

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
      max_retries: Orb::Client::DEFAULT_MAX_RETRIES,
      timeout: Orb::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Orb::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Orb::Client::DEFAULT_MAX_RETRY_DELAY,
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
    end
  end
end
