# typed: strong

module Orb
  module Models
    class CreditNote < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def credit_note_number
      end

      sig { params(_: String).returns(String) }
      def credit_note_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def credit_note_pdf
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def credit_note_pdf=(_)
      end

      sig { returns(Orb::Models::CustomerMinifiedModel) }
      def customer
      end

      sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
      def customer=(_)
      end

      sig { returns(String) }
      def invoice_id
      end

      sig { params(_: String).returns(String) }
      def invoice_id=(_)
      end

      sig { returns(T::Array[Orb::Models::CreditNote::LineItem]) }
      def line_items
      end

      sig do
        params(_: T::Array[Orb::Models::CreditNote::LineItem]).returns(T::Array[Orb::Models::CreditNote::LineItem])
      end
      def line_items=(_)
      end

      sig { returns(T.nilable(Orb::Models::CreditNoteDiscountModel)) }
      def maximum_amount_adjustment
      end

      sig do
        params(_: T.nilable(Orb::Models::CreditNoteDiscountModel))
          .returns(T.nilable(Orb::Models::CreditNoteDiscountModel))
      end
      def maximum_amount_adjustment=(_)
      end

      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
      end

      sig { returns(T.nilable(String)) }
      def minimum_amount_refunded
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount_refunded=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def reason
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def reason=(_)
      end

      sig { returns(String) }
      def subtotal
      end

      sig { params(_: String).returns(String) }
      def subtotal=(_)
      end

      sig { returns(String) }
      def total
      end

      sig { params(_: String).returns(String) }
      def total=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(Time)) }
      def voided_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def voided_at=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::CreditNoteDiscountModel])) }
      def discounts
      end

      sig do
        params(_: T::Array[Orb::Models::CreditNoteDiscountModel])
          .returns(T::Array[Orb::Models::CreditNoteDiscountModel])
      end
      def discounts=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          credit_note_number: String,
          credit_note_pdf: T.nilable(String),
          customer: Orb::Models::CustomerMinifiedModel,
          invoice_id: String,
          line_items: T::Array[Orb::Models::CreditNote::LineItem],
          maximum_amount_adjustment: T.nilable(Orb::Models::CreditNoteDiscountModel),
          memo: T.nilable(String),
          minimum_amount_refunded: T.nilable(String),
          reason: T.nilable(Symbol),
          subtotal: String,
          total: String,
          type: Symbol,
          voided_at: T.nilable(Time),
          discounts: T::Array[Orb::Models::CreditNoteDiscountModel]
        )
          .void
      end
      def initialize(
        id:,
        created_at:,
        credit_note_number:,
        credit_note_pdf:,
        customer:,
        invoice_id:,
        line_items:,
        maximum_amount_adjustment:,
        memo:,
        minimum_amount_refunded:,
        reason:,
        subtotal:,
        total:,
        type:,
        voided_at:,
        discounts: nil
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              credit_note_number: String,
              credit_note_pdf: T.nilable(String),
              customer: Orb::Models::CustomerMinifiedModel,
              invoice_id: String,
              line_items: T::Array[Orb::Models::CreditNote::LineItem],
              maximum_amount_adjustment: T.nilable(Orb::Models::CreditNoteDiscountModel),
              memo: T.nilable(String),
              minimum_amount_refunded: T.nilable(String),
              reason: T.nilable(Symbol),
              subtotal: String,
              total: String,
              type: Symbol,
              voided_at: T.nilable(Time),
              discounts: T::Array[Orb::Models::CreditNoteDiscountModel]
            }
          )
      end
      def to_hash
      end

      class LineItem < Orb::BaseModel
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

        sig { returns(String) }
        def item_id
        end

        sig { params(_: String).returns(String) }
        def item_id=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(T.nilable(Float)) }
        def quantity
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def quantity=(_)
        end

        sig { returns(String) }
        def subtotal
        end

        sig { params(_: String).returns(String) }
        def subtotal=(_)
        end

        sig { returns(T::Array[Orb::Models::TaxAmountModel]) }
        def tax_amounts
        end

        sig { params(_: T::Array[Orb::Models::TaxAmountModel]).returns(T::Array[Orb::Models::TaxAmountModel]) }
        def tax_amounts=(_)
        end

        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::LineItem::Discount])) }
        def discounts
        end

        sig do
          params(_: T::Array[Orb::Models::CreditNote::LineItem::Discount])
            .returns(T::Array[Orb::Models::CreditNote::LineItem::Discount])
        end
        def discounts=(_)
        end

        sig do
          params(
            id: String,
            amount: String,
            item_id: String,
            name: String,
            quantity: T.nilable(Float),
            subtotal: String,
            tax_amounts: T::Array[Orb::Models::TaxAmountModel],
            discounts: T::Array[Orb::Models::CreditNote::LineItem::Discount]
          )
            .void
        end
        def initialize(id:, amount:, item_id:, name:, quantity:, subtotal:, tax_amounts:, discounts: nil)
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: String,
                item_id: String,
                name: String,
                quantity: T.nilable(Float),
                subtotal: String,
                tax_amounts: T::Array[Orb::Models::TaxAmountModel],
                discounts: T::Array[Orb::Models::CreditNote::LineItem::Discount]
              }
            )
        end
        def to_hash
        end

        class Discount < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def amount_applied
          end

          sig { params(_: String).returns(String) }
          def amount_applied=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

          sig { returns(T.nilable(String)) }
          def amount_discount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def amount_discount=(_)
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
              amount_applied: String,
              applies_to_price_ids: T::Array[String],
              discount_type: Symbol,
              percentage_discount: Float,
              amount_discount: T.nilable(String),
              reason: T.nilable(String)
            )
              .void
          end
          def initialize(
            id:,
            amount_applied:,
            applies_to_price_ids:,
            discount_type:,
            percentage_discount:,
            amount_discount: nil,
            reason: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount_applied: String,
                  applies_to_price_ids: T::Array[String],
                  discount_type: Symbol,
                  percentage_discount: Float,
                  amount_discount: T.nilable(String),
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class DiscountType < Orb::Enum
            abstract!

            PERCENTAGE = :percentage
            AMOUNT = :amount

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class Reason < Orb::Enum
        abstract!

        DUPLICATE = T.let(:Duplicate, T.nilable(Symbol))
        FRAUDULENT = T.let(:Fraudulent, T.nilable(Symbol))
        ORDER_CHANGE = T.let(:"Order change", T.nilable(Symbol))
        PRODUCT_UNSATISFACTORY = T.let(:"Product unsatisfactory", T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Orb::Enum
        abstract!

        REFUND = :refund
        ADJUSTMENT = :adjustment

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
