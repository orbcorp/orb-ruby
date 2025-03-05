# typed: strong

module Orb
  module Models
    class InvoiceFetchUpcomingResponse < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def amount_due
      end

      sig { params(_: String).returns(String) }
      def amount_due=(_)
      end

      sig { returns(Orb::Models::AutoCollectionModel) }
      def auto_collection
      end

      sig { params(_: Orb::Models::AutoCollectionModel).returns(Orb::Models::AutoCollectionModel) }
      def auto_collection=(_)
      end

      sig { returns(T.nilable(Orb::Models::AddressModel)) }
      def billing_address
      end

      sig { params(_: T.nilable(Orb::Models::AddressModel)).returns(T.nilable(Orb::Models::AddressModel)) }
      def billing_address=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T::Array[Orb::Models::CreditNoteSummaryModel]) }
      def credit_notes
      end

      sig do
        params(_: T::Array[Orb::Models::CreditNoteSummaryModel])
          .returns(T::Array[Orb::Models::CreditNoteSummaryModel])
      end
      def credit_notes=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(Orb::Models::CustomerMinifiedModel) }
      def customer
      end

      sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
      def customer=(_)
      end

      sig { returns(T::Array[Orb::Models::CustomerBalanceTransactionModel]) }
      def customer_balance_transactions
      end

      sig do
        params(_: T::Array[Orb::Models::CustomerBalanceTransactionModel])
          .returns(T::Array[Orb::Models::CustomerBalanceTransactionModel])
      end
      def customer_balance_transactions=(_)
      end

      sig { returns(T.nilable(Orb::Models::CustomerTaxIDModel)) }
      def customer_tax_id
      end

      sig { params(_: T.nilable(Orb::Models::CustomerTaxIDModel)).returns(T.nilable(Orb::Models::CustomerTaxIDModel)) }
      def customer_tax_id=(_)
      end

      sig { returns(T.anything) }
      def discount
      end

      sig { params(_: T.anything).returns(T.anything) }
      def discount=(_)
      end

      sig do
        returns(
          T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
        )
      end
      def discounts
      end

      sig do
        params(
          _: T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
        )
          .returns(
            T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
          )
      end
      def discounts=(_)
      end

      sig { returns(T.nilable(Time)) }
      def due_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def due_date=(_)
      end

      sig { returns(T.nilable(Time)) }
      def eligible_to_issue_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def eligible_to_issue_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def hosted_invoice_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def hosted_invoice_url=(_)
      end

      sig { returns(String) }
      def invoice_number
      end

      sig { params(_: String).returns(String) }
      def invoice_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def invoice_pdf
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoice_pdf=(_)
      end

      sig { returns(Symbol) }
      def invoice_source
      end

      sig { params(_: Symbol).returns(Symbol) }
      def invoice_source=(_)
      end

      sig { returns(T.nilable(Time)) }
      def issue_failed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def issue_failed_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def issued_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def issued_at=(_)
      end

      sig { returns(T::Array[Orb::Models::InvoiceLineItemModel]) }
      def line_items
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceLineItemModel]).returns(T::Array[Orb::Models::InvoiceLineItemModel])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(Orb::Models::MaximumModel)) }
      def maximum
      end

      sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
      def maximum=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Orb::Models::MinimumModel)) }
      def minimum
      end

      sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
      def minimum=(_)
      end

      sig { returns(T.nilable(String)) }
      def minimum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount=(_)
      end

      sig { returns(T.nilable(Time)) }
      def paid_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def paid_at=(_)
      end

      sig { returns(T::Array[Orb::Models::PaymentAttemptModel]) }
      def payment_attempts
      end

      sig { params(_: T::Array[Orb::Models::PaymentAttemptModel]).returns(T::Array[Orb::Models::PaymentAttemptModel]) }
      def payment_attempts=(_)
      end

      sig { returns(T.nilable(Time)) }
      def payment_failed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def payment_failed_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def payment_started_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def payment_started_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def scheduled_issue_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def scheduled_issue_at=(_)
      end

      sig { returns(T.nilable(Orb::Models::AddressModel)) }
      def shipping_address
      end

      sig { params(_: T.nilable(Orb::Models::AddressModel)).returns(T.nilable(Orb::Models::AddressModel)) }
      def shipping_address=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Orb::Models::SubscriptionMinifiedModel)) }
      def subscription
      end

      sig do
        params(_: T.nilable(Orb::Models::SubscriptionMinifiedModel))
          .returns(T.nilable(Orb::Models::SubscriptionMinifiedModel))
      end
      def subscription=(_)
      end

      sig { returns(String) }
      def subtotal
      end

      sig { params(_: String).returns(String) }
      def subtotal=(_)
      end

      sig { returns(T.nilable(Time)) }
      def sync_failed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def sync_failed_at=(_)
      end

      sig { returns(Time) }
      def target_date
      end

      sig { params(_: Time).returns(Time) }
      def target_date=(_)
      end

      sig { returns(String) }
      def total
      end

      sig { params(_: String).returns(String) }
      def total=(_)
      end

      sig { returns(T.nilable(Time)) }
      def voided_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def voided_at=(_)
      end

      sig { returns(T::Boolean) }
      def will_auto_issue
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def will_auto_issue=(_)
      end

      sig do
        params(
          id: String,
          amount_due: String,
          auto_collection: Orb::Models::AutoCollectionModel,
          billing_address: T.nilable(Orb::Models::AddressModel),
          created_at: Time,
          credit_notes: T::Array[Orb::Models::CreditNoteSummaryModel],
          currency: String,
          customer: Orb::Models::CustomerMinifiedModel,
          customer_balance_transactions: T::Array[Orb::Models::CustomerBalanceTransactionModel],
          customer_tax_id: T.nilable(Orb::Models::CustomerTaxIDModel),
          discount: T.anything,
          discounts: T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)],
          due_date: T.nilable(Time),
          eligible_to_issue_at: T.nilable(Time),
          hosted_invoice_url: T.nilable(String),
          invoice_number: String,
          invoice_pdf: T.nilable(String),
          invoice_source: Symbol,
          issue_failed_at: T.nilable(Time),
          issued_at: T.nilable(Time),
          line_items: T::Array[Orb::Models::InvoiceLineItemModel],
          maximum: T.nilable(Orb::Models::MaximumModel),
          maximum_amount: T.nilable(String),
          memo: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(Orb::Models::MinimumModel),
          minimum_amount: T.nilable(String),
          paid_at: T.nilable(Time),
          payment_attempts: T::Array[Orb::Models::PaymentAttemptModel],
          payment_failed_at: T.nilable(Time),
          payment_started_at: T.nilable(Time),
          scheduled_issue_at: T.nilable(Time),
          shipping_address: T.nilable(Orb::Models::AddressModel),
          status: Symbol,
          subscription: T.nilable(Orb::Models::SubscriptionMinifiedModel),
          subtotal: String,
          sync_failed_at: T.nilable(Time),
          target_date: Time,
          total: String,
          voided_at: T.nilable(Time),
          will_auto_issue: T::Boolean
        )
          .void
      end
      def initialize(
        id:,
        amount_due:,
        auto_collection:,
        billing_address:,
        created_at:,
        credit_notes:,
        currency:,
        customer:,
        customer_balance_transactions:,
        customer_tax_id:,
        discount:,
        discounts:,
        due_date:,
        eligible_to_issue_at:,
        hosted_invoice_url:,
        invoice_number:,
        invoice_pdf:,
        invoice_source:,
        issue_failed_at:,
        issued_at:,
        line_items:,
        maximum:,
        maximum_amount:,
        memo:,
        metadata:,
        minimum:,
        minimum_amount:,
        paid_at:,
        payment_attempts:,
        payment_failed_at:,
        payment_started_at:,
        scheduled_issue_at:,
        shipping_address:,
        status:,
        subscription:,
        subtotal:,
        sync_failed_at:,
        target_date:,
        total:,
        voided_at:,
        will_auto_issue:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount_due: String,
              auto_collection: Orb::Models::AutoCollectionModel,
              billing_address: T.nilable(Orb::Models::AddressModel),
              created_at: Time,
              credit_notes: T::Array[Orb::Models::CreditNoteSummaryModel],
              currency: String,
              customer: Orb::Models::CustomerMinifiedModel,
              customer_balance_transactions: T::Array[Orb::Models::CustomerBalanceTransactionModel],
              customer_tax_id: T.nilable(Orb::Models::CustomerTaxIDModel),
              discount: T.anything,
              discounts: T::Array[T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)],
              due_date: T.nilable(Time),
              eligible_to_issue_at: T.nilable(Time),
              hosted_invoice_url: T.nilable(String),
              invoice_number: String,
              invoice_pdf: T.nilable(String),
              invoice_source: Symbol,
              issue_failed_at: T.nilable(Time),
              issued_at: T.nilable(Time),
              line_items: T::Array[Orb::Models::InvoiceLineItemModel],
              maximum: T.nilable(Orb::Models::MaximumModel),
              maximum_amount: T.nilable(String),
              memo: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Models::MinimumModel),
              minimum_amount: T.nilable(String),
              paid_at: T.nilable(Time),
              payment_attempts: T::Array[Orb::Models::PaymentAttemptModel],
              payment_failed_at: T.nilable(Time),
              payment_started_at: T.nilable(Time),
              scheduled_issue_at: T.nilable(Time),
              shipping_address: T.nilable(Orb::Models::AddressModel),
              status: Symbol,
              subscription: T.nilable(Orb::Models::SubscriptionMinifiedModel),
              subtotal: String,
              sync_failed_at: T.nilable(Time),
              target_date: Time,
              total: String,
              voided_at: T.nilable(Time),
              will_auto_issue: T::Boolean
            }
          )
      end
      def to_hash
      end

      class InvoiceSource < Orb::Enum
        abstract!

        SUBSCRIPTION = :subscription
        PARTIAL = :partial
        ONE_OFF = :one_off

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Orb::Enum
        abstract!

        ISSUED = :issued
        PAID = :paid
        SYNCED = :synced
        VOID = :void
        DRAFT = :draft

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
