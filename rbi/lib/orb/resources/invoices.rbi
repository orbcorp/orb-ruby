# typed: strong

module Orb
  module Resources
    class Invoices
      sig do
        params(
          currency: String,
          invoice_date: Time,
          line_items: T::Array[Orb::Models::InvoiceCreateParams::LineItem],
          net_terms: Integer,
          customer_id: T.nilable(String),
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_customer_id: T.nilable(String),
          memo: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          will_auto_issue: T::Boolean,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Invoice)
      end
      def create(
        currency:,
        invoice_date:,
        line_items:,
        net_terms:,
        customer_id: nil,
        discount: nil,
        external_customer_id: nil,
        memo: nil,
        metadata: nil,
        will_auto_issue: nil,
        request_options: {}
      )
      end

      sig do
        params(
          invoice_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Invoice)
      end
      def update(invoice_id, metadata: nil, request_options: {})
      end

      sig do
        params(
          amount: T.nilable(String),
          amount_gt: T.nilable(String),
          amount_lt: T.nilable(String),
          cursor: T.nilable(String),
          customer_id: T.nilable(String),
          date_type: T.nilable(Symbol),
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
          status: T.nilable(T::Array[Symbol]),
          subscription_id: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Page[Orb::Models::Invoice])
      end
      def list(
        amount: nil,
        amount_gt: nil,
        amount_lt: nil,
        cursor: nil,
        customer_id: nil,
        date_type: nil,
        due_date: nil,
        due_date_window: nil,
        due_date_gt: nil,
        due_date_lt: nil,
        external_customer_id: nil,
        invoice_date_gt: nil,
        invoice_date_gte: nil,
        invoice_date_lt: nil,
        invoice_date_lte: nil,
        is_recurring: nil,
        limit: nil,
        status: nil,
        subscription_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          invoice_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Invoice)
      end
      def fetch(invoice_id, request_options: {})
      end

      sig do
        params(
          subscription_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::InvoiceFetchUpcomingResponse)
      end
      def fetch_upcoming(subscription_id:, request_options: {})
      end

      sig do
        params(
          invoice_id: String,
          synchronous: T::Boolean,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Invoice)
      end
      def issue(invoice_id, synchronous: nil, request_options: {})
      end

      sig do
        params(
          invoice_id: String,
          payment_received_date: Date,
          external_id: T.nilable(String),
          notes: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Invoice)
      end
      def mark_paid(invoice_id, payment_received_date:, external_id: nil, notes: nil, request_options: {})
      end

      sig do
        params(
          invoice_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Invoice)
      end
      def pay(invoice_id, request_options: {})
      end

      sig do
        params(
          invoice_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Invoice)
      end
      def void(invoice_id, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
