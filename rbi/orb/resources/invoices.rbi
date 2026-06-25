# typed: strong

module Orb
  module Resources
    # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
    # representing the request for payment for a single subscription. This includes a
    # set of line items, which correspond to prices in the subscription's plan and can
    # represent fixed recurring fees or usage-based fees. They are generated at the
    # end of a billing period, or as the result of an action, such as a cancellation.
    class Invoices
      # This endpoint is used to create a one-off invoice for a customer.
      sig do
        params(
          currency: String,
          invoice_date: Time,
          line_items: T::Array[Orb::InvoiceCreateParams::LineItem::OrHash],
          auto_collection: T.nilable(T::Boolean),
          customer_id: T.nilable(String),
          discount:
            T.nilable(
              T.any(
                Orb::PercentageDiscount::OrHash,
                Orb::TrialDiscount::OrHash,
                Orb::UsageDiscount::OrHash,
                Orb::AmountDiscount::OrHash,
                Orb::Discount::TieredPercentage::OrHash
              )
            ),
          due_date: T.nilable(Orb::InvoiceCreateParams::DueDate::Variants),
          external_customer_id: T.nilable(String),
          memo: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          will_auto_issue: T::Boolean,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Invoice)
      end
      def create(
        # An ISO 4217 currency string. Must be the same as the customer's currency if it
        # is set.
        currency:,
        # Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
        # set to the current time in the customer's timezone.
        invoice_date:,
        line_items:,
        # Determines whether this invoice will automatically attempt to charge a saved
        # payment method, if any. If not specified, the invoice inherits the customer's
        # auto_collection setting.
        auto_collection: nil,
        # The id of the `Customer` to create this invoice for. One of `customer_id` and
        # `external_customer_id` are required.
        customer_id: nil,
        # An optional discount to attach to the invoice.
        discount: nil,
        # An optional custom due date for the invoice. If not set, the due date will be
        # calculated based on the `net_terms` value.
        due_date: nil,
        # The `external_customer_id` of the `Customer` to create this invoice for. One of
        # `customer_id` and `external_customer_id` are required.
        external_customer_id: nil,
        # An optional memo to attach to the invoice. If no memo is provided, we will
        # attach the default memo
        memo: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The net terms determines the due date of the invoice. Due date is calculated
        # based on the invoice or issuance date, depending on the account's configured due
        # date calculation method. A value of '0' here represents that the invoice is due
        # on issue, whereas a value of '30' represents that the customer has 30 days to
        # pay the invoice. Do not set this field if you want to set a custom due date.
        net_terms: nil,
        # When true, this invoice will be submitted for issuance upon creation. When
        # false, the resulting invoice will require manual review to issue. Defaulted to
        # false.
        will_auto_issue: nil,
        request_options: {}
      )
      end

      # This endpoint allows you to update the `metadata`, `net_terms`, `due_date`,
      # `invoice_date`, and `auto_collection` properties on an invoice. If you pass null
      # for the metadata value, it will clear any existing metadata for that invoice.
      #
      # `metadata` can be modified regardless of invoice state. `net_terms`, `due_date`,
      # `invoice_date`, and `auto_collection` can only be modified if the invoice is in
      # a `draft` state. `invoice_date` can only be modified for non-subscription
      # invoices.
      sig do
        params(
          invoice_id: String,
          auto_collection: T.nilable(T::Boolean),
          due_date: T.nilable(Orb::InvoiceUpdateParams::DueDate::Variants),
          invoice_date:
            T.nilable(Orb::InvoiceUpdateParams::InvoiceDate::Variants),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Invoice)
      end
      def update(
        invoice_id,
        # Determines whether this invoice will automatically attempt to charge a saved
        # payment method, if any. Can only be modified on draft invoices. If not
        # specified, the invoice's existing setting is unchanged.
        auto_collection: nil,
        # An optional custom due date for the invoice. If not set, the due date will be
        # calculated based on the `net_terms` value.
        due_date: nil,
        # The date of the invoice. Can only be modified for one-off draft invoices.
        invoice_date: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The net terms determines the due date of the invoice. Due date is calculated
        # based on the invoice or issuance date, depending on the account's configured due
        # date calculation method. A value of '0' here represents that the invoice is due
        # on issue, whereas a value of '30' represents that the customer has 30 days to
        # pay the invoice. Do not set this field if you want to set a custom due date.
        net_terms: nil,
        request_options: {}
      )
      end

      # This endpoint returns a list of all [`Invoice`](/core-concepts#invoice)s for an
      # account in a list format.
      #
      # The list of invoices is ordered starting from the most recently issued invoice
      # date. The response also includes
      # [`pagination_metadata`](/api-reference/pagination), which lets the caller
      # retrieve the next page of results if they exist.
      #
      # By default, this only returns invoices that are `issued`, `paid`, or `synced`.
      #
      # When fetching any `draft` invoices, this returns the last-computed invoice
      # values for each draft invoice, which may not always be up-to-date since Orb
      # regularly refreshes invoices asynchronously.
      #
      # If you don't need line item details, minimums, maximums, or discounts, prefer
      # the [list invoices summary](/api-reference/invoice/list-invoices-summary)
      # endpoint for better performance.
      sig do
        params(
          amount: T.nilable(String),
          amount_gt: T.nilable(String),
          amount_lt: T.nilable(String),
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          date_type: T.nilable(Orb::InvoiceListParams::DateType::OrSymbol),
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
          status: T.nilable(T::Array[Orb::InvoiceListParams::Status::OrSymbol]),
          subscription_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Invoice])
      end
      def list(
        amount: nil,
        amount_gt: nil,
        amount_lt: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        customer_id: nil,
        date_type: nil,
        due_date: nil,
        # Filters invoices by their due dates within a specific time range in the past.
        # Specify the range as a number followed by 'd' (days) or 'm' (months). For
        # example, '7d' filters invoices due in the last 7 days, and '2m' filters those
        # due in the last 2 months.
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

      # This endpoint deletes an invoice line item from a draft invoice.
      #
      # This endpoint only allows deletion of one-off line items (not subscription-based
      # line items). The invoice must be in a draft status for this operation to
      # succeed.
      sig do
        params(
          line_item_id: String,
          invoice_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).void
      end
      def delete_line_item(line_item_id, invoice_id:, request_options: {})
      end

      # This endpoint is used to fetch an [`Invoice`](/core-concepts#invoice) given an
      # identifier.
      sig do
        params(
          invoice_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Invoice)
      end
      def fetch(invoice_id, request_options: {})
      end

      # This endpoint can be used to fetch the upcoming
      # [invoice](/core-concepts#invoice) for the current billing period given a
      # subscription.
      sig do
        params(
          subscription_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::InvoiceFetchUpcomingResponse)
      end
      def fetch_upcoming(subscription_id:, request_options: {})
      end

      # This endpoint allows an eligible invoice to be issued manually. This is only
      # possible with invoices where status is `draft`, `will_auto_issue` is false, and
      # an `eligible_to_issue_at` is a time in the past. Issuing an invoice could
      # possibly trigger side effects, some of which could be customer-visible (e.g.
      # sending emails, auto-collecting payment, syncing the invoice to external
      # providers, etc).
      sig do
        params(
          invoice_id: String,
          synchronous: T::Boolean,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Invoice)
      end
      def issue(
        invoice_id,
        # If true, the invoice will be issued synchronously. If false, the invoice will be
        # issued asynchronously. The synchronous option is only available for invoices
        # that have no usage fees. If the invoice is configured to sync to an external
        # provider, a successful response from this endpoint guarantees the invoice is
        # present in the provider.
        synchronous: nil,
        request_options: {}
      )
      end

      # This endpoint allows an eligible invoice to be issued manually. This is only
      # possible with invoices where status is `draft`, `will_auto_issue` is false, and
      # an `eligible_to_issue_at` is a time in the past. Issuing an invoice could
      # possibly trigger side effects, some of which could be customer-visible (e.g.
      # sending emails, auto-collecting payment, syncing the invoice to external
      # providers, etc).
      #
      # This is a lighter-weight alternative to the issue invoice endpoint, returning an
      # invoice summary without any line item details.
      sig do
        params(
          invoice_id: String,
          synchronous: T::Boolean,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::InvoiceIssueSummaryResponse)
      end
      def issue_summary(
        invoice_id,
        # If true, the invoice will be issued synchronously. If false, the invoice will be
        # issued asynchronously. The synchronous option is only available for invoices
        # that have no usage fees. If the invoice is configured to sync to an external
        # provider, a successful response from this endpoint guarantees the invoice is
        # present in the provider.
        synchronous: nil,
        request_options: {}
      )
      end

      # This is a lighter-weight endpoint that returns a list of all
      # [`Invoice`](/core-concepts#invoice) summaries for an account in a list format.
      #
      # These invoice summaries do not include line item details, minimums, maximums,
      # and discounts, making this endpoint more efficient.
      #
      # The list of invoices is ordered starting from the most recently issued invoice
      # date. The response also includes
      # [`pagination_metadata`](/api-reference/pagination), which lets the caller
      # retrieve the next page of results if they exist.
      #
      # By default, this only returns invoices that are `issued`, `paid`, or `synced`.
      #
      # When fetching any `draft` invoices, this returns the last-computed invoice
      # values for each draft invoice, which may not always be up-to-date since Orb
      # regularly refreshes invoices asynchronously.
      sig do
        params(
          amount: T.nilable(String),
          amount_gt: T.nilable(String),
          amount_lt: T.nilable(String),
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          date_type:
            T.nilable(Orb::InvoiceListSummaryParams::DateType::OrSymbol),
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
          status: T.nilable(Orb::InvoiceListSummaryParams::Status::OrSymbol),
          subscription_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Models::InvoiceListSummaryResponse])
      end
      def list_summary(
        amount: nil,
        amount_gt: nil,
        amount_lt: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        customer_id: nil,
        date_type: nil,
        due_date: nil,
        # Filters invoices by their due dates within a specific time range in the past.
        # Specify the range as a number followed by 'd' (days) or 'm' (months). For
        # example, '7d' filters invoices due in the last 7 days, and '2m' filters those
        # due in the last 2 months.
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

      # This endpoint allows an invoice's status to be set to the `paid` status. This
      # can only be done to invoices that are in the `issued` or `synced` status.
      sig do
        params(
          invoice_id: String,
          payment_received_date: Date,
          external_id: T.nilable(String),
          notes: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Invoice)
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

      # This endpoint collects payment for an invoice. By default, it uses the
      # customer's default payment method. Optionally, a shared payment token (SPT) can
      # be provided to pay using agent-granted credentials instead. This action can only
      # be taken on invoices with status "issued".
      sig do
        params(
          invoice_id: String,
          shared_payment_token_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Invoice)
      end
      def pay(
        invoice_id,
        # The ID of a shared payment token granted by an agent to use for this payment.
        shared_payment_token_id:,
        request_options: {}
      )
      end

      # This endpoint allows an invoice's status to be set to the `void` status. This
      # can only be done to invoices that are in the `issued` status.
      #
      # If the associated invoice has used the customer balance to change the amount
      # due, the customer balance operation will be reverted. For example, if the
      # invoice used \$10 of customer balance, that amount will be added back to the
      # customer balance upon voiding.
      #
      # If the invoice was used to purchase a credit block, but the invoice is not yet
      # paid, the credit block will be voided. If the invoice was created due to a
      # top-up, the top-up will be disabled.
      sig do
        params(
          invoice_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Invoice)
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
