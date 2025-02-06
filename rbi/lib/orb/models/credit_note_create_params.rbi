# typed: strong

module Orb
  module Models
    class CreditNoteCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

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
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(line_items:, memo: nil, reason: nil, request_options: {}); end

      sig do
        override.returns(
          {
            line_items: T::Array[Orb::Models::CreditNoteCreateParams::LineItem],
            memo: T.nilable(String),
            reason: T.nilable(Symbol),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end

      class LineItem < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :invoice_line_item_id

        sig { params(amount: String, invoice_line_item_id: String).void }
        def initialize(amount:, invoice_line_item_id:); end

        sig { override.returns({amount: String, invoice_line_item_id: String}) }
        def to_hash; end
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
