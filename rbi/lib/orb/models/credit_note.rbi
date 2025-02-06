# typed: strong

module Orb
  module Models
    class CreditNote < Orb::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :credit_note_number

      sig { returns(T.nilable(String)) }
      attr_accessor :credit_note_pdf

      sig { returns(Orb::Models::CreditNote::Customer) }
      attr_accessor :customer

      sig { returns(String) }
      attr_accessor :invoice_id

      sig { returns(T::Array[Orb::Models::CreditNote::LineItem]) }
      attr_accessor :line_items

      sig { returns(T.nilable(Orb::Models::CreditNote::MaximumAmountAdjustment)) }
      attr_accessor :maximum_amount_adjustment

      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount_refunded

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :reason

      sig { returns(String) }
      attr_accessor :subtotal

      sig { returns(String) }
      attr_accessor :total

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(Time)) }
      attr_accessor :voided_at

      sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::Discount])) }
      attr_reader :discounts

      sig { params(discounts: T::Array[Orb::Models::CreditNote::Discount]).void }
      attr_writer :discounts

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
        ).void
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
      ); end

      sig { returns(Orb::Models::CreditNote::Shape) }
      def to_h; end

      class Customer < Orb::BaseModel
        Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        sig { params(id: String, external_customer_id: T.nilable(String)).void }
        def initialize(id:, external_customer_id:); end

        sig { returns(Orb::Models::CreditNote::Customer::Shape) }
        def to_h; end
      end

      class LineItem < Orb::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            amount: String,
            name: String,
            quantity: T.nilable(Float),
            subtotal: String,
            tax_amounts: T::Array[Orb::Models::CreditNote::LineItem::TaxAmount],
            discounts: T::Array[Orb::Models::CreditNote::LineItem::Discount]
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Float)) }
        attr_accessor :quantity

        sig { returns(String) }
        attr_accessor :subtotal

        sig { returns(T::Array[Orb::Models::CreditNote::LineItem::TaxAmount]) }
        attr_accessor :tax_amounts

        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::LineItem::Discount])) }
        attr_reader :discounts

        sig { params(discounts: T::Array[Orb::Models::CreditNote::LineItem::Discount]).void }
        attr_writer :discounts

        sig do
          params(
            id: String,
            amount: String,
            name: String,
            quantity: T.nilable(Float),
            subtotal: String,
            tax_amounts: T::Array[Orb::Models::CreditNote::LineItem::TaxAmount],
            discounts: T::Array[Orb::Models::CreditNote::LineItem::Discount]
          ).void
        end
        def initialize(id:, amount:, name:, quantity:, subtotal:, tax_amounts:, discounts: nil); end

        sig { returns(Orb::Models::CreditNote::LineItem::Shape) }
        def to_h; end

        class TaxAmount < Orb::BaseModel
          Shape = T.type_alias do
            {amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String)}
          end

          sig { returns(String) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :tax_rate_description

          sig { returns(T.nilable(String)) }
          attr_accessor :tax_rate_percentage

          sig do
            params(amount: String, tax_rate_description: String, tax_rate_percentage: T.nilable(String)).void
          end
          def initialize(amount:, tax_rate_description:, tax_rate_percentage:); end

          sig { returns(Orb::Models::CreditNote::LineItem::TaxAmount::Shape) }
          def to_h; end
        end

        class Discount < Orb::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              amount_applied: String,
              applies_to_price_ids: T::Array[String],
              discount_type: Symbol,
              percentage_discount: Float,
              amount_discount: T.nilable(String),
              reason: T.nilable(String)
            }
          end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :amount_applied

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { returns(T.nilable(String)) }
          attr_accessor :amount_discount

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              amount_applied: String,
              applies_to_price_ids: T::Array[String],
              discount_type: Symbol,
              percentage_discount: Float,
              amount_discount: T.nilable(String),
              reason: T.nilable(String)
            ).void
          end
          def initialize(
            id:,
            amount_applied:,
            applies_to_price_ids:,
            discount_type:,
            percentage_discount:,
            amount_discount: nil,
            reason: nil
          ); end

          sig { returns(Orb::Models::CreditNote::LineItem::Discount::Shape) }
          def to_h; end

          class DiscountType < Orb::Enum
            abstract!

            PERCENTAGE = :percentage
            AMOUNT = :amount

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end

      class MaximumAmountAdjustment < Orb::BaseModel
        Shape = T.type_alias do
          {
            amount_applied: String,
            discount_type: Symbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice]),
            reason: T.nilable(String)
          }
        end

        sig { returns(String) }
        attr_accessor :amount_applied

        sig { returns(Symbol) }
        attr_accessor :discount_type

        sig { returns(Float) }
        attr_accessor :percentage_discount

        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice])) }
        attr_accessor :applies_to_prices

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            amount_applied: String,
            discount_type: Symbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice]),
            reason: T.nilable(String)
          ).void
        end
        def initialize(
          amount_applied:,
          discount_type:,
          percentage_discount:,
          applies_to_prices: nil,
          reason: nil
        )
        end

        sig { returns(Orb::Models::CreditNote::MaximumAmountAdjustment::Shape) }
        def to_h; end

        class DiscountType < Orb::Enum
          abstract!

          PERCENTAGE = :percentage

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class AppliesToPrice < Orb::BaseModel
          Shape = T.type_alias { {id: String, name: String} }

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:); end

          sig { returns(Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice::Shape) }
          def to_h; end
        end
      end

      class Reason < Orb::Enum
        abstract!

        DUPLICATE = T.let(:Duplicate, T.nilable(Symbol))
        FRAUDULENT = T.let(:Fraudulent, T.nilable(Symbol))
        ORDER_CHANGE = T.let(:"Order change", T.nilable(Symbol))
        PRODUCT_UNSATISFACTORY = T.let(:"Product unsatisfactory", T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Type < Orb::Enum
        abstract!

        REFUND = :refund
        ADJUSTMENT = :adjustment

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Discount < Orb::BaseModel
        Shape = T.type_alias do
          {
            amount_applied: String,
            discount_type: Symbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice]),
            reason: T.nilable(String)
          }
        end

        sig { returns(String) }
        attr_accessor :amount_applied

        sig { returns(Symbol) }
        attr_accessor :discount_type

        sig { returns(Float) }
        attr_accessor :percentage_discount

        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice])) }
        attr_accessor :applies_to_prices

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            amount_applied: String,
            discount_type: Symbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice]),
            reason: T.nilable(String)
          ).void
        end
        def initialize(
          amount_applied:,
          discount_type:,
          percentage_discount:,
          applies_to_prices: nil,
          reason: nil
        )
        end

        sig { returns(Orb::Models::CreditNote::Discount::Shape) }
        def to_h; end

        class DiscountType < Orb::Enum
          abstract!

          PERCENTAGE = :percentage

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class AppliesToPrice < Orb::BaseModel
          Shape = T.type_alias { {id: String, name: String} }

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:); end

          sig { returns(Orb::Models::CreditNote::Discount::AppliesToPrice::Shape) }
          def to_h; end
        end
      end
    end
  end
end
