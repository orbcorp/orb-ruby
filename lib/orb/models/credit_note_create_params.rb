# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::CreditNotes#create
    class CreditNoteCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute line_items
      #
      #   @return [Array<Orb::Models::CreditNoteCreateParams::LineItem>]
      required :line_items, -> { Orb::Internal::Type::ArrayOf[Orb::CreditNoteCreateParams::LineItem] }

      # @!attribute reason
      #   An optional reason for the credit note.
      #
      #   @return [Symbol, Orb::Models::CreditNoteCreateParams::Reason]
      required :reason, enum: -> { Orb::CreditNoteCreateParams::Reason }

      # @!attribute end_date
      #   An optional date string to specify the global credit note service period end
      #   date in the customer's timezone. This will be applied to all line items. If not
      #   provided, line items will use their original invoice line item service periods.
      #   This date is inclusive.
      #
      #   @return [Date, nil]
      optional :end_date, Date, nil?: true

      # @!attribute memo
      #   An optional memo to attach to the credit note.
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!attribute start_date
      #   An optional date string to specify the global credit note service period end
      #   date in the customer's timezone. This will be applied to all line items. If not
      #   provided, line items will use their original invoice line item service periods.
      #   This date is inclusive.
      #
      #   @return [Date, nil]
      optional :start_date, Date, nil?: true

      # @!method initialize(line_items:, reason:, end_date: nil, memo: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CreditNoteCreateParams} for more details.
      #
      #   @param line_items [Array<Orb::Models::CreditNoteCreateParams::LineItem>]
      #
      #   @param reason [Symbol, Orb::Models::CreditNoteCreateParams::Reason] An optional reason for the credit note.
      #
      #   @param end_date [Date, nil] An optional date string to specify the global credit note service period end dat
      #
      #   @param memo [String, nil] An optional memo to attach to the credit note.
      #
      #   @param start_date [Date, nil] An optional date string to specify the global credit note service period end dat
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class LineItem < Orb::Internal::Type::BaseModel
        # @!attribute amount
        #   The total amount in the invoice's currency to credit this line item.
        #
        #   @return [String]
        required :amount, String

        # @!attribute invoice_line_item_id
        #   The ID of the line item to credit.
        #
        #   @return [String]
        required :invoice_line_item_id, String

        # @!attribute end_date
        #   An optional date string to specify this line item's credit note service period
        #   end date in the customer's timezone. If provided, this will be used for this
        #   specific line item. If not provided, will use the global end_date if available,
        #   otherwise defaults to the original invoice line item's end date. This date is
        #   inclusive.
        #
        #   @return [Date, nil]
        optional :end_date, Date, nil?: true

        # @!attribute start_date
        #   An optional date string to specify this line item's credit note service period
        #   start date in the customer's timezone. If provided, this will be used for this
        #   specific line item. If not provided, will use the global start_date if
        #   available, otherwise defaults to the original invoice line item's start date.
        #   This date is inclusive.
        #
        #   @return [Date, nil]
        optional :start_date, Date, nil?: true

        # @!method initialize(amount:, invoice_line_item_id:, end_date: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::CreditNoteCreateParams::LineItem} for more details.
        #
        #   @param amount [String] The total amount in the invoice's currency to credit this line item.
        #
        #   @param invoice_line_item_id [String] The ID of the line item to credit.
        #
        #   @param end_date [Date, nil] An optional date string to specify this line item's credit note service period e
        #
        #   @param start_date [Date, nil] An optional date string to specify this line item's credit note service period s
      end

      # An optional reason for the credit note.
      module Reason
        extend Orb::Internal::Type::Enum

        DUPLICATE = :duplicate
        FRAUDULENT = :fraudulent
        ORDER_CHANGE = :order_change
        PRODUCT_UNSATISFACTORY = :product_unsatisfactory

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
