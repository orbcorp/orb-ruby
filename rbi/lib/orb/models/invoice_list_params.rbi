# typed: strong

module Orb
  module Models
    class InvoiceListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      def amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def amount_gt
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def amount_gt=(_)
      end

      sig { returns(T.nilable(String)) }
      def amount_lt
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def amount_lt=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def date_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def date_type=(_)
      end

      sig { returns(T.nilable(Date)) }
      def due_date
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def due_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def due_date_window
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def due_date_window=(_)
      end

      sig { returns(T.nilable(Date)) }
      def due_date_gt
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def due_date_gt=(_)
      end

      sig { returns(T.nilable(Date)) }
      def due_date_lt
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def due_date_lt=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def invoice_date_gt
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def invoice_date_gt=(_)
      end

      sig { returns(T.nilable(Time)) }
      def invoice_date_gte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def invoice_date_gte=(_)
      end

      sig { returns(T.nilable(Time)) }
      def invoice_date_lt
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def invoice_date_lt=(_)
      end

      sig { returns(T.nilable(Time)) }
      def invoice_date_lte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def invoice_date_lte=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def is_recurring
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def is_recurring=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(T::Array[Symbol])) }
      def status
      end

      sig { params(_: T.nilable(T::Array[Symbol])).returns(T.nilable(T::Array[Symbol])) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def subscription_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def subscription_id=(_)
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
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
        override.returns(
          {
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
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class DateType < Orb::Enum
        abstract!

        DUE_DATE = T.let(:due_date, T.nilable(Symbol))
        INVOICE_DATE = T.let(:invoice_date, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Orb::Enum
        abstract!

        DRAFT = :draft
        ISSUED = :issued
        PAID = :paid
        SYNCED = :synced
        VOID = :void

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
