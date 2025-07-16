# typed: strong

module Orb
  module Models
    class CreditNote < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::CreditNote, Orb::Internal::AnyHash) }

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

      sig { returns(Orb::CustomerMinified) }
      attr_reader :customer

      sig { params(customer: Orb::CustomerMinified::OrHash).void }
      attr_writer :customer

      # The id of the invoice resource that this credit note is applied to.
      sig { returns(String) }
      attr_accessor :invoice_id

      # All of the line items associated with this credit note.
      sig { returns(T::Array[Orb::CreditNote::LineItem]) }
      attr_accessor :line_items

      # The maximum amount applied on the original invoice
      sig { returns(T.nilable(Orb::CreditNote::MaximumAmountAdjustment)) }
      attr_reader :maximum_amount_adjustment

      sig do
        params(
          maximum_amount_adjustment:
            T.nilable(Orb::CreditNote::MaximumAmountAdjustment::OrHash)
        ).void
      end
      attr_writer :maximum_amount_adjustment

      # An optional memo supplied on the credit note.
      sig { returns(T.nilable(String)) }
      attr_accessor :memo

      # Any credited amount from the applied minimum on the invoice.
      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount_refunded

      sig { returns(T.nilable(Orb::CreditNote::Reason::TaggedSymbol)) }
      attr_accessor :reason

      # The total prior to any creditable invoice-level discounts or minimums.
      sig { returns(String) }
      attr_accessor :subtotal

      # The total including creditable invoice-level discounts or minimums, and tax.
      sig { returns(String) }
      attr_accessor :total

      sig { returns(Orb::CreditNote::Type::TaggedSymbol) }
      attr_accessor :type

      # The time at which the credit note was voided in Orb, if applicable.
      sig { returns(T.nilable(Time)) }
      attr_accessor :voided_at

      # Any discounts applied on the original invoice.
      sig { returns(T.nilable(T::Array[Orb::CreditNote::Discount])) }
      attr_reader :discounts

      sig do
        params(discounts: T::Array[Orb::CreditNote::Discount::OrHash]).void
      end
      attr_writer :discounts

      # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      # been applied to a particular invoice.
      sig do
        params(
          id: String,
          created_at: Time,
          credit_note_number: String,
          credit_note_pdf: T.nilable(String),
          customer: Orb::CustomerMinified::OrHash,
          invoice_id: String,
          line_items: T::Array[Orb::CreditNote::LineItem::OrHash],
          maximum_amount_adjustment:
            T.nilable(Orb::CreditNote::MaximumAmountAdjustment::OrHash),
          memo: T.nilable(String),
          minimum_amount_refunded: T.nilable(String),
          reason: T.nilable(Orb::CreditNote::Reason::OrSymbol),
          subtotal: String,
          total: String,
          type: Orb::CreditNote::Type::OrSymbol,
          voided_at: T.nilable(Time),
          discounts: T::Array[Orb::CreditNote::Discount::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The Orb id of this credit note.
        id:,
        # The creation time of the resource in Orb.
        created_at:,
        # The unique identifier for credit notes.
        credit_note_number:,
        # A URL to a PDF of the credit note.
        credit_note_pdf:,
        customer:,
        # The id of the invoice resource that this credit note is applied to.
        invoice_id:,
        # All of the line items associated with this credit note.
        line_items:,
        # The maximum amount applied on the original invoice
        maximum_amount_adjustment:,
        # An optional memo supplied on the credit note.
        memo:,
        # Any credited amount from the applied minimum on the invoice.
        minimum_amount_refunded:,
        reason:,
        # The total prior to any creditable invoice-level discounts or minimums.
        subtotal:,
        # The total including creditable invoice-level discounts or minimums, and tax.
        total:,
        type:,
        # The time at which the credit note was voided in Orb, if applicable.
        voided_at:,
        # Any discounts applied on the original invoice.
        discounts: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            credit_note_number: String,
            credit_note_pdf: T.nilable(String),
            customer: Orb::CustomerMinified,
            invoice_id: String,
            line_items: T::Array[Orb::CreditNote::LineItem],
            maximum_amount_adjustment:
              T.nilable(Orb::CreditNote::MaximumAmountAdjustment),
            memo: T.nilable(String),
            minimum_amount_refunded: T.nilable(String),
            reason: T.nilable(Orb::CreditNote::Reason::TaggedSymbol),
            subtotal: String,
            total: String,
            type: Orb::CreditNote::Type::TaggedSymbol,
            voided_at: T.nilable(Time),
            discounts: T::Array[Orb::CreditNote::Discount]
          }
        )
      end
      def to_hash
      end

      class LineItem < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::CreditNote::LineItem, Orb::Internal::AnyHash)
          end

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
        sig { returns(T::Array[Orb::TaxAmount]) }
        attr_accessor :tax_amounts

        # Any line item discounts from the invoice's line item.
        sig do
          returns(T.nilable(T::Array[Orb::CreditNote::LineItem::Discount]))
        end
        attr_reader :discounts

        sig do
          params(
            discounts: T::Array[Orb::CreditNote::LineItem::Discount::OrHash]
          ).void
        end
        attr_writer :discounts

        # The end time of the service period for this credit note line item.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_time_exclusive

        # The start time of the service period for this credit note line item.
        sig { returns(T.nilable(Time)) }
        attr_accessor :start_time_inclusive

        sig do
          params(
            id: String,
            amount: String,
            item_id: String,
            name: String,
            quantity: T.nilable(Float),
            subtotal: String,
            tax_amounts: T::Array[Orb::TaxAmount::OrHash],
            discounts: T::Array[Orb::CreditNote::LineItem::Discount::OrHash],
            end_time_exclusive: T.nilable(Time),
            start_time_inclusive: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # The Orb id of this resource.
          id:,
          # The amount of the line item, including any line item minimums and discounts.
          amount:,
          # The id of the item associated with this line item.
          item_id:,
          # The name of the corresponding invoice line item.
          name:,
          # An optional quantity credited.
          quantity:,
          # The amount of the line item, excluding any line item minimums and discounts.
          subtotal:,
          # Any tax amounts applied onto the line item.
          tax_amounts:,
          # Any line item discounts from the invoice's line item.
          discounts: nil,
          # The end time of the service period for this credit note line item.
          end_time_exclusive: nil,
          # The start time of the service period for this credit note line item.
          start_time_inclusive: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              item_id: String,
              name: String,
              quantity: T.nilable(Float),
              subtotal: String,
              tax_amounts: T::Array[Orb::TaxAmount],
              discounts: T::Array[Orb::CreditNote::LineItem::Discount],
              end_time_exclusive: T.nilable(Time),
              start_time_inclusive: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        class Discount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::CreditNote::LineItem::Discount, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :amount_applied

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig do
            returns(
              Orb::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol
            )
          end
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
              discount_type:
                Orb::CreditNote::LineItem::Discount::DiscountType::OrSymbol,
              percentage_discount: Float,
              amount_discount: T.nilable(String),
              reason: T.nilable(String)
            ).returns(T.attached_class)
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
            override.returns(
              {
                id: String,
                amount_applied: String,
                applies_to_price_ids: T::Array[String],
                discount_type:
                  Orb::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol,
                percentage_discount: Float,
                amount_discount: T.nilable(String),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module DiscountType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::CreditNote::LineItem::Discount::DiscountType)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERCENTAGE =
              T.let(
                :percentage,
                Orb::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol
              )
            AMOUNT =
              T.let(
                :amount,
                Orb::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CreditNote::LineItem::Discount::DiscountType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class MaximumAmountAdjustment < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CreditNote::MaximumAmountAdjustment,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :amount_applied

        sig do
          returns(
            Orb::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol
          )
        end
        attr_accessor :discount_type

        sig { returns(Float) }
        attr_accessor :percentage_discount

        sig do
          returns(
            T.nilable(
              T::Array[Orb::CreditNote::MaximumAmountAdjustment::AppliesToPrice]
            )
          )
        end
        attr_accessor :applies_to_prices

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        # The maximum amount applied on the original invoice
        sig do
          params(
            amount_applied: String,
            discount_type:
              Orb::CreditNote::MaximumAmountAdjustment::DiscountType::OrSymbol,
            percentage_discount: Float,
            applies_to_prices:
              T.nilable(
                T::Array[
                  Orb::CreditNote::MaximumAmountAdjustment::AppliesToPrice::OrHash
                ]
              ),
            reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          amount_applied:,
          discount_type:,
          percentage_discount:,
          applies_to_prices: nil,
          reason: nil
        )
        end

        sig do
          override.returns(
            {
              amount_applied: String,
              discount_type:
                Orb::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol,
              percentage_discount: Float,
              applies_to_prices:
                T.nilable(
                  T::Array[
                    Orb::CreditNote::MaximumAmountAdjustment::AppliesToPrice
                  ]
                ),
              reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module DiscountType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::CreditNote::MaximumAmountAdjustment::DiscountType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERCENTAGE =
            T.let(
              :percentage,
              Orb::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::CreditNote::MaximumAmountAdjustment::DiscountType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class AppliesToPrice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CreditNote::MaximumAmountAdjustment::AppliesToPrice,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end
      end

      module Reason
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::CreditNote::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DUPLICATE = T.let(:Duplicate, Orb::CreditNote::Reason::TaggedSymbol)
        FRAUDULENT = T.let(:Fraudulent, Orb::CreditNote::Reason::TaggedSymbol)
        ORDER_CHANGE =
          T.let(:"Order change", Orb::CreditNote::Reason::TaggedSymbol)
        PRODUCT_UNSATISFACTORY =
          T.let(
            :"Product unsatisfactory",
            Orb::CreditNote::Reason::TaggedSymbol
          )

        sig do
          override.returns(T::Array[Orb::CreditNote::Reason::TaggedSymbol])
        end
        def self.values
        end
      end

      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::CreditNote::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUND = T.let(:refund, Orb::CreditNote::Type::TaggedSymbol)
        ADJUSTMENT = T.let(:adjustment, Orb::CreditNote::Type::TaggedSymbol)

        sig { override.returns(T::Array[Orb::CreditNote::Type::TaggedSymbol]) }
        def self.values
        end
      end

      class Discount < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::CreditNote::Discount, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :amount_applied

        sig { returns(Orb::CreditNote::Discount::DiscountType::TaggedSymbol) }
        attr_accessor :discount_type

        sig { returns(Float) }
        attr_accessor :percentage_discount

        sig do
          returns(
            T.nilable(T::Array[Orb::CreditNote::Discount::AppliesToPrice])
          )
        end
        attr_accessor :applies_to_prices

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            amount_applied: String,
            discount_type: Orb::CreditNote::Discount::DiscountType::OrSymbol,
            percentage_discount: Float,
            applies_to_prices:
              T.nilable(
                T::Array[Orb::CreditNote::Discount::AppliesToPrice::OrHash]
              ),
            reason: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          amount_applied:,
          discount_type:,
          percentage_discount:,
          applies_to_prices: nil,
          reason: nil
        )
        end

        sig do
          override.returns(
            {
              amount_applied: String,
              discount_type:
                Orb::CreditNote::Discount::DiscountType::TaggedSymbol,
              percentage_discount: Float,
              applies_to_prices:
                T.nilable(T::Array[Orb::CreditNote::Discount::AppliesToPrice]),
              reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module DiscountType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::CreditNote::Discount::DiscountType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERCENTAGE =
            T.let(
              :percentage,
              Orb::CreditNote::Discount::DiscountType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::CreditNote::Discount::DiscountType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class AppliesToPrice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CreditNote::Discount::AppliesToPrice,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
