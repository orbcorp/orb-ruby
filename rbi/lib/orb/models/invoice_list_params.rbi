# typed: strong

module Orb
  module Models
    class InvoiceListParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :amount

      sig { returns(T.nilable(String)) }
      attr_accessor :amount_gt

      sig { returns(T.nilable(String)) }
      attr_accessor :amount_lt

      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :date_type

      sig { returns(T.nilable(Date)) }
      attr_accessor :due_date

      sig { returns(T.nilable(String)) }
      attr_accessor :due_date_window

      sig { returns(T.nilable(Date)) }
      attr_accessor :due_date_gt

      sig { returns(T.nilable(Date)) }
      attr_accessor :due_date_lt

      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :invoice_date_gt

      sig { returns(T.nilable(Time)) }
      attr_accessor :invoice_date_gte

      sig { returns(T.nilable(Time)) }
      attr_accessor :invoice_date_lt

      sig { returns(T.nilable(Time)) }
      attr_accessor :invoice_date_lte

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_recurring

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(T::Array[Symbol])) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

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
