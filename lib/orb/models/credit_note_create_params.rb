# frozen_string_literal: true

module Orb
  module Models
    class CreditNoteCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute line_items
      #
      #   @return [Array<Orb::Models::CreditNoteCreateParams::LineItem>]
      required :line_items, -> { Orb::ArrayOf[Orb::Models::CreditNoteCreateParams::LineItem] }

      # @!attribute memo
      #   An optional memo to attach to the credit note.
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!attribute reason
      #   An optional reason for the credit note.
      #
      #   @return [Symbol, Orb::Models::CreditNoteCreateParams::Reason, nil]
      optional :reason, enum: -> { Orb::Models::CreditNoteCreateParams::Reason }, nil?: true

      # @!parse
      #   # @param line_items [Array<Orb::Models::CreditNoteCreateParams::LineItem>]
      #   # @param memo [String, nil]
      #   # @param reason [Symbol, Orb::Models::CreditNoteCreateParams::Reason, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(line_items:, memo: nil, reason: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class LineItem < Orb::BaseModel
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

        # @!parse
        #   # @param amount [String]
        #   # @param invoice_line_item_id [String]
        #   #
        #   def initialize(amount:, invoice_line_item_id:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # An optional reason for the credit note.
      module Reason
        extend Orb::Enum

        DUPLICATE = :duplicate
        FRAUDULENT = :fraudulent
        ORDER_CHANGE = :order_change
        PRODUCT_UNSATISFACTORY = :product_unsatisfactory

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
