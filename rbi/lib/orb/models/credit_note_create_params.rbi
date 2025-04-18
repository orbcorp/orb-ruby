# typed: strong

module Orb
  module Models
    class CreditNoteCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      sig { returns(T::Array[Orb::Models::CreditNoteCreateParams::LineItem]) }
      attr_accessor :line_items

      # An optional memo to attach to the credit note.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # An optional reason for the credit note.
      sig { returns(T.nilable(Orb::Models::CreditNoteCreateParams::Reason::OrSymbol)) }
      attr_accessor :reason

      sig do
        params(
          line_items: T::Array[T.any(Orb::Models::CreditNoteCreateParams::LineItem, Orb::Internal::AnyHash)],
          memo: T.nilable(String),
          reason: T.nilable(Orb::Models::CreditNoteCreateParams::Reason::OrSymbol),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(line_items:, memo: nil, reason: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              line_items: T::Array[Orb::Models::CreditNoteCreateParams::LineItem],
              memo: T.nilable(String),
              reason: T.nilable(Orb::Models::CreditNoteCreateParams::Reason::OrSymbol),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash; end

      class LineItem < Orb::Internal::Type::BaseModel
        # The total amount in the invoice's currency to credit this line item.
        sig { returns(String) }
        attr_accessor :amount

        # The ID of the line item to credit.
        sig { returns(String) }
        attr_accessor :invoice_line_item_id

        sig { params(amount: String, invoice_line_item_id: String).returns(T.attached_class) }
        def self.new(amount:, invoice_line_item_id:); end

        sig { override.returns({amount: String, invoice_line_item_id: String}) }
        def to_hash; end
      end

      # An optional reason for the credit note.
      module Reason
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::CreditNoteCreateParams::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DUPLICATE = T.let(:duplicate, Orb::Models::CreditNoteCreateParams::Reason::TaggedSymbol)
        FRAUDULENT = T.let(:fraudulent, Orb::Models::CreditNoteCreateParams::Reason::TaggedSymbol)
        ORDER_CHANGE = T.let(:order_change, Orb::Models::CreditNoteCreateParams::Reason::TaggedSymbol)
        PRODUCT_UNSATISFACTORY =
          T.let(:product_unsatisfactory, Orb::Models::CreditNoteCreateParams::Reason::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::CreditNoteCreateParams::Reason::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
