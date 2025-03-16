# typed: strong

module Orb
  module Models
    class CreditNote < Orb::BaseModel
      # The Orb id of this credit note.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The unique identifier for credit notes.
      sig { returns(String) }
      def credit_note_number
      end

      sig { params(_: String).returns(String) }
      def credit_note_number=(_)
      end

      # A URL to a PDF of the credit note.
      sig { returns(T.nilable(String)) }
      def credit_note_pdf
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def credit_note_pdf=(_)
      end

      sig { returns(Orb::Models::CreditNote::Customer) }
      def customer
      end

      sig { params(_: Orb::Models::CreditNote::Customer).returns(Orb::Models::CreditNote::Customer) }
      def customer=(_)
      end

      # The id of the invoice resource that this credit note is applied to.
      sig { returns(String) }
      def invoice_id
      end

      sig { params(_: String).returns(String) }
      def invoice_id=(_)
      end

      # All of the line items associated with this credit note.
      sig { returns(T::Array[Orb::Models::CreditNote::LineItem]) }
      def line_items
      end

      sig do
        params(_: T::Array[Orb::Models::CreditNote::LineItem]).returns(T::Array[Orb::Models::CreditNote::LineItem])
      end
      def line_items=(_)
      end

      # The maximum amount applied on the original invoice
      sig { returns(T.nilable(Orb::Models::CreditNote::MaximumAmountAdjustment)) }
      def maximum_amount_adjustment
      end

      sig do
        params(_: T.nilable(Orb::Models::CreditNote::MaximumAmountAdjustment))
          .returns(T.nilable(Orb::Models::CreditNote::MaximumAmountAdjustment))
      end
      def maximum_amount_adjustment=(_)
      end

      # An optional memo supplied on the credit note.
      sig { returns(T.nilable(String)) }
      def memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def memo=(_)
      end

      # Any credited amount from the applied minimum on the invoice.
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

      # The total prior to any creditable invoice-level discounts or minimums.
      sig { returns(String) }
      def subtotal
      end

      sig { params(_: String).returns(String) }
      def subtotal=(_)
      end

      # The total including creditable invoice-level discounts or minimums, and tax.
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

      # The time at which the credit note was voided in Orb, if applicable.
      sig { returns(T.nilable(Time)) }
      def voided_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def voided_at=(_)
      end

      # Any discounts applied on the original invoice.
      sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::Discount])) }
      def discounts
      end

      sig do
        params(_: T::Array[Orb::Models::CreditNote::Discount]).returns(T::Array[Orb::Models::CreditNote::Discount])
      end
      def discounts=(_)
      end

      # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      #   been applied to a particular invoice.
      sig do
        params(
          id: String,
          created_at: Time,
          credit_note_number: String,
          credit_note_pdf: T.nilable(String),
          customer: Orb::Models::CreditNote::Customer,
          invoice_id: String,
          line_items: T::Array[Orb::Models::CreditNote::LineItem],
          maximum_amount_adjustment: T.nilable(Orb::Models::CreditNote::MaximumAmountAdjustment),
          memo: T.nilable(String),
          minimum_amount_refunded: T.nilable(String),
          reason: T.nilable(Symbol),
          subtotal: String,
          total: String,
          type: Symbol,
          voided_at: T.nilable(Time),
          discounts: T::Array[Orb::Models::CreditNote::Discount]
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              customer: Orb::Models::CreditNote::Customer,
              invoice_id: String,
              line_items: T::Array[Orb::Models::CreditNote::LineItem],
              maximum_amount_adjustment: T.nilable(Orb::Models::CreditNote::MaximumAmountAdjustment),
              memo: T.nilable(String),
              minimum_amount_refunded: T.nilable(String),
              reason: T.nilable(Symbol),
              subtotal: String,
              total: String,
              type: Symbol,
              voided_at: T.nilable(Time),
              discounts: T::Array[Orb::Models::CreditNote::Discount]
            }
          )
      end
      def to_hash
      end

      class Customer < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

        sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(id:, external_customer_id:)
        end

        sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class LineItem < Orb::BaseModel
        # The Orb id of this resource.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The amount of the line item, including any line item minimums and discounts.
        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        # The id of the item associated with this line item.
        sig { returns(String) }
        def item_id
        end

        sig { params(_: String).returns(String) }
        def item_id=(_)
        end

        # The name of the corresponding invoice line item.
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        # An optional quantity credited.
        sig { returns(T.nilable(Float)) }
        def quantity
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def quantity=(_)
        end

        # The amount of the line item, excluding any line item minimums and discounts.
        sig { returns(String) }
        def subtotal
        end

        sig { params(_: String).returns(String) }
        def subtotal=(_)
        end

        # Any tax amounts applied onto the line item.
        sig { returns(T::Array[Orb::Models::CreditNote::LineItem::TaxAmount]) }
        def tax_amounts
        end

        sig do
          params(_: T::Array[Orb::Models::CreditNote::LineItem::TaxAmount])
            .returns(T::Array[Orb::Models::CreditNote::LineItem::TaxAmount])
        end
        def tax_amounts=(_)
        end

        # Any line item discounts from the invoice's line item.
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
            tax_amounts: T::Array[Orb::Models::CreditNote::LineItem::TaxAmount],
            discounts: T::Array[Orb::Models::CreditNote::LineItem::Discount]
          )
            .returns(T.attached_class)
        end
        def self.new(id:, amount:, item_id:, name:, quantity:, subtotal:, tax_amounts:, discounts: nil)
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
                tax_amounts: T::Array[Orb::Models::CreditNote::LineItem::TaxAmount],
                discounts: T::Array[Orb::Models::CreditNote::LineItem::Discount]
              }
            )
        end
        def to_hash
        end

        class TaxAmount < Orb::BaseModel
          # The amount of additional tax incurred by this tax rate.
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          # The human-readable description of the applied tax rate.
          sig { returns(String) }
          def tax_rate_description
          end

          sig { params(_: String).returns(String) }
          def tax_rate_description=(_)
          end

          # The tax rate percentage, out of 100.
          sig { returns(T.nilable(String)) }
          def tax_rate_percentage
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def tax_rate_percentage=(_)
          end

          sig do
            params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String))
              .returns(T.attached_class)
          end
          def self.new(amount:, tax_rate_description:, tax_rate_percentage:)
          end

          sig do
            override.returns(
              {
                amount: String,
                tax_rate_description: String,
                tax_rate_percentage: T.nilable(String)
              }
            )
          end
          def to_hash
          end
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
              .returns(T.attached_class)
          end
          def self.new(
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

            Value = type_template(:out) { {fixed: Symbol} }

            PERCENTAGE = :percentage
            AMOUNT = :amount
          end
        end
      end

      class MaximumAmountAdjustment < Orb::BaseModel
        sig { returns(String) }
        def amount_applied
        end

        sig { params(_: String).returns(String) }
        def amount_applied=(_)
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

        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice])) }
        def applies_to_prices
        end

        sig do
          params(_: T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice]))
            .returns(T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice]))
        end
        def applies_to_prices=(_)
        end

        sig { returns(T.nilable(String)) }
        def reason
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reason=(_)
        end

        # The maximum amount applied on the original invoice
        sig do
          params(
            amount_applied: String,
            discount_type: Symbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice]),
            reason: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(amount_applied:, discount_type:, percentage_discount:, applies_to_prices: nil, reason: nil)
        end

        sig do
          override
            .returns(
              {
                amount_applied: String,
                discount_type: Symbol,
                percentage_discount: Float,
                applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice]),
                reason: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class DiscountType < Orb::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          PERCENTAGE = :percentage
        end

        class AppliesToPrice < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end
      end

      class Reason < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DUPLICATE = :Duplicate
        FRAUDULENT = :Fraudulent
        ORDER_CHANGE = :"Order change"
        PRODUCT_UNSATISFACTORY = :"Product unsatisfactory"
      end

      class Type < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        REFUND = :refund
        ADJUSTMENT = :adjustment
      end

      class Discount < Orb::BaseModel
        sig { returns(String) }
        def amount_applied
        end

        sig { params(_: String).returns(String) }
        def amount_applied=(_)
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

        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice])) }
        def applies_to_prices
        end

        sig do
          params(_: T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice]))
            .returns(T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice]))
        end
        def applies_to_prices=(_)
        end

        sig { returns(T.nilable(String)) }
        def reason
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reason=(_)
        end

        sig do
          params(
            amount_applied: String,
            discount_type: Symbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice]),
            reason: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(amount_applied:, discount_type:, percentage_discount:, applies_to_prices: nil, reason: nil)
        end

        sig do
          override
            .returns(
              {
                amount_applied: String,
                discount_type: Symbol,
                percentage_discount: Float,
                applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice]),
                reason: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class DiscountType < Orb::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          PERCENTAGE = :percentage
        end

        class AppliesToPrice < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
