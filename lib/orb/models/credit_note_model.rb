# frozen_string_literal: true

module Orb
  module Models
    class CreditNoteModel < Orb::BaseModel
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
      #   @return [Orb::Models::CustomerMinifiedModel]
      required :customer, -> { Orb::Models::CustomerMinifiedModel }

      # @!attribute invoice_id
      #   The id of the invoice resource that this credit note is applied to.
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute line_items
      #   All of the line items associated with this credit note.
      #
      #   @return [Array<Orb::Models::CreditNoteModel::LineItem>]
      required :line_items, -> { Orb::ArrayOf[Orb::Models::CreditNoteModel::LineItem] }

      # @!attribute maximum_amount_adjustment
      #   The maximum amount applied on the original invoice
      #
      #   @return [Orb::Models::CreditNoteDiscountModel, nil]
      required :maximum_amount_adjustment, -> { Orb::Models::CreditNoteDiscountModel }, nil?: true

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
      #   @return [Symbol, Orb::Models::CreditNoteModel::Reason, nil]
      required :reason, enum: -> { Orb::Models::CreditNoteModel::Reason }, nil?: true

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
      #   @return [Symbol, Orb::Models::CreditNoteModel::Type]
      required :type, enum: -> { Orb::Models::CreditNoteModel::Type }

      # @!attribute voided_at
      #   The time at which the credit note was voided in Orb, if applicable.
      #
      #   @return [Time, nil]
      required :voided_at, Time, nil?: true

      # @!attribute [r] discounts
      #   Any discounts applied on the original invoice.
      #
      #   @return [Array<Orb::Models::CreditNoteDiscountModel>, nil]
      optional :discounts, -> { Orb::ArrayOf[Orb::Models::CreditNoteDiscountModel] }

      # @!parse
      #   # @return [Array<Orb::Models::CreditNoteDiscountModel>]
      #   attr_writer :discounts

      # @!parse
      #   # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      #   #   been applied to a particular invoice.
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param credit_note_number [String]
      #   # @param credit_note_pdf [String, nil]
      #   # @param customer [Orb::Models::CustomerMinifiedModel]
      #   # @param invoice_id [String]
      #   # @param line_items [Array<Orb::Models::CreditNoteModel::LineItem>]
      #   # @param maximum_amount_adjustment [Orb::Models::CreditNoteDiscountModel, nil]
      #   # @param memo [String, nil]
      #   # @param minimum_amount_refunded [String, nil]
      #   # @param reason [Symbol, Orb::Models::CreditNoteModel::Reason, nil]
      #   # @param subtotal [String]
      #   # @param total [String]
      #   # @param type [Symbol, Orb::Models::CreditNoteModel::Type]
      #   # @param voided_at [Time, nil]
      #   # @param discounts [Array<Orb::Models::CreditNoteDiscountModel>]
      #   #
      #   def initialize(
      #     id:,
      #     created_at:,
      #     credit_note_number:,
      #     credit_note_pdf:,
      #     customer:,
      #     invoice_id:,
      #     line_items:,
      #     maximum_amount_adjustment:,
      #     memo:,
      #     minimum_amount_refunded:,
      #     reason:,
      #     subtotal:,
      #     total:,
      #     type:,
      #     voided_at:,
      #     discounts: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      class LineItem < Orb::BaseModel
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
        #   @return [Array<Orb::Models::TaxAmountModel>]
        required :tax_amounts, -> { Orb::ArrayOf[Orb::Models::TaxAmountModel] }

        # @!attribute [r] discounts
        #   Any line item discounts from the invoice's line item.
        #
        #   @return [Array<Orb::Models::CreditNoteModel::LineItem::Discount>, nil]
        optional :discounts, -> { Orb::ArrayOf[Orb::Models::CreditNoteModel::LineItem::Discount] }

        # @!parse
        #   # @return [Array<Orb::Models::CreditNoteModel::LineItem::Discount>]
        #   attr_writer :discounts

        # @!parse
        #   # @param id [String]
        #   # @param amount [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param quantity [Float, nil]
        #   # @param subtotal [String]
        #   # @param tax_amounts [Array<Orb::Models::TaxAmountModel>]
        #   # @param discounts [Array<Orb::Models::CreditNoteModel::LineItem::Discount>]
        #   #
        #   def initialize(id:, amount:, item_id:, name:, quantity:, subtotal:, tax_amounts:, discounts: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        class Discount < Orb::BaseModel
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
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute discount_type
          #
          #   @return [Symbol, Orb::Models::CreditNoteModel::LineItem::Discount::DiscountType]
          required :discount_type, enum: -> { Orb::Models::CreditNoteModel::LineItem::Discount::DiscountType }

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

          # @!parse
          #   # @param id [String]
          #   # @param amount_applied [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param discount_type [Symbol, Orb::Models::CreditNoteModel::LineItem::Discount::DiscountType]
          #   # @param percentage_discount [Float]
          #   # @param amount_discount [String, nil]
          #   # @param reason [String, nil]
          #   #
          #   def initialize(
          #     id:,
          #     amount_applied:,
          #     applies_to_price_ids:,
          #     discount_type:,
          #     percentage_discount:,
          #     amount_discount: nil,
          #     reason: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case discount_type
          # in :percentage
          #   # ...
          # in :amount
          #   # ...
          # end
          # ```
          class DiscountType < Orb::Enum
            PERCENTAGE = :percentage
            AMOUNT = :amount

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case reason
      # in :Duplicate
      #   # ...
      # in :Fraudulent
      #   # ...
      # in :"Order change"
      #   # ...
      # in :"Product unsatisfactory"
      #   # ...
      # end
      # ```
      class Reason < Orb::Enum
        DUPLICATE = :Duplicate
        FRAUDULENT = :Fraudulent
        ORDER_CHANGE = :"Order change"
        PRODUCT_UNSATISFACTORY = :"Product unsatisfactory"

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case type
      # in :refund
      #   # ...
      # in :adjustment
      #   # ...
      # end
      # ```
      class Type < Orb::Enum
        REFUND = :refund
        ADJUSTMENT = :adjustment

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
