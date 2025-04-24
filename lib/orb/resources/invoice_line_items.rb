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
      # @overload create(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {})
      #
      # @param amount [String] The total amount in the invoice's currency to add to the line item.
      #
      # @param end_date [Date] A date string to specify the line item's end date in the customer's timezone.
      #
      # @param invoice_id [String] The id of the Invoice to add this line item.
      #
      # @param name [String] The item name associated with this line item. If an item with the same name exis
      # ...
      #
      # @param quantity [Float] The number of units on the line item
      #
      # @param start_date [Date] A date string to specify the line item's start date in the customer's timezone.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::InvoiceLineItemCreateResponse]
      #
      # @see Orb::Models::InvoiceLineItemCreateParams
      def create(params)
        parsed, options = Orb::Models::InvoiceLineItemCreateParams.dump_request(params)
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
