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

      # @!attribute item_id
      #   The id of the item to associate with this line item. If provided without `name`,
      #   the item's name will be used for the price/line item. If provided with `name`,
      #   the item will be associated but `name` will be used for the line item. At least
      #   one of `name` or `item_id` must be provided.
      #
      #   @return [String, nil]
      optional :item_id, String, nil?: true

      # @!attribute name
      #   The name to use for the line item. If `item_id` is not provided, Orb will search
      #   for an item with this name. If found, that item will be associated with the line
      #   item. If not found, a new item will be created with this name. If `item_id` is
      #   provided, this name will be used for the line item, but the item association
      #   will be based on `item_id`. At least one of `name` or `item_id` must be
      #   provided.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(amount:, end_date:, invoice_id:, quantity:, start_date:, item_id: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceLineItemCreateParams} for more details.
      #
      #   @param amount [String] The total amount in the invoice's currency to add to the line item.
      #
      #   @param end_date [Date] A date string to specify the line item's end date in the customer's timezone.
      #
      #   @param invoice_id [String] The id of the Invoice to add this line item.
      #
      #   @param quantity [Float] The number of units on the line item
      #
      #   @param start_date [Date] A date string to specify the line item's start date in the customer's timezone.
      #
      #   @param item_id [String, nil] The id of the item to associate with this line item. If provided without `name`,
      #
      #   @param name [String, nil] The name to use for the line item. If `item_id` is not provided, Orb will search
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
