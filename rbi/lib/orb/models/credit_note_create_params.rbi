# typed: strong

module Orb
  module Models
    class CreditNoteCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            line_items: T::Array[Orb::Models::CreditNoteCreateParams::LineItem],
            memo: T.nilable(String),
            reason: T.nilable(Symbol)
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(T::Array[Orb::Models::CreditNoteCreateParams::LineItem]) }
      attr_accessor :line_items

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :reason

      sig do
        params(
          line_items: T::Array[Orb::Models::CreditNoteCreateParams::LineItem],
          memo: T.nilable(String),
          reason: T.nilable(Symbol),
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(line_items:, memo: nil, reason: nil, request_options: {}); end

      sig { returns(Orb::Models::CreditNoteCreateParams::Shape) }
      def to_h; end

      class LineItem < Orb::BaseModel
        Shape = T.type_alias { {amount: String, invoice_line_item_id: String} }

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :invoice_line_item_id

        sig { params(amount: String, invoice_line_item_id: String).void }
        def initialize(amount:, invoice_line_item_id:); end

        sig { returns(Orb::Models::CreditNoteCreateParams::LineItem::Shape) }
        def to_h; end
      end

      class Reason < Orb::Enum
        abstract!

        DUPLICATE = T.let(:duplicate, T.nilable(Symbol))
        FRAUDULENT = T.let(:fraudulent, T.nilable(Symbol))
        ORDER_CHANGE = T.let(:order_change, T.nilable(Symbol))
        PRODUCT_UNSATISFACTORY = T.let(:product_unsatisfactory, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
