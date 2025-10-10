# frozen_string_literal: true

module Orb
  module Resources
    class InvoiceLineItems
      # Some parameter documentations has been truncated, see
      # {Orb::Models::InvoiceLineItemCreateParams} for more details.
      #
      # This creates a one-off fixed fee invoice line item on an Invoice. This can only
      # be done for invoices that are in a `draft` status.
      #
      # The behavior depends on which parameters are provided:
      #
      # - If `item_id` is provided without `name`: The item is looked up by ID, and the
      #   item's name is used for the line item.
      # - If `name` is provided without `item_id`: An item with the given name is
      #   searched for in the account. If found, that item is used. If not found, a new
      #   item is created with that name. The new item's name is used for the line item.
      # - If both `item_id` and `name` are provided: The item is looked up by ID for
      #   association, but the provided `name` is used for the line item (not the item's
      #   name).
      #
      # @overload create(amount:, end_date:, invoice_id:, quantity:, start_date:, item_id: nil, name: nil, request_options: {})
      #
      # @param amount [String] The total amount in the invoice's currency to add to the line item.
      #
      # @param end_date [Date] A date string to specify the line item's end date in the customer's timezone.
      #
      # @param invoice_id [String] The id of the Invoice to add this line item.
      #
      # @param quantity [Float] The number of units on the line item
      #
      # @param start_date [Date] A date string to specify the line item's start date in the customer's timezone.
      #
      # @param item_id [String, nil] The id of the item to associate with this line item. If provided without `name`,
      #
      # @param name [String, nil] The name to use for the line item. If `item_id` is not provided, Orb will search
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::InvoiceLineItemCreateResponse]
      #
      # @see Orb::Models::InvoiceLineItemCreateParams
      def create(params)
        parsed, options = Orb::InvoiceLineItemCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "invoice_line_items",
          body: parsed,
          model: Orb::Models::InvoiceLineItemCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
