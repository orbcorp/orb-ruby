# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::InvoiceLineItems#create
    class InvoiceLineItemCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute amount
      #   The total amount in the invoice's currency to add to the line item.
      #
      #   @return [String]
      required :amount, String

      # @!attribute end_date
      #   A date string to specify the line item's end date in the customer's timezone.
      #
      #   @return [Date]
      required :end_date, Date

      # @!attribute invoice_id
      #   The id of the Invoice to add this line item.
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute name
      #   The item name associated with this line item. If an item with the same name
      #   exists in Orb, that item will be associated with the line item.
      #
      #   @return [String]
      required :name, String

      # @!attribute quantity
      #   The number of units on the line item
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute start_date
      #   A date string to specify the line item's start date in the customer's timezone.
      #
      #   @return [Date]
      required :start_date, Date

      # @!method initialize(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceLineItemCreateParams} for more details.
      #
      #   @param amount [String] The total amount in the invoice's currency to add to the line item.
      #
      #   @param end_date [Date] A date string to specify the line item's end date in the customer's timezone.
      #
      #   @param invoice_id [String] The id of the Invoice to add this line item.
      #
      #   @param name [String] The item name associated with this line item. If an item with the same name exis
      #
      #   @param quantity [Float] The number of units on the line item
      #
      #   @param start_date [Date] A date string to specify the line item's start date in the customer's timezone.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
