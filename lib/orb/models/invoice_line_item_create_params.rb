# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::InvoiceLineItems#create
    class InvoiceLineItemCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

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
      #     exists in Orb, that item will be associated with the line item.
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

      # @!parse
      #   # @param amount [String]
      #   # @param end_date [Date]
      #   # @param invoice_id [String]
      #   # @param name [String]
      #   # @param quantity [Float]
      #   # @param start_date [Date]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
