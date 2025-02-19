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

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection) }
      def auto_collection
      end

      sig do
        params(_: Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection)
          .returns(Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection)
      end
      def auto_collection=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress)) }
      def billing_address
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress))
      end
      def billing_address=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote]) }
      def credit_notes
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote])
      end
      def credit_notes=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::Customer) }
      def customer
      end

      sig do
        params(_: Orb::Models::InvoiceFetchUpcomingResponse::Customer)
          .returns(Orb::Models::InvoiceFetchUpcomingResponse::Customer)
      end
      def customer=(_)
      end

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction]) }
      def customer_balance_transactions
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction])
      end
      def customer_balance_transactions=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID)) }
      def customer_tax_id
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID))
      end
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

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem]) }
      def line_items
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum)) }
      def maximum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum))
      end
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

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum)) }
      def minimum
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum))
      end
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

      sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt]) }
      def payment_attempts
      end

      sig do
        params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt])
          .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt])
      end
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

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress)) }
      def shipping_address
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress))
      end
      def shipping_address=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription)) }
      def subscription
      end

      sig do
        params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription))
          .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription))
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
          auto_collection: Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection,
          billing_address: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress),
          created_at: Time,
          credit_notes: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote],
          currency: String,
          customer: Orb::Models::InvoiceFetchUpcomingResponse::Customer,
          customer_balance_transactions: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction],
          customer_tax_id: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID),
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
          line_items: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem],
          maximum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum),
          maximum_amount: T.nilable(String),
          memo: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum),
          minimum_amount: T.nilable(String),
          paid_at: T.nilable(Time),
          payment_attempts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt],
          payment_failed_at: T.nilable(Time),
          payment_started_at: T.nilable(Time),
          scheduled_issue_at: T.nilable(Time),
          shipping_address: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress),
          status: Symbol,
          subscription: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription),
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
              auto_collection: Orb::Models::InvoiceFetchUpcomingResponse::AutoCollection,
              billing_address: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::BillingAddress),
              created_at: Time,
              credit_notes: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CreditNote],
              currency: String,
              customer: Orb::Models::InvoiceFetchUpcomingResponse::Customer,
              customer_balance_transactions: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction],
              customer_tax_id: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerTaxID),
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
              line_items: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem],
              maximum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Maximum),
              maximum_amount: T.nilable(String),
              memo: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Minimum),
              minimum_amount: T.nilable(String),
              paid_at: T.nilable(Time),
              payment_attempts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::PaymentAttempt],
              payment_failed_at: T.nilable(Time),
              payment_started_at: T.nilable(Time),
              scheduled_issue_at: T.nilable(Time),
              shipping_address: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::ShippingAddress),
              status: Symbol,
              subscription: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::Subscription),
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

      class AutoCollection < Orb::BaseModel
        sig { returns(T.nilable(T::Boolean)) }
        def enabled
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def enabled=(_)
        end

        sig { returns(T.nilable(Time)) }
        def next_attempt_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def next_attempt_at=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def num_attempts
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def num_attempts=(_)
        end

        sig { returns(T.nilable(Time)) }
        def previously_attempted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def previously_attempted_at=(_)
        end

        sig do
          params(
            enabled: T.nilable(T::Boolean),
            next_attempt_at: T.nilable(Time),
            num_attempts: T.nilable(Integer),
            previously_attempted_at: T.nilable(Time)
          )
            .void
        end
        def initialize(enabled:, next_attempt_at:, num_attempts:, previously_attempted_at:)
        end

        sig do
          override
            .returns(
              {
                enabled: T.nilable(T::Boolean),
                next_attempt_at: T.nilable(Time),
                num_attempts: T.nilable(Integer),
                previously_attempted_at: T.nilable(Time)
              }
            )
        end
        def to_hash
        end
      end

      class BillingAddress < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        def city
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_)
        end

        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_)
        end

        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          )
            .void
        end
        def initialize(city:, country:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override
            .returns(
              {
                city: T.nilable(String),
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
        end
        def to_hash
        end
      end

      class CreditNote < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def credit_note_number
        end

        sig { params(_: String).returns(String) }
        def credit_note_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def memo
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def memo=(_)
        end

        sig { returns(String) }
        def reason
        end

        sig { params(_: String).returns(String) }
        def reason=(_)
        end

        sig { returns(String) }
        def total
        end

        sig { params(_: String).returns(String) }
        def total=(_)
        end

        sig { returns(String) }
        def type
        end

        sig { params(_: String).returns(String) }
        def type=(_)
        end

        sig { returns(T.nilable(Time)) }
        def voided_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def voided_at=(_)
        end

        sig do
          params(
            id: String,
            credit_note_number: String,
            memo: T.nilable(String),
            reason: String,
            total: String,
            type: String,
            voided_at: T.nilable(Time)
          )
            .void
        end
        def initialize(id:, credit_note_number:, memo:, reason:, total:, type:, voided_at:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                credit_note_number: String,
                memo: T.nilable(String),
                reason: String,
                total: String,
                type: String,
                voided_at: T.nilable(Time)
              }
            )
        end
        def to_hash
        end
      end

      class Customer < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

        sig { params(id: String, external_customer_id: T.nilable(String)).void }
        def initialize(id:, external_customer_id:)
        end

        sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class CustomerBalanceTransaction < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Symbol) }
        def action
        end

        sig { params(_: Symbol).returns(Symbol) }
        def action=(_)
        end

        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote)) }
        def credit_note
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote))
        end
        def credit_note=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(String) }
        def ending_balance
        end

        sig { params(_: String).returns(String) }
        def ending_balance=(_)
        end

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice)) }
        def invoice
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice))
        end
        def invoice=(_)
        end

        sig { returns(String) }
        def starting_balance
        end

        sig { params(_: String).returns(String) }
        def starting_balance=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
            id: String,
            action: Symbol,
            amount: String,
            created_at: Time,
            credit_note: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote),
            description: T.nilable(String),
            ending_balance: String,
            invoice: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice),
            starting_balance: String,
            type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          action:,
          amount:,
          created_at:,
          credit_note:,
          description:,
          ending_balance:,
          invoice:,
          starting_balance:,
          type:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                action: Symbol,
                amount: String,
                created_at: Time,
                credit_note: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::CreditNote),
                description: T.nilable(String),
                ending_balance: String,
                invoice: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::CustomerBalanceTransaction::Invoice),
                starting_balance: String,
                type: Symbol
              }
            )
        end
        def to_hash
        end

        class Action < Orb::Enum
          abstract!

          APPLIED_TO_INVOICE = :applied_to_invoice
          MANUAL_ADJUSTMENT = :manual_adjustment
          PRORATED_REFUND = :prorated_refund
          REVERT_PRORATED_REFUND = :revert_prorated_refund
          RETURN_FROM_VOIDING = :return_from_voiding
          CREDIT_NOTE_APPLIED = :credit_note_applied
          CREDIT_NOTE_VOIDED = :credit_note_voided
          OVERPAYMENT_REFUND = :overpayment_refund
          EXTERNAL_PAYMENT = :external_payment

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditNote < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Invoice < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Type < Orb::Enum
          abstract!

          INCREMENT = :increment
          DECREMENT = :decrement

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class CustomerTaxID < Orb::BaseModel
        sig { returns(Symbol) }
        def country
        end

        sig { params(_: Symbol).returns(Symbol) }
        def country=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        sig { params(country: Symbol, type: Symbol, value: String).void }
        def initialize(country:, type:, value:)
        end

        sig { override.returns({country: Symbol, type: Symbol, value: String}) }
        def to_hash
        end

        class Country < Orb::Enum
          abstract!

          AD = :AD
          AE = :AE
          AR = :AR
          AT = :AT
          AU = :AU
          BE = :BE
          BG = :BG
          BH = :BH
          BO = :BO
          BR = :BR
          CA = :CA
          CH = :CH
          CL = :CL
          CN = :CN
          CO = :CO
          CR = :CR
          CY = :CY
          CZ = :CZ
          DE = :DE
          DK = :DK
          EE = :EE
          DO = :DO
          EC = :EC
          EG = :EG
          ES = :ES
          EU = :EU
          FI = :FI
          FR = :FR
          GB = :GB
          GE = :GE
          GR = :GR
          HK = :HK
          HR = :HR
          HU = :HU
          ID = :ID
          IE = :IE
          IL = :IL
          IN = :IN
          IS = :IS
          IT = :IT
          JP = :JP
          KE = :KE
          KR = :KR
          KZ = :KZ
          LI = :LI
          LT = :LT
          LU = :LU
          LV = :LV
          MT = :MT
          MX = :MX
          MY = :MY
          NG = :NG
          NL = :NL
          NO = :NO
          NZ = :NZ
          OM = :OM
          PE = :PE
          PH = :PH
          PL = :PL
          PT = :PT
          RO = :RO
          RS = :RS
          RU = :RU
          SA = :SA
          SE = :SE
          SG = :SG
          SI = :SI
          SK = :SK
          SV = :SV
          TH = :TH
          TR = :TR
          TW = :TW
          UA = :UA
          US = :US
          UY = :UY
          VE = :VE
          VN = :VN
          ZA = :ZA

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Orb::Enum
          abstract!

          AD_NRT = :ad_nrt
          AE_TRN = :ae_trn
          AR_CUIT = :ar_cuit
          EU_VAT = :eu_vat
          AU_ABN = :au_abn
          AU_ARN = :au_arn
          BG_UIC = :bg_uic
          BH_VAT = :bh_vat
          BO_TIN = :bo_tin
          BR_CNPJ = :br_cnpj
          BR_CPF = :br_cpf
          CA_BN = :ca_bn
          CA_GST_HST = :ca_gst_hst
          CA_PST_BC = :ca_pst_bc
          CA_PST_MB = :ca_pst_mb
          CA_PST_SK = :ca_pst_sk
          CA_QST = :ca_qst
          CH_VAT = :ch_vat
          CL_TIN = :cl_tin
          CN_TIN = :cn_tin
          CO_NIT = :co_nit
          CR_TIN = :cr_tin
          DO_RCN = :do_rcn
          EC_RUC = :ec_ruc
          EG_TIN = :eg_tin
          ES_CIF = :es_cif
          EU_OSS_VAT = :eu_oss_vat
          GB_VAT = :gb_vat
          GE_VAT = :ge_vat
          HK_BR = :hk_br
          HU_TIN = :hu_tin
          ID_NPWP = :id_npwp
          IL_VAT = :il_vat
          IN_GST = :in_gst
          IS_VAT = :is_vat
          JP_CN = :jp_cn
          JP_RN = :jp_rn
          JP_TRN = :jp_trn
          KE_PIN = :ke_pin
          KR_BRN = :kr_brn
          KZ_BIN = :kz_bin
          LI_UID = :li_uid
          MX_RFC = :mx_rfc
          MY_FRP = :my_frp
          MY_ITN = :my_itn
          MY_SST = :my_sst
          NG_TIN = :ng_tin
          NO_VAT = :no_vat
          NO_VOEC = :no_voec
          NZ_GST = :nz_gst
          OM_VAT = :om_vat
          PE_RUC = :pe_ruc
          PH_TIN = :ph_tin
          RO_TIN = :ro_tin
          RS_PIB = :rs_pib
          RU_INN = :ru_inn
          RU_KPP = :ru_kpp
          SA_VAT = :sa_vat
          SG_GST = :sg_gst
          SG_UEN = :sg_uen
          SI_TIN = :si_tin
          SV_NIT = :sv_nit
          TH_VAT = :th_vat
          TR_TIN = :tr_tin
          TW_VAT = :tw_vat
          UA_VAT = :ua_vat
          US_EIN = :us_ein
          UY_RUC = :uy_ruc
          VE_RIF = :ve_rif
          VN_TIN = :vn_tin
          ZA_VAT = :za_vat

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
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

      class LineItem < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def adjusted_subtotal
        end

        sig { params(_: String).returns(String) }
        def adjusted_subtotal=(_)
        end

        sig do
          returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
            )
            ]
          )
        end
        def adjustments
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
              )
              ]
            )
        end
        def adjustments=(_)
        end

        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        sig { returns(String) }
        def credits_applied
        end

        sig { params(_: String).returns(String) }
        def credits_applied=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::Discount::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
        end

        sig { returns(Time) }
        def end_date
        end

        sig { params(_: Time).returns(Time) }
        def end_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def grouping
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def grouping=(_)
        end

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum))
            .returns(T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(String) }
        def partially_invoiced_amount
        end

        sig { params(_: String).returns(String) }
        def partially_invoiced_amount=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              )
            )
          )
        end
        def price
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::Price::UnitPrice,
                  Orb::Models::Price::PackagePrice,
                  Orb::Models::Price::MatrixPrice,
                  Orb::Models::Price::TieredPrice,
                  Orb::Models::Price::TieredBpsPrice,
                  Orb::Models::Price::BpsPrice,
                  Orb::Models::Price::BulkBpsPrice,
                  Orb::Models::Price::BulkPrice,
                  Orb::Models::Price::ThresholdTotalAmountPrice,
                  Orb::Models::Price::TieredPackagePrice,
                  Orb::Models::Price::GroupedTieredPrice,
                  Orb::Models::Price::TieredWithMinimumPrice,
                  Orb::Models::Price::TieredPackageWithMinimumPrice,
                  Orb::Models::Price::PackageWithAllocationPrice,
                  Orb::Models::Price::UnitWithPercentPrice,
                  Orb::Models::Price::MatrixWithAllocationPrice,
                  Orb::Models::Price::TieredWithProrationPrice,
                  Orb::Models::Price::UnitWithProrationPrice,
                  Orb::Models::Price::GroupedAllocationPrice,
                  Orb::Models::Price::GroupedWithProratedMinimumPrice,
                  Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                  Orb::Models::Price::MatrixWithDisplayNamePrice,
                  Orb::Models::Price::BulkWithProrationPrice,
                  Orb::Models::Price::GroupedTieredPackagePrice,
                  Orb::Models::Price::MaxGroupTieredPackagePrice,
                  Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                  Orb::Models::Price::CumulativeGroupedBulkPrice
                )
              )
            )
        end
        def price=(_)
        end

        sig { returns(Float) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

        sig do
          returns(
            T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )
            ]
          )
        end
        def sub_line_items
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
                Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
              )
              ]
            )
        end
        def sub_line_items=(_)
        end

        sig { returns(String) }
        def subtotal
        end

        sig { params(_: String).returns(String) }
        def subtotal=(_)
        end

        sig { returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]) }
        def tax_amounts
        end

        sig do
          params(_: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount])
            .returns(T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount])
        end
        def tax_amounts=(_)
        end

        sig do
          params(
            id: String,
            adjusted_subtotal: String,
            adjustments: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
            )
            ],
            amount: String,
            credits_applied: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            end_date: Time,
            grouping: T.nilable(String),
            maximum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            partially_invoiced_amount: String,
            price: T.nilable(
              T.any(
                Orb::Models::Price::UnitPrice,
                Orb::Models::Price::PackagePrice,
                Orb::Models::Price::MatrixPrice,
                Orb::Models::Price::TieredPrice,
                Orb::Models::Price::TieredBpsPrice,
                Orb::Models::Price::BpsPrice,
                Orb::Models::Price::BulkBpsPrice,
                Orb::Models::Price::BulkPrice,
                Orb::Models::Price::ThresholdTotalAmountPrice,
                Orb::Models::Price::TieredPackagePrice,
                Orb::Models::Price::GroupedTieredPrice,
                Orb::Models::Price::TieredWithMinimumPrice,
                Orb::Models::Price::TieredPackageWithMinimumPrice,
                Orb::Models::Price::PackageWithAllocationPrice,
                Orb::Models::Price::UnitWithPercentPrice,
                Orb::Models::Price::MatrixWithAllocationPrice,
                Orb::Models::Price::TieredWithProrationPrice,
                Orb::Models::Price::UnitWithProrationPrice,
                Orb::Models::Price::GroupedAllocationPrice,
                Orb::Models::Price::GroupedWithProratedMinimumPrice,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                Orb::Models::Price::MatrixWithDisplayNamePrice,
                Orb::Models::Price::BulkWithProrationPrice,
                Orb::Models::Price::GroupedTieredPackagePrice,
                Orb::Models::Price::MaxGroupTieredPackagePrice,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              )
            ),
            quantity: Float,
            start_date: Time,
            sub_line_items: T::Array[
            T.any(
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
              Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
            )
            ],
            subtotal: String,
            tax_amounts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]
          )
            .void
        end
        def initialize(
          id:,
          adjusted_subtotal:,
          adjustments:,
          amount:,
          credits_applied:,
          discount:,
          end_date:,
          grouping:,
          maximum:,
          maximum_amount:,
          minimum:,
          minimum_amount:,
          name:,
          partially_invoiced_amount:,
          price:,
          quantity:,
          start_date:,
          sub_line_items:,
          subtotal:,
          tax_amounts:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                adjusted_subtotal: String,
                adjustments: T::Array[
                T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment
                )
                ],
                amount: String,
                credits_applied: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::Discount::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                end_date: Time,
                grouping: T.nilable(String),
                maximum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Maximum),
                maximum_amount: T.nilable(String),
                minimum: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Minimum),
                minimum_amount: T.nilable(String),
                name: String,
                partially_invoiced_amount: String,
                price: T.nilable(
                  T.any(
                    Orb::Models::Price::UnitPrice,
                    Orb::Models::Price::PackagePrice,
                    Orb::Models::Price::MatrixPrice,
                    Orb::Models::Price::TieredPrice,
                    Orb::Models::Price::TieredBpsPrice,
                    Orb::Models::Price::BpsPrice,
                    Orb::Models::Price::BulkBpsPrice,
                    Orb::Models::Price::BulkPrice,
                    Orb::Models::Price::ThresholdTotalAmountPrice,
                    Orb::Models::Price::TieredPackagePrice,
                    Orb::Models::Price::GroupedTieredPrice,
                    Orb::Models::Price::TieredWithMinimumPrice,
                    Orb::Models::Price::TieredPackageWithMinimumPrice,
                    Orb::Models::Price::PackageWithAllocationPrice,
                    Orb::Models::Price::UnitWithPercentPrice,
                    Orb::Models::Price::MatrixWithAllocationPrice,
                    Orb::Models::Price::TieredWithProrationPrice,
                    Orb::Models::Price::UnitWithProrationPrice,
                    Orb::Models::Price::GroupedAllocationPrice,
                    Orb::Models::Price::GroupedWithProratedMinimumPrice,
                    Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                    Orb::Models::Price::MatrixWithDisplayNamePrice,
                    Orb::Models::Price::BulkWithProrationPrice,
                    Orb::Models::Price::GroupedTieredPackagePrice,
                    Orb::Models::Price::MaxGroupTieredPackagePrice,
                    Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                    Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                    Orb::Models::Price::CumulativeGroupedBulkPrice
                  )
                ),
                quantity: Float,
                start_date: Time,
                sub_line_items: T::Array[
                T.any(
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem,
                  Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem
                )
                ],
                subtotal: String,
                tax_amounts: T::Array[Orb::Models::InvoiceFetchUpcomingResponse::LineItem::TaxAmount]
              }
            )
        end
        def to_hash
        end

        class Adjustment < Orb::Union
          abstract!

          class MonetaryUsageDiscountAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                reason: T.nilable(String),
                usage_discount: Float,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              id:,
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              reason:,
              usage_discount:,
              adjustment_type: :usage_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    reason: T.nilable(String),
                    usage_discount: Float
                  }
                )
            end
            def to_hash
            end
          end

          class MonetaryAmountDiscountAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(String) }
            def amount_discount
            end

            sig { params(_: String).returns(String) }
            def amount_discount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig do
              params(
                id: String,
                amount: String,
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              id:,
              amount:,
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level:,
              reason:,
              adjustment_type: :amount_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          class MonetaryPercentageDiscountAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                percentage_discount: Float,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              id:,
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              percentage_discount:,
              reason:,
              adjustment_type: :percentage_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    percentage_discount: Float,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          class MonetaryMinimumAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(String) }
            def minimum_amount
            end

            sig { params(_: String).returns(String) }
            def minimum_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                item_id: String,
                minimum_amount: String,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              id:,
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              item_id:,
              minimum_amount:,
              reason:,
              adjustment_type: :minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    item_id: String,
                    minimum_amount: String,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          class MonetaryMaximumAdjustment < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(String) }
            def maximum_amount
            end

            sig { params(_: String).returns(String) }
            def maximum_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig do
              params(
                id: String,
                amount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                maximum_amount: String,
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              id:,
              amount:,
              applies_to_price_ids:,
              is_invoice_level:,
              maximum_amount:,
              reason:,
              adjustment_type: :maximum
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean,
                    maximum_amount: String,
                    reason: T.nilable(String)
                  }
                )
            end
            def to_hash
            end
          end

          sig do
            override
              .returns(
                [[Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryUsageDiscountAdjustment], [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryAmountDiscountAdjustment], [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryPercentageDiscountAdjustment], [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMinimumAdjustment], [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::Adjustment::MonetaryMaximumAdjustment]]
              )
          end
          private_class_method def self.variants
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class SubLineItem < Orb::Union
          abstract!

          class MatrixSubLineItem < Orb::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping)
              )
            end
            def grouping
            end

            sig do
              params(
                _: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping)
              )
                .returns(
                  T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping)
                )
            end
            def grouping=(_)
            end

            sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig) }
            def matrix_config
            end

            sig do
              params(
                _: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig
              )
                .returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig)
            end
            def matrix_config=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping),
                matrix_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig,
                name: String,
                quantity: Float,
                type: Symbol
              )
                .void
            end
            def initialize(amount:, grouping:, matrix_config:, name:, quantity:, type: :matrix)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::Grouping),
                    matrix_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem::MatrixConfig,
                    name: String,
                    quantity: Float,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Grouping < Orb::BaseModel
              sig { returns(String) }
              def key
              end

              sig { params(_: String).returns(String) }
              def key=(_)
              end

              sig { returns(T.nilable(String)) }
              def value
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def value=(_)
              end

              sig { params(key: String, value: T.nilable(String)).void }
              def initialize(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end

            class MatrixConfig < Orb::BaseModel
              sig { returns(T::Array[T.nilable(String)]) }
              def dimension_values
              end

              sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
              def dimension_values=(_)
              end

              sig { params(dimension_values: T::Array[T.nilable(String)]).void }
              def initialize(dimension_values:)
              end

              sig { override.returns({dimension_values: T::Array[T.nilable(String)]}) }
              def to_hash
              end
            end
          end

          class TierSubLineItem < Orb::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping)
              )
            end
            def grouping
            end

            sig do
              params(
                _: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping)
              )
                .returns(
                  T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping)
                )
            end
            def grouping=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig) }
            def tier_config
            end

            sig do
              params(_: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig)
                .returns(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig)
            end
            def tier_config=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping),
                name: String,
                quantity: Float,
                tier_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig,
                type: Symbol
              )
                .void
            end
            def initialize(amount:, grouping:, name:, quantity:, tier_config:, type: :tier)
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::Grouping),
                    name: String,
                    quantity: Float,
                    tier_config: Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem::TierConfig,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Grouping < Orb::BaseModel
              sig { returns(String) }
              def key
              end

              sig { params(_: String).returns(String) }
              def key=(_)
              end

              sig { returns(T.nilable(String)) }
              def value
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def value=(_)
              end

              sig { params(key: String, value: T.nilable(String)).void }
              def initialize(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end

            class TierConfig < Orb::BaseModel
              sig { returns(Float) }
              def first_unit
              end

              sig { params(_: Float).returns(Float) }
              def first_unit=(_)
              end

              sig { returns(T.nilable(Float)) }
              def last_unit
              end

              sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
              def last_unit=(_)
              end

              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

              sig { params(first_unit: Float, last_unit: T.nilable(Float), unit_amount: String).void }
              def initialize(first_unit:, last_unit:, unit_amount:)
              end

              sig { override.returns({first_unit: Float, last_unit: T.nilable(Float), unit_amount: String}) }
              def to_hash
              end
            end
          end

          class OtherSubLineItem < Orb::BaseModel
            sig { returns(String) }
            def amount
            end

            sig { params(_: String).returns(String) }
            def amount=(_)
            end

            sig do
              returns(
                T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping)
              )
            end
            def grouping
            end

            sig do
              params(
                _: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping)
              )
                .returns(
                  T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping)
                )
            end
            def grouping=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Float) }
            def quantity
            end

            sig { params(_: Float).returns(Float) }
            def quantity=(_)
            end

            sig { returns(Symbol) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig do
              params(
                amount: String,
                grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping),
                name: String,
                quantity: Float,
                type: Symbol
              )
                .void
            end
            def initialize(amount:, grouping:, name:, quantity:, type: :"'null'")
            end

            sig do
              override
                .returns(
                  {
                    amount: String,
                    grouping: T.nilable(Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem::Grouping),
                    name: String,
                    quantity: Float,
                    type: Symbol
                  }
                )
            end
            def to_hash
            end

            class Grouping < Orb::BaseModel
              sig { returns(String) }
              def key
              end

              sig { params(_: String).returns(String) }
              def key=(_)
              end

              sig { returns(T.nilable(String)) }
              def value
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def value=(_)
              end

              sig { params(key: String, value: T.nilable(String)).void }
              def initialize(key:, value:)
              end

              sig { override.returns({key: String, value: T.nilable(String)}) }
              def to_hash
              end
            end
          end

          sig do
            override
              .returns(
                [[Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::MatrixSubLineItem], [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::TierSubLineItem], [Symbol, Orb::Models::InvoiceFetchUpcomingResponse::LineItem::SubLineItem::OtherSubLineItem]]
              )
          end
          private_class_method def self.variants
          end
        end

        class TaxAmount < Orb::BaseModel
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(String) }
          def tax_rate_description
          end

          sig { params(_: String).returns(String) }
          def tax_rate_description=(_)
          end

          sig { returns(T.nilable(String)) }
          def tax_rate_percentage
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def tax_rate_percentage=(_)
          end

          sig do
            params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String)).void
          end
          def initialize(amount:, tax_rate_description:, tax_rate_percentage:)
          end

          sig do
            override.returns(
              {
                amount: String,
                tax_rate_description: String,
                tax_rate_percentage: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      class Maximum < Orb::BaseModel
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

        sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
        def initialize(applies_to_price_ids:, maximum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
        def to_hash
        end
      end

      class Minimum < Orb::BaseModel
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
        def initialize(applies_to_price_ids:, minimum_amount:)
        end

        sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
        def to_hash
        end
      end

      class PaymentAttempt < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def payment_provider
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def payment_provider=(_)
        end

        sig { returns(T.nilable(String)) }
        def payment_provider_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_provider_id=(_)
        end

        sig { returns(T::Boolean) }
        def succeeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def succeeded=(_)
        end

        sig do
          params(
            id: String,
            amount: String,
            created_at: Time,
            payment_provider: T.nilable(Symbol),
            payment_provider_id: T.nilable(String),
            succeeded: T::Boolean
          )
            .void
        end
        def initialize(id:, amount:, created_at:, payment_provider:, payment_provider_id:, succeeded:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: String,
                created_at: Time,
                payment_provider: T.nilable(Symbol),
                payment_provider_id: T.nilable(String),
                succeeded: T::Boolean
              }
            )
        end
        def to_hash
        end

        class PaymentProvider < Orb::Enum
          abstract!

          STRIPE = T.let(:stripe, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class ShippingAddress < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        def city
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_)
        end

        sig { returns(T.nilable(String)) }
        def country
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_)
        end

        sig { returns(T.nilable(String)) }
        def line1
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_)
        end

        sig { returns(T.nilable(String)) }
        def line2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_)
        end

        sig { returns(T.nilable(String)) }
        def postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def state
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_)
        end

        sig do
          params(
            city: T.nilable(String),
            country: T.nilable(String),
            line1: T.nilable(String),
            line2: T.nilable(String),
            postal_code: T.nilable(String),
            state: T.nilable(String)
          )
            .void
        end
        def initialize(city:, country:, line1:, line2:, postal_code:, state:)
        end

        sig do
          override
            .returns(
              {
                city: T.nilable(String),
                country: T.nilable(String),
                line1: T.nilable(String),
                line2: T.nilable(String),
                postal_code: T.nilable(String),
                state: T.nilable(String)
              }
            )
        end
        def to_hash
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

      class Subscription < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end
    end
  end
end
