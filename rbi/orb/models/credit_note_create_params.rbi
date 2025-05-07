# typed: strong

module Orb
  module Models
    class CreditNoteCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      sig { returns(T::Array[Orb::CreditNoteCreateParams::LineItem]) }
      attr_accessor :line_items

      # An optional memo to attach to the credit note.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # An optional reason for the credit note.
      sig { returns(T.nilable(Orb::CreditNoteCreateParams::Reason::OrSymbol)) }
      attr_accessor :reason

      sig do
        params(
          line_items: T::Array[Orb::CreditNoteCreateParams::LineItem::OrHash],
          memo: T.nilable(String),
          reason: T.nilable(Orb::CreditNoteCreateParams::Reason::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        line_items:,
        # An optional memo to attach to the credit note.
        memo: nil,
        # An optional reason for the credit note.
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            line_items: T::Array[Orb::CreditNoteCreateParams::LineItem],
            memo: T.nilable(String),
            reason: T.nilable(Orb::CreditNoteCreateParams::Reason::OrSymbol),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class LineItem < Orb::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

        # The total amount in the invoice's currency to credit this line item.
        sig { returns(String) }
        attr_accessor :amount

        # The ID of the line item to credit.
        sig { returns(String) }
        attr_accessor :invoice_line_item_id

        sig do
          params(amount: String, invoice_line_item_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The total amount in the invoice's currency to credit this line item.
          amount:,
          # The ID of the line item to credit.
          invoice_line_item_id:
        )
        end

        sig do
          override.returns({ amount: String, invoice_line_item_id: String })
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
