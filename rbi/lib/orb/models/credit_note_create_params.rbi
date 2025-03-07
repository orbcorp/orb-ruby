# typed: strong

module Orb
  module Models
    class CreditNoteCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::CreditNoteCreateParams::LineItem]) }
      def line_items
      end

      sig do
        params(_: T::Array[Orb::Models::CreditNoteCreateParams::LineItem])
          .returns(T::Array[Orb::Models::CreditNoteCreateParams::LineItem])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def reason
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def reason=(_)
      end

      sig do
        params(
          line_items: T::Array[Orb::Models::CreditNoteCreateParams::LineItem],
          memo: T.nilable(String),
          reason: T.nilable(Symbol),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(line_items:, memo: nil, reason: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              line_items: T::Array[Orb::Models::CreditNoteCreateParams::LineItem],
              memo: T.nilable(String),
              reason: T.nilable(Symbol),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class LineItem < Orb::BaseModel
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        sig { returns(String) }
        def invoice_line_item_id
        end

        sig { params(_: String).returns(String) }
        def invoice_line_item_id=(_)
        end

        sig { params(amount: String, invoice_line_item_id: String).returns(T.attached_class) }
        def self.new(amount:, invoice_line_item_id:)
        end

        sig { override.returns({amount: String, invoice_line_item_id: String}) }
        def to_hash
        end
      end

      class Reason < Orb::Enum
        abstract!

        DUPLICATE = T.let(:duplicate, T.nilable(Symbol))
        FRAUDULENT = T.let(:fraudulent, T.nilable(Symbol))
        ORDER_CHANGE = T.let(:order_change, T.nilable(Symbol))
        PRODUCT_UNSATISFACTORY = T.let(:product_unsatisfactory, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
