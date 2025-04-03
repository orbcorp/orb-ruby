# frozen_string_literal: true

module Orb
  module Resources
    class Invoices
      # This endpoint is used to create a one-off invoice for a customer.
      #
      # @overload create(currency:, invoice_date:, line_items:, net_terms:, customer_id: nil, discount: nil, external_customer_id: nil, memo: nil, metadata: nil, will_auto_issue: nil, request_options: {})
      #
      # @param currency [String]
      # @param invoice_date [Time]
      # @param line_items [Array<Orb::Models::InvoiceCreateParams::LineItem>]
      # @param net_terms [Integer]
      # @param customer_id [String, nil]
      # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      # @param external_customer_id [String, nil]
      # @param memo [String, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param will_auto_issue [Boolean]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Invoice]
      #
      # @see Orb::Models::InvoiceCreateParams
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
      # @overload update(invoice_id, metadata: nil, request_options: {})
      #
      # @param invoice_id [String]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Invoice]
      #
      # @see Orb::Models::InvoiceUpdateParams
      def update(invoice_id, params = {})
        parsed, options = Orb::Models::InvoiceUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["invoices/%1$s", invoice_id],
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
      # @overload list(amount: nil, amount_gt: nil, amount_lt: nil, cursor: nil, customer_id: nil, date_type: nil, due_date: nil, due_date_window: nil, due_date_gt: nil, due_date_lt: nil, external_customer_id: nil, invoice_date_gt: nil, invoice_date_gte: nil, invoice_date_lt: nil, invoice_date_lte: nil, is_recurring: nil, limit: nil, status: nil, subscription_id: nil, request_options: {})
      #
      # @param amount [String, nil]
      # @param amount_gt [String, nil]
      # @param amount_lt [String, nil]
      # @param cursor [String, nil]
      # @param customer_id [String, nil]
      # @param date_type [Symbol, Orb::Models::InvoiceListParams::DateType, nil]
      # @param due_date [Date, nil]
      # @param due_date_window [String, nil]
      # @param due_date_gt [Date, nil]
      # @param due_date_lt [Date, nil]
      # @param external_customer_id [String, nil]
      # @param invoice_date_gt [Time, nil]
      # @param invoice_date_gte [Time, nil]
      # @param invoice_date_lt [Time, nil]
      # @param invoice_date_lte [Time, nil]
      # @param is_recurring [Boolean, nil]
      # @param limit [Integer]
      # @param status [Array<Symbol, Orb::Models::InvoiceListParams::Status>, nil]
      # @param subscription_id [String, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Invoice>]
      #
      # @see Orb::Models::InvoiceListParams
      def list(params = {})
        parsed, options = Orb::Models::InvoiceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invoices",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint is used to fetch an [`Invoice`](/core-concepts#invoice) given an
      #   identifier.
      #
      # @overload fetch(invoice_id, request_options: {})
      #
      # @param invoice_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Invoice]
      #
      # @see Orb::Models::InvoiceFetchParams
      def fetch(invoice_id, params = {})
        @client.request(
          method: :get,
          path: ["invoices/%1$s", invoice_id],
          model: Orb::Models::Invoice,
          options: params[:request_options]
        )
      end

      # This endpoint can be used to fetch the upcoming
      #   [invoice](/core-concepts#invoice) for the current billing period given a
      #   subscription.
      #
      # @overload fetch_upcoming(subscription_id:, request_options: {})
      #
      # @param subscription_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::InvoiceFetchUpcomingResponse]
      #
      # @see Orb::Models::InvoiceFetchUpcomingParams
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
      # @overload issue(invoice_id, synchronous: nil, request_options: {})
      #
      # @param invoice_id [String]
      # @param synchronous [Boolean]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Invoice]
      #
      # @see Orb::Models::InvoiceIssueParams
      def issue(invoice_id, params = {})
        parsed, options = Orb::Models::InvoiceIssueParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["invoices/%1$s/issue", invoice_id],
          body: parsed,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint allows an invoice's status to be set the `paid` status. This can
      #   only be done to invoices that are in the `issued` status.
      #
      # @overload mark_paid(invoice_id, payment_received_date:, external_id: nil, notes: nil, request_options: {})
      #
      # @param invoice_id [String]
      # @param payment_received_date [Date]
      # @param external_id [String, nil]
      # @param notes [String, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Invoice]
      #
      # @see Orb::Models::InvoiceMarkPaidParams
      def mark_paid(invoice_id, params)
        parsed, options = Orb::Models::InvoiceMarkPaidParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["invoices/%1$s/mark_paid", invoice_id],
          body: parsed,
          model: Orb::Models::Invoice,
          options: options
        )
      end

      # This endpoint collects payment for an invoice using the customer's default
      #   payment method. This action can only be taken on invoices with status "issued".
      #
      # @overload pay(invoice_id, request_options: {})
      #
      # @param invoice_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Invoice]
      #
      # @see Orb::Models::InvoicePayParams
      def pay(invoice_id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%1$s/pay", invoice_id],
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
      #   If the invoice was used to purchase a credit block, but the invoice is not yet
      #   paid, the credit block will be voided. If the invoice was created due to a
      #   top-up, the top-up will be disabled.
      #
      # @overload void(invoice_id, request_options: {})
      #
      # @param invoice_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Invoice]
      #
      # @see Orb::Models::InvoiceVoidParams
      def void(invoice_id, params = {})
        @client.request(
          method: :post,
          path: ["invoices/%1$s/void", invoice_id],
          model: Orb::Models::Invoice,
          options: params[:request_options]
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
