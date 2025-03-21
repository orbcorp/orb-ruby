# typed: strong

module Orb
  module Models
    class CreditNote < Orb::BaseModel
      # The Orb id of this credit note.
      sig { returns(String) }
      attr_accessor :id

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      attr_accessor :created_at

      # The unique identifier for credit notes.
      sig { returns(String) }
      attr_accessor :credit_note_number

      # A URL to a PDF of the credit note.
      sig { returns(T.nilable(String)) }
      attr_accessor :credit_note_pdf

      sig { returns(Orb::Models::CreditNote::Customer) }
      attr_reader :customer

      sig { params(customer: T.any(Orb::Models::CreditNote::Customer, Orb::Util::AnyHash)).void }
      attr_writer :customer

      # The id of the invoice resource that this credit note is applied to.
      sig { returns(String) }
      attr_accessor :invoice_id

      # All of the line items associated with this credit note.
      sig { returns(T::Array[Orb::Models::CreditNote::LineItem]) }
      attr_accessor :line_items

      # The maximum amount applied on the original invoice
      sig { returns(T.nilable(Orb::Models::CreditNote::MaximumAmountAdjustment)) }
      attr_reader :maximum_amount_adjustment

      sig do
        params(
          maximum_amount_adjustment: T.nilable(T.any(Orb::Models::CreditNote::MaximumAmountAdjustment, Orb::Util::AnyHash))
        )
          .void
      end
      attr_writer :maximum_amount_adjustment

      # An optional memo supplied on the credit note.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # Any credited amount from the applied minimum on the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount_refunded

      sig { returns(T.nilable(Orb::Models::CreditNote::Reason::TaggedSymbol)) }
      attr_accessor :reason

      # The total prior to any creditable invoice-level discounts or minimums.
      sig { returns(String) }
      attr_accessor :subtotal

      # The total including creditable invoice-level discounts or minimums, and tax.
      sig { returns(String) }
      attr_accessor :total

      sig { returns(Orb::Models::CreditNote::Type::TaggedSymbol) }
      attr_accessor :type

      # The time at which the credit note was voided in Orb, if applicable.
      sig { returns(T.nilable(Time)) }
      attr_accessor :voided_at

      # Any discounts applied on the original invoice.
      sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::Discount])) }
      attr_reader :discounts

      sig { params(discounts: T::Array[T.any(Orb::Models::CreditNote::Discount, Orb::Util::AnyHash)]).void }
      attr_writer :discounts

      # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      #   been applied to a particular invoice.
      sig do
        params(
          id: String,
          created_at: Time,
          credit_note_number: String,
          credit_note_pdf: T.nilable(String),
          customer: T.any(Orb::Models::CreditNote::Customer, Orb::Util::AnyHash),
          invoice_id: String,
          line_items: T::Array[T.any(Orb::Models::CreditNote::LineItem, Orb::Util::AnyHash)],
          maximum_amount_adjustment: T.nilable(T.any(Orb::Models::CreditNote::MaximumAmountAdjustment, Orb::Util::AnyHash)),
          memo: T.nilable(String),
          minimum_amount_refunded: T.nilable(String),
          reason: T.nilable(Orb::Models::CreditNote::Reason::OrSymbol),
          subtotal: String,
          total: String,
          type: Orb::Models::CreditNote::Type::OrSymbol,
          voided_at: T.nilable(Time),
          discounts: T::Array[T.any(Orb::Models::CreditNote::Discount, Orb::Util::AnyHash)]
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
              reason: T.nilable(Orb::Models::CreditNote::Reason::TaggedSymbol),
              subtotal: String,
              total: String,
              type: Orb::Models::CreditNote::Type::TaggedSymbol,
              voided_at: T.nilable(Time),
              discounts: T::Array[Orb::Models::CreditNote::Discount]
            }
          )
      end
      def to_hash
      end

      class Customer < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

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
        attr_accessor :id

        # The amount of the line item, including any line item minimums and discounts.
        sig { returns(String) }
        attr_accessor :amount

        # The id of the item associated with this line item.
        sig { returns(String) }
        attr_accessor :item_id

        # The name of the corresponding invoice line item.
        sig { returns(String) }
        attr_accessor :name

        # An optional quantity credited.
        sig { returns(T.nilable(Float)) }
        attr_accessor :quantity

        # The amount of the line item, excluding any line item minimums and discounts.
        sig { returns(String) }
        attr_accessor :subtotal

        # Any tax amounts applied onto the line item.
        sig { returns(T::Array[Orb::Models::CreditNote::LineItem::TaxAmount]) }
        attr_accessor :tax_amounts

        # Any line item discounts from the invoice's line item.
        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::LineItem::Discount])) }
        attr_reader :discounts

        sig { params(discounts: T::Array[T.any(Orb::Models::CreditNote::LineItem::Discount, Orb::Util::AnyHash)]).void }
        attr_writer :discounts

        sig do
          params(
            id: String,
            amount: String,
            item_id: String,
            name: String,
            quantity: T.nilable(Float),
            subtotal: String,
            tax_amounts: T::Array[T.any(Orb::Models::CreditNote::LineItem::TaxAmount, Orb::Util::AnyHash)],
            discounts: T::Array[T.any(Orb::Models::CreditNote::LineItem::Discount, Orb::Util::AnyHash)]
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
          attr_accessor :amount

          # The human-readable description of the applied tax rate.
          sig { returns(String) }
          attr_accessor :tax_rate_description

          # The tax rate percentage, out of 100.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_rate_percentage

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
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :amount_applied

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(Orb::Models::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol) }
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
              discount_type: Orb::Models::CreditNote::LineItem::Discount::DiscountType::OrSymbol,
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
                  discount_type: Orb::Models::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol,
                  percentage_discount: Float,
                  amount_discount: T.nilable(String),
                  reason: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          module DiscountType
            extend Orb::Enum

            TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::CreditNote::LineItem::Discount::DiscountType) }
            OrSymbol =
              T.type_alias { T.any(Symbol, Orb::Models::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol) }

            PERCENTAGE = T.let(:percentage, Orb::Models::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol)
            AMOUNT = T.let(:amount, Orb::Models::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol)

            class << self
              sig { override.returns(T::Array[Orb::Models::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol]) }
              def values
              end
            end
          end
        end
      end

      class MaximumAmountAdjustment < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :amount_applied

        sig { returns(Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol) }
        attr_accessor :discount_type

        sig { returns(Float) }
        attr_accessor :percentage_discount

        sig { returns(T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice])) }
        attr_accessor :applies_to_prices

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        # The maximum amount applied on the original invoice
        sig do
          params(
            amount_applied: String,
            discount_type: Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType::OrSymbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(
              T::Array[T.any(Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice, Orb::Util::AnyHash)]
            ),
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
                discount_type: Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol,
                percentage_discount: Float,
                applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice]),
                reason: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        module DiscountType
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol) }

          PERCENTAGE =
            T.let(:percentage, Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol]) }
            def values
            end
          end
        end

        class AppliesToPrice < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end
      end

      module Reason
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::CreditNote::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::CreditNote::Reason::TaggedSymbol) }

        DUPLICATE = T.let(:Duplicate, Orb::Models::CreditNote::Reason::TaggedSymbol)
        FRAUDULENT = T.let(:Fraudulent, Orb::Models::CreditNote::Reason::TaggedSymbol)
        ORDER_CHANGE = T.let(:"Order change", Orb::Models::CreditNote::Reason::TaggedSymbol)
        PRODUCT_UNSATISFACTORY = T.let(:"Product unsatisfactory", Orb::Models::CreditNote::Reason::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Orb::Models::CreditNote::Reason::TaggedSymbol]) }
          def values
          end
        end
      end

      module Type
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::CreditNote::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::CreditNote::Type::TaggedSymbol) }

        REFUND = T.let(:refund, Orb::Models::CreditNote::Type::TaggedSymbol)
        ADJUSTMENT = T.let(:adjustment, Orb::Models::CreditNote::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Orb::Models::CreditNote::Type::TaggedSymbol]) }
          def values
          end
        end
      end

      class Discount < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :amount_applied

        sig { returns(Orb::Models::CreditNote::Discount::DiscountType::TaggedSymbol) }
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
            discount_type: Orb::Models::CreditNote::Discount::DiscountType::OrSymbol,
            percentage_discount: Float,
            applies_to_prices: T.nilable(T::Array[T.any(Orb::Models::CreditNote::Discount::AppliesToPrice, Orb::Util::AnyHash)]),
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
                discount_type: Orb::Models::CreditNote::Discount::DiscountType::TaggedSymbol,
                percentage_discount: Float,
                applies_to_prices: T.nilable(T::Array[Orb::Models::CreditNote::Discount::AppliesToPrice]),
                reason: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        module DiscountType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::CreditNote::Discount::DiscountType) }
          OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::CreditNote::Discount::DiscountType::TaggedSymbol) }

          PERCENTAGE = T.let(:percentage, Orb::Models::CreditNote::Discount::DiscountType::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Orb::Models::CreditNote::Discount::DiscountType::TaggedSymbol]) }
            def values
            end
          end
        end

        class AppliesToPrice < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

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
