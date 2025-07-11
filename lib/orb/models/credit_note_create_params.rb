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

      # @!attribute memo
      #   An optional memo to attach to the credit note.
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!method initialize(line_items:, reason:, memo: nil, request_options: {})
      #   @param line_items [Array<Orb::Models::CreditNoteCreateParams::LineItem>]
      #
      #   @param reason [Symbol, Orb::Models::CreditNoteCreateParams::Reason] An optional reason for the credit note.
      #
      #   @param memo [String, nil] An optional memo to attach to the credit note.
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

        # @!method initialize(amount:, invoice_line_item_id:)
        #   @param amount [String] The total amount in the invoice's currency to credit this line item.
        #
        #   @param invoice_line_item_id [String] The ID of the line item to credit.
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
