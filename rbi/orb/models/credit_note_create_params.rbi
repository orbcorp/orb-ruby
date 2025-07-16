# typed: strong

module Orb
  module Models
    class CreditNoteCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::CreditNoteCreateParams, Orb::Internal::AnyHash)
        end

      sig { returns(T::Array[Orb::CreditNoteCreateParams::LineItem]) }
      attr_accessor :line_items

      # An optional reason for the credit note.
      sig { returns(Orb::CreditNoteCreateParams::Reason::OrSymbol) }
      attr_accessor :reason

      # A date string to specify the global credit note service period end date in the
      # customer's timezone. This will be applied to all line items that don't have
      # their own individual service periods specified. If not provided, line items will
      # use their original invoice line item service periods. This date is inclusive.
      sig { returns(T.nilable(Date)) }
      attr_accessor :end_date

      # An optional memo to attach to the credit note.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # A date string to specify the global credit note service period start date in the
      # customer's timezone. This will be applied to all line items that don't have
      # their own individual service periods specified. If not provided, line items will
      # use their original invoice line item service periods. This date is inclusive.
      sig { returns(T.nilable(Date)) }
      attr_accessor :start_date

      sig do
        params(
          line_items: T::Array[Orb::CreditNoteCreateParams::LineItem::OrHash],
          reason: Orb::CreditNoteCreateParams::Reason::OrSymbol,
          end_date: T.nilable(Date),
          memo: T.nilable(String),
          start_date: T.nilable(Date),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        line_items:,
        # An optional reason for the credit note.
        reason:,
        # A date string to specify the global credit note service period end date in the
        # customer's timezone. This will be applied to all line items that don't have
        # their own individual service periods specified. If not provided, line items will
        # use their original invoice line item service periods. This date is inclusive.
        end_date: nil,
        # An optional memo to attach to the credit note.
        memo: nil,
        # A date string to specify the global credit note service period start date in the
        # customer's timezone. This will be applied to all line items that don't have
        # their own individual service periods specified. If not provided, line items will
        # use their original invoice line item service periods. This date is inclusive.
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            line_items: T::Array[Orb::CreditNoteCreateParams::LineItem],
            reason: Orb::CreditNoteCreateParams::Reason::OrSymbol,
            end_date: T.nilable(Date),
            memo: T.nilable(String),
            start_date: T.nilable(Date),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LineItem < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::CreditNoteCreateParams::LineItem, Orb::Internal::AnyHash)
          end

        # The total amount in the invoice's currency to credit this line item.
        sig { returns(String) }
        attr_accessor :amount

        # The ID of the line item to credit.
        sig { returns(String) }
        attr_accessor :invoice_line_item_id

        # A date string to specify this line item's credit note service period end date in
        # the customer's timezone. If provided, this will be used for this specific line
        # item. If not provided, will use the global end_date if available, otherwise
        # defaults to the original invoice line item's end date. This date is inclusive.
        sig { returns(T.nilable(Date)) }
        attr_accessor :end_date

        # A date string to specify this line item's credit note service period start date
        # in the customer's timezone. If provided, this will be used for this specific
        # line item. If not provided, will use the global start_date if available,
        # otherwise defaults to the original invoice line item's start date. This date is
        # inclusive.
        sig { returns(T.nilable(Date)) }
        attr_accessor :start_date

        sig do
          params(
            amount: String,
            invoice_line_item_id: String,
            end_date: T.nilable(Date),
            start_date: T.nilable(Date)
          ).returns(T.attached_class)
        end
        def self.new(
          # The total amount in the invoice's currency to credit this line item.
          amount:,
          # The ID of the line item to credit.
          invoice_line_item_id:,
          # A date string to specify this line item's credit note service period end date in
          # the customer's timezone. If provided, this will be used for this specific line
          # item. If not provided, will use the global end_date if available, otherwise
          # defaults to the original invoice line item's end date. This date is inclusive.
          end_date: nil,
          # A date string to specify this line item's credit note service period start date
          # in the customer's timezone. If provided, this will be used for this specific
          # line item. If not provided, will use the global start_date if available,
          # otherwise defaults to the original invoice line item's start date. This date is
          # inclusive.
          start_date: nil
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              invoice_line_item_id: String,
              end_date: T.nilable(Date),
              start_date: T.nilable(Date)
            }
          )
        end
        def to_hash
        end
      end

      # An optional reason for the credit note.
      module Reason
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::CreditNoteCreateParams::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DUPLICATE =
          T.let(:duplicate, Orb::CreditNoteCreateParams::Reason::TaggedSymbol)
        FRAUDULENT =
          T.let(:fraudulent, Orb::CreditNoteCreateParams::Reason::TaggedSymbol)
        ORDER_CHANGE =
          T.let(
            :order_change,
            Orb::CreditNoteCreateParams::Reason::TaggedSymbol
          )
        PRODUCT_UNSATISFACTORY =
          T.let(
            :product_unsatisfactory,
            Orb::CreditNoteCreateParams::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::CreditNoteCreateParams::Reason::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
