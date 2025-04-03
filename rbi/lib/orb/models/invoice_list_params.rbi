# typed: strong

module Orb
  module Models
    class InvoiceListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :amount

      sig { returns(T.nilable(String)) }
      attr_accessor :amount_gt

      sig { returns(T.nilable(String)) }
      attr_accessor :amount_lt

      # Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      sig { returns(T.nilable(Orb::Models::InvoiceListParams::DateType::OrSymbol)) }
      attr_accessor :date_type

      sig { returns(T.nilable(Date)) }
      attr_accessor :due_date

      # Filters invoices by their due dates within a specific time range in the past.
      #   Specify the range as a number followed by 'd' (days) or 'm' (months). For
      #   example, '7d' filters invoices due in the last 7 days, and '2m' filters those
      #   due in the last 2 months.
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

      # The number of items to fetch. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(T::Array[Orb::Models::InvoiceListParams::Status::OrSymbol])) }
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
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
            {
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
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      module DateType
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::InvoiceListParams::DateType) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::InvoiceListParams::DateType::TaggedSymbol) }

        DUE_DATE = T.let(:due_date, Orb::Models::InvoiceListParams::DateType::TaggedSymbol)
        INVOICE_DATE = T.let(:invoice_date, Orb::Models::InvoiceListParams::DateType::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::InvoiceListParams::DateType::TaggedSymbol]) }
        def self.values
        end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::InvoiceListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::InvoiceListParams::Status::TaggedSymbol) }

        DRAFT = T.let(:draft, Orb::Models::InvoiceListParams::Status::TaggedSymbol)
        ISSUED = T.let(:issued, Orb::Models::InvoiceListParams::Status::TaggedSymbol)
        PAID = T.let(:paid, Orb::Models::InvoiceListParams::Status::TaggedSymbol)
        SYNCED = T.let(:synced, Orb::Models::InvoiceListParams::Status::TaggedSymbol)
        VOID = T.let(:void, Orb::Models::InvoiceListParams::Status::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::InvoiceListParams::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
