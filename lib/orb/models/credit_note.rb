# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::CreditNotes#create
    class CreditNote < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The Orb id of this credit note.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The creation time of the resource in Orb.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credit_note_number
      #   The unique identifier for credit notes.
      #
      #   @return [String]
      required :credit_note_number, String

      # @!attribute credit_note_pdf
      #   A URL to a PDF of the credit note.
      #
      #   @return [String, nil]
      required :credit_note_pdf, String, nil?: true

      # @!attribute customer
      #
      #   @return [Orb::Models::CreditNote::Customer]
      required :customer, -> { Orb::Models::CreditNote::Customer }

      # @!attribute invoice_id
      #   The id of the invoice resource that this credit note is applied to.
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute line_items
      #   All of the line items associated with this credit note.
      #
      #   @return [Array<Orb::Models::CreditNote::LineItem>]
      required :line_items, -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote::LineItem] }

      # @!attribute maximum_amount_adjustment
      #   The maximum amount applied on the original invoice
      #
      #   @return [Orb::Models::CreditNote::MaximumAmountAdjustment, nil]
      required :maximum_amount_adjustment, -> { Orb::Models::CreditNote::MaximumAmountAdjustment }, nil?: true

      # @!attribute memo
      #   An optional memo supplied on the credit note.
      #
      #   @return [String, nil]
      required :memo, String, nil?: true

      # @!attribute minimum_amount_refunded
      #   Any credited amount from the applied minimum on the invoice.
      #
      #   @return [String, nil]
      required :minimum_amount_refunded, String, nil?: true

      # @!attribute reason
      #
      #   @return [Symbol, Orb::Models::CreditNote::Reason, nil]
      required :reason, enum: -> { Orb::Models::CreditNote::Reason }, nil?: true

      # @!attribute subtotal
      #   The total prior to any creditable invoice-level discounts or minimums.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute total
      #   The total including creditable invoice-level discounts or minimums, and tax.
      #
      #   @return [String]
      required :total, String

      # @!attribute type
      #
      #   @return [Symbol, Orb::Models::CreditNote::Type]
      required :type, enum: -> { Orb::Models::CreditNote::Type }

      # @!attribute voided_at
      #   The time at which the credit note was voided in Orb, if applicable.
      #
      #   @return [Time, nil]
      required :voided_at, Time, nil?: true

      # @!attribute [r] discounts
      #   Any discounts applied on the original invoice.
      #
      #   @return [Array<Orb::Models::CreditNote::Discount>, nil]
      optional :discounts, -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote::Discount] }

      # @!parse
      #   # @return [Array<Orb::Models::CreditNote::Discount>]
      #   attr_writer :discounts

      # @!method initialize(id:, created_at:, credit_note_number:, credit_note_pdf:, customer:, invoice_id:, line_items:, maximum_amount_adjustment:, memo:, minimum_amount_refunded:, reason:, subtotal:, total:, type:, voided_at:, discounts: nil)
      #   The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      #   been applied to a particular invoice.
      #
      #   @param id [String]
      #   @param created_at [Time]
      #   @param credit_note_number [String]
      #   @param credit_note_pdf [String, nil]
      #   @param customer [Orb::Models::CreditNote::Customer]
      #   @param invoice_id [String]
      #   @param line_items [Array<Orb::Models::CreditNote::LineItem>]
      #   @param maximum_amount_adjustment [Orb::Models::CreditNote::MaximumAmountAdjustment, nil]
      #   @param memo [String, nil]
      #   @param minimum_amount_refunded [String, nil]
      #   @param reason [Symbol, Orb::Models::CreditNote::Reason, nil]
      #   @param subtotal [String]
      #   @param total [String]
      #   @param type [Symbol, Orb::Models::CreditNote::Type]
      #   @param voided_at [Time, nil]
      #   @param discounts [Array<Orb::Models::CreditNote::Discount>]

      # @see Orb::Models::CreditNote#customer
      class Customer < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute external_customer_id
        #
        #   @return [String, nil]
        required :external_customer_id, String, nil?: true

        # @!method initialize(id:, external_customer_id:)
        #   @param id [String]
        #   @param external_customer_id [String, nil]
      end

      class LineItem < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The Orb id of this resource.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   The amount of the line item, including any line item minimums and discounts.
        #
        #   @return [String]
        required :amount, String

        # @!attribute item_id
        #   The id of the item associated with this line item.
        #
        #   @return [String]
        required :item_id, String

        # @!attribute name
        #   The name of the corresponding invoice line item.
        #
        #   @return [String]
        required :name, String

        # @!attribute quantity
        #   An optional quantity credited.
        #
        #   @return [Float, nil]
        required :quantity, Float, nil?: true

        # @!attribute subtotal
        #   The amount of the line item, excluding any line item minimums and discounts.
        #
        #   @return [String]
        required :subtotal, String

        # @!attribute tax_amounts
        #   Any tax amounts applied onto the line item.
        #
        #   @return [Array<Orb::Models::CreditNote::LineItem::TaxAmount>]
        required :tax_amounts, -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote::LineItem::TaxAmount] }

        # @!attribute [r] discounts
        #   Any line item discounts from the invoice's line item.
        #
        #   @return [Array<Orb::Models::CreditNote::LineItem::Discount>, nil]
        optional :discounts, -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote::LineItem::Discount] }

        # @!parse
        #   # @return [Array<Orb::Models::CreditNote::LineItem::Discount>]
        #   attr_writer :discounts

        # @!method initialize(id:, amount:, item_id:, name:, quantity:, subtotal:, tax_amounts:, discounts: nil)
        #   @param id [String]
        #   @param amount [String]
        #   @param item_id [String]
        #   @param name [String]
        #   @param quantity [Float, nil]
        #   @param subtotal [String]
        #   @param tax_amounts [Array<Orb::Models::CreditNote::LineItem::TaxAmount>]
        #   @param discounts [Array<Orb::Models::CreditNote::LineItem::Discount>]

        class TaxAmount < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount of additional tax incurred by this tax rate.
          #
          #   @return [String]
          required :amount, String

          # @!attribute tax_rate_description
          #   The human-readable description of the applied tax rate.
          #
          #   @return [String]
          required :tax_rate_description, String

          # @!attribute tax_rate_percentage
          #   The tax rate percentage, out of 100.
          #
          #   @return [String, nil]
          required :tax_rate_percentage, String, nil?: true

          # @!method initialize(amount:, tax_rate_description:, tax_rate_percentage:)
          #   @param amount [String]
          #   @param tax_rate_description [String]
          #   @param tax_rate_percentage [String, nil]
        end

        class Discount < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount_applied
          #
          #   @return [String]
          required :amount_applied, String

          # @!attribute applies_to_price_ids
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute discount_type
          #
          #   @return [Symbol, Orb::Models::CreditNote::LineItem::Discount::DiscountType]
          required :discount_type, enum: -> { Orb::Models::CreditNote::LineItem::Discount::DiscountType }

          # @!attribute percentage_discount
          #
          #   @return [Float]
          required :percentage_discount, Float

          # @!attribute amount_discount
          #
          #   @return [String, nil]
          optional :amount_discount, String, nil?: true

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!method initialize(id:, amount_applied:, applies_to_price_ids:, discount_type:, percentage_discount:, amount_discount: nil, reason: nil)
          #   @param id [String]
          #   @param amount_applied [String]
          #   @param applies_to_price_ids [Array<String>]
          #   @param discount_type [Symbol, Orb::Models::CreditNote::LineItem::Discount::DiscountType]
          #   @param percentage_discount [Float]
          #   @param amount_discount [String, nil]
          #   @param reason [String, nil]

          # @see Orb::Models::CreditNote::LineItem::Discount#discount_type
          module DiscountType
            extend Orb::Internal::Type::Enum

            PERCENTAGE = :percentage
            AMOUNT = :amount

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Orb::Models::CreditNote#maximum_amount_adjustment
      class MaximumAmountAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute amount_applied
        #
        #   @return [String]
        required :amount_applied, String

        # @!attribute discount_type
        #
        #   @return [Symbol, Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType]
        required :discount_type, enum: -> { Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType }

        # @!attribute percentage_discount
        #
        #   @return [Float]
        required :percentage_discount, Float

        # @!attribute applies_to_prices
        #
        #   @return [Array<Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice>, nil]
        optional :applies_to_prices,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice] },
                 nil?: true

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!method initialize(amount_applied:, discount_type:, percentage_discount:, applies_to_prices: nil, reason: nil)
        #   The maximum amount applied on the original invoice
        #
        #   @param amount_applied [String]
        #   @param discount_type [Symbol, Orb::Models::CreditNote::MaximumAmountAdjustment::DiscountType]
        #   @param percentage_discount [Float]
        #   @param applies_to_prices [Array<Orb::Models::CreditNote::MaximumAmountAdjustment::AppliesToPrice>, nil]
        #   @param reason [String, nil]

        # @see Orb::Models::CreditNote::MaximumAmountAdjustment#discount_type
        module DiscountType
          extend Orb::Internal::Type::Enum

          PERCENTAGE = :percentage

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class AppliesToPrice < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end
      end

      # @see Orb::Models::CreditNote#reason
      module Reason
        extend Orb::Internal::Type::Enum

        DUPLICATE = :Duplicate
        FRAUDULENT = :Fraudulent
        ORDER_CHANGE = :"Order change"
        PRODUCT_UNSATISFACTORY = :"Product unsatisfactory"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::CreditNote#type
      module Type
        extend Orb::Internal::Type::Enum

        REFUND = :refund
        ADJUSTMENT = :adjustment

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Discount < Orb::Internal::Type::BaseModel
        # @!attribute amount_applied
        #
        #   @return [String]
        required :amount_applied, String

        # @!attribute discount_type
        #
        #   @return [Symbol, Orb::Models::CreditNote::Discount::DiscountType]
        required :discount_type, enum: -> { Orb::Models::CreditNote::Discount::DiscountType }

        # @!attribute percentage_discount
        #
        #   @return [Float]
        required :percentage_discount, Float

        # @!attribute applies_to_prices
        #
        #   @return [Array<Orb::Models::CreditNote::Discount::AppliesToPrice>, nil]
        optional :applies_to_prices,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote::Discount::AppliesToPrice] },
                 nil?: true

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!method initialize(amount_applied:, discount_type:, percentage_discount:, applies_to_prices: nil, reason: nil)
        #   @param amount_applied [String]
        #   @param discount_type [Symbol, Orb::Models::CreditNote::Discount::DiscountType]
        #   @param percentage_discount [Float]
        #   @param applies_to_prices [Array<Orb::Models::CreditNote::Discount::AppliesToPrice>, nil]
        #   @param reason [String, nil]

        # @see Orb::Models::CreditNote::Discount#discount_type
        module DiscountType
          extend Orb::Internal::Type::Enum

          PERCENTAGE = :percentage

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class AppliesToPrice < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end
      end
    end
  end
end
