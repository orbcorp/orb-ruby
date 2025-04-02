# typed: strong

module Orb
  module Resources
    class Invoices
      # This endpoint is used to create a one-off invoice for a customer.
      sig do
        params(
          currency: String,
          invoice_date: Time,
          line_items: T::Array[T.any(Orb::Models::InvoiceCreateParams::LineItem, Orb::Util::AnyHash)],
          net_terms: Integer,
          customer_id: T.nilable(String),
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Util::AnyHash,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_customer_id: T.nilable(String),
          memo: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          will_auto_issue: T::Boolean,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash))
        )
          .returns(Orb::Models::Invoice)
      end
      def create(
        # An ISO 4217 currency string. Must be the same as the customer's currency if it
        #   is set.
        currency:,
        # Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
        #   set to the current time in the customer's timezone.
        invoice_date:,
        line_items:,
        # Determines the difference between the invoice issue date for subscription
        #   invoices as the date that they are due. A value of '0' here represents that the
        #   invoice is due on issue, whereas a value of 30 represents that the customer has
        #   30 days to pay the invoice.
        net_terms:,
        # The id of the `Customer` to create this invoice for. One of `customer_id` and
        #   `external_customer_id` are required.
        customer_id: nil,
        # An optional discount to attach to the invoice.
        discount: nil,
        # The `external_customer_id` of the `Customer` to create this invoice for. One of
        #   `customer_id` and `external_customer_id` are required.
        external_customer_id: nil,
        # An optional memo to attach to the invoice.
        memo: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        #   by setting the value to `null`, and the entire metadata mapping can be cleared
        #   by setting `metadata` to `null`.
        metadata: nil,
        # When true, this invoice will automatically be issued upon creation. When false,
        #   the resulting invoice will require manual review to issue. Defaulted to false.
        will_auto_issue: nil,
        request_options: {}
      )
      end

      # This endpoint allows you to update the `metadata` property on an invoice. If you
      #   pass null for the metadata value, it will clear any existing metadata for that
      #   invoice.
      #
      #   `metadata` can be modified regardless of invoice state.
      sig do
        params(
          invoice_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash))
        )
          .returns(Orb::Models::Invoice)
      end
      def update(
        invoice_id,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        #   by setting the value to `null`, and the entire metadata mapping can be cleared
        #   by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
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
      sig do
        params(
          amount: T.nilable(String),
          amount_gt: T.nilable(String),
          amount_lt: T.nilable(String),
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          date_type: T.nilable(Orb::Models::InvoiceListParams::DateType::OrSymbol),
          due_date: T.nilable(Date),
          due_date_window: T.nilable(String),
          due_date_gt: T.nilable(Date),
          due_date_lt: T.nilable(Date),
          external_customer_id: T.nilable(String),
          invoice_date_gt: T.nilable(Time),
          invoice_date_gte: T.nilable(Time),
          invoice_date_lt: T.nilable(Time),
          invoice_date_lte: T.nilable(Time),
          is_recurring: T.nilable(T::Boolean),
          limit: Integer,
          status: T.nilable(T::Array[Orb::Models::InvoiceListParams::Status::OrSymbol]),
          subscription_id: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash))
        )
          .returns(Orb::Page[Orb::Models::Invoice])
      end
      def list(
        amount: nil,
        amount_gt: nil,
        amount_lt: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        cursor: nil,
        customer_id: nil,
        date_type: nil,
        due_date: nil,
        # Filters invoices by their due dates within a specific time range in the past.
        #   Specify the range as a number followed by 'd' (days) or 'm' (months). For
        #   example, '7d' filters invoices due in the last 7 days, and '2m' filters those
        #   due in the last 2 months.
        due_date_window: nil,
        due_date_gt: nil,
        due_date_lt: nil,
        external_customer_id: nil,
        invoice_date_gt: nil,
        invoice_date_gte: nil,
        invoice_date_lt: nil,
        invoice_date_lte: nil,
        is_recurring: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        status: nil,
        subscription_id: nil,
        request_options: {}
      )
      end

      # This endpoint is used to fetch an [`Invoice`](/core-concepts#invoice) given an
      #   identifier.
      sig do
        params(invoice_id: String, request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash)))
          .returns(Orb::Models::Invoice)
      end
      def fetch(invoice_id, request_options: {})
      end

      # This endpoint can be used to fetch the upcoming
      #   [invoice](/core-concepts#invoice) for the current billing period given a
      #   subscription.
      sig do
        params(
          subscription_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash))
        )
          .returns(Orb::Models::InvoiceFetchUpcomingResponse)
      end
      def fetch_upcoming(subscription_id:, request_options: {})
      end

      # This endpoint allows an eligible invoice to be issued manually. This is only
      #   possible with invoices where status is `draft`, `will_auto_issue` is false, and
      #   an `eligible_to_issue_at` is a time in the past. Issuing an invoice could
      #   possibly trigger side effects, some of which could be customer-visible (e.g.
      #   sending emails, auto-collecting payment, syncing the invoice to external
      #   providers, etc).
      sig do
        params(
          invoice_id: String,
          synchronous: T::Boolean,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash))
        )
          .returns(Orb::Models::Invoice)
      end
      def issue(
        invoice_id,
        # If true, the invoice will be issued synchronously. If false, the invoice will be
        #   issued asynchronously. The synchronous option is only available for invoices
        #   that have no usage fees. If the invoice is configured to sync to an external
        #   provider, a successful response from this endpoint guarantees the invoice is
        #   present in the provider.
        synchronous: nil,
        request_options: {}
      )
      end

      # This endpoint allows an invoice's status to be set the `paid` status. This can
      #   only be done to invoices that are in the `issued` status.
      sig do
        params(
          invoice_id: String,
          payment_received_date: Date,
          external_id: T.nilable(String),
          notes: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash))
        )
          .returns(Orb::Models::Invoice)
      end
      def mark_paid(
        invoice_id,
        # A date string to specify the date of the payment.
        payment_received_date:,
        # An optional external ID to associate with the payment.
        external_id: nil,
        # An optional note to associate with the payment.
        notes: nil,
        request_options: {}
      )
      end

      # This endpoint collects payment for an invoice using the customer's default
      #   payment method. This action can only be taken on invoices with status "issued".
      sig do
        params(invoice_id: String, request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash)))
          .returns(Orb::Models::Invoice)
      end
      def pay(invoice_id, request_options: {})
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
      sig do
        params(invoice_id: String, request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Util::AnyHash)))
          .returns(Orb::Models::Invoice)
      end
      def void(invoice_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
