# frozen_string_literal: true

module Orb
  module Resources
    class Invoices
      # This endpoint is used to create a one-off invoice for a customer.
      #
      # @param params [Orb::Models::InvoiceCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :currency An ISO 4217 currency string. Must be the same as the customer's currency if it
      #     is set.
      #
      #   @option params [Time] :invoice_date Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
      #     set to the current time in the customer's timezone.
      #
      #   @option params [Array<Orb::Models::InvoiceCreateParams::LineItem>] :line_items
      #
      #   @option params [Integer] :net_terms Determines the difference between the invoice issue date for subscription
      #     invoices as the date that they are due. A value of '0' here represents that the
      #     invoice is due on issue, whereas a value of 30 represents that the customer has
      #     30 days to pay the invoice.
      #
      #   @option params [String, nil] :customer_id The id of the `Customer` to create this invoice for. One of `customer_id` and
      #     `external_customer_id` are required.
      #
      #   @option params [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil] :discount An optional discount to attach to the invoice.
      #
      #   @option params [String, nil] :external_customer_id The `external_customer_id` of the `Customer` to create this invoice for. One of
      #     `customer_id` and `external_customer_id` are required.
      #
      #   @option params [String, nil] :memo An optional memo to attach to the invoice.
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Boolean] :will_auto_issue When true, this invoice will automatically be issued upon creation. When false,
      #     the resulting invoice will require manual review to issue. Defaulted to false.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Invoice]
      #
      def create(params)
        parsed, options = Orb::Models::InvoiceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "invoices",
          body: parsed,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint allows you to update the `metadata` property on an invoice. If you
      #   pass null for the metadata value, it will clear any existing metadata for that
      #   invoice.
      #
      #   `metadata` can be modified regardless of invoice state.
      #
      # @param invoice_id [String]
      #
      # @param params [Orb::Models::InvoiceUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Invoice]
      #
      def update(invoice_id, params = {})
        parsed, options = Orb::Models::InvoiceUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["invoices/%0s", invoice_id],
          body: parsed,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint returns a list of all [`Invoice`](/core-concepts#invoice)s for an
      #   account in a list format.
      #
      #   The list of invoices is ordered starting from the most recently issued invoice
      #   date. The response also includes
      #   [`pagination_metadata`](/api-reference/pagination), which lets the caller
      #   retrieve the next page of results if they exist.
      #
      #   By default, this only returns invoices that are `issued`, `paid`, or `synced`.
      #
      #   When fetching any `draft` invoices, this returns the last-computed invoice
      #   values for each draft invoice, which may not always be up-to-date since Orb
      #   regularly refreshes invoices asynchronously.
      #
      # @param params [Orb::Models::InvoiceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :amount
      #
      #   @option params [String, nil] :amount_gt
      #
      #   @option params [String, nil] :amount_lt
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [String, nil] :customer_id
      #
      #   @option params [Symbol, Orb::Models::InvoiceListParams::DateType, nil] :date_type
      #
      #   @option params [Date, nil] :due_date
      #
      #   @option params [String, nil] :due_date_window Filters invoices by their due dates within a specific time range in the past.
      #     Specify the range as a number followed by 'd' (days) or 'm' (months). For
      #     example, '7d' filters invoices due in the last 7 days, and '2m' filters those
      #     due in the last 2 months.
      #
      #   @option params [Date, nil] :due_date_gt
      #
      #   @option params [Date, nil] :due_date_lt
      #
      #   @option params [String, nil] :external_customer_id
      #
      #   @option params [Time, nil] :invoice_date_gt
      #
      #   @option params [Time, nil] :invoice_date_gte
      #
      #   @option params [Time, nil] :invoice_date_lt
      #
      #   @option params [Time, nil] :invoice_date_lte
      #
      #   @option params [Boolean, nil] :is_recurring
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [Array<Symbol, Orb::Models::InvoiceListParams::Status>, nil] :status
      #
      #   @option params [String, nil] :subscription_id
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::Invoice>]
      #
      def list(params = {})
        parsed, options = Orb::Models::InvoiceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invoices",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint is used to fetch an [`Invoice`](/core-concepts#invoice) given an
      #   identifier.
      #
      # @param invoice_id [String]
      #
      # @param params [Orb::Models::InvoiceFetchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Invoice]
      #
      def fetch(invoice_id, params = {})
        @client.request(
          method: :get,
          path: ["invoices/%0s", invoice_id],
          model: Orb::Models::Invoice,
          options: params[:request_options]
        )
      end

      # This endpoint can be used to fetch the upcoming
      #   [invoice](/core-concepts#invoice) for the current billing period given a
      #   subscription.
      #
      # @param params [Orb::Models::InvoiceFetchUpcomingParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :subscription_id
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::InvoiceFetchUpcomingResponse]
      #
      def fetch_upcoming(params)
        parsed, options = Orb::Models::InvoiceFetchUpcomingParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invoices/upcoming",
          query: parsed,
          model: Orb::Models::InvoiceFetchUpcomingResponse,
          options: options
        )
      end

      # This endpoint allows an eligible invoice to be issued manually. This is only
      #   possible with invoices where status is `draft`, `will_auto_issue` is false, and
      #   an `eligible_to_issue_at` is a time in the past. Issuing an invoice could
      #   possibly trigger side effects, some of which could be customer-visible (e.g.
      #   sending emails, auto-collecting payment, syncing the invoice to external
      #   providers, etc).
      #
      # @param invoice_id [String]
      #
      # @param params [Orb::Models::InvoiceIssueParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :synchronous If true, the invoice will be issued synchronously. If false, the invoice will be
      #     issued asynchronously. The synchronous option is only available for invoices
      #     that have no usage fees. If the invoice is configured to sync to an external
      #     provider, a successful response from this endpoint guarantees the invoice is
      #     present in the provider.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Invoice]
      #
      def issue(invoice_id, params = {})
        parsed, options = Orb::Models::InvoiceIssueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["invoices/%0s/issue", invoice_id],
          body: parsed,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint allows an invoice's status to be set the `paid` status. This can
      #   only be done to invoices that are in the `issued` status.
      #
      # @param invoice_id [String]
      #
      # @param params [Orb::Models::InvoiceMarkPaidParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :payment_received_date A date string to specify the date of the payment.
      #
      #   @option params [String, nil] :external_id An optional external ID to associate with the payment.
      #
      #   @option params [String, nil] :notes An optional note to associate with the payment.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Invoice]
      #
      def mark_paid(invoice_id, params)
        parsed, options = Orb::Models::InvoiceMarkPaidParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["invoices/%0s/mark_paid", invoice_id],
          body: parsed,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint collects payment for an invoice using the customer's default
      #   payment method. This action can only be taken on invoices with status "issued".
      #
      # @param invoice_id [String]
      #
      # @param params [Orb::Models::InvoicePayParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Invoice]
      #
      def pay(invoice_id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%0s/pay", invoice_id],
          model: Orb::Models::Invoice,
          options: params[:request_options]
        )
      end

      # This endpoint allows an invoice's status to be set the `void` status. This can
      #   only be done to invoices that are in the `issued` status.
      #
      #   If the associated invoice has used the customer balance to change the amount
      #   due, the customer balance operation will be reverted. For example, if the
      #   invoice used $10 of customer balance, that amount will be added back to the
      #   customer balance upon voiding.
      #
      # @param invoice_id [String]
      #
      # @param params [Orb::Models::InvoiceVoidParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Invoice]
      #
      def void(invoice_id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%0s/void", invoice_id],
          model: Orb::Models::Invoice,
          options: params[:request_options]
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
