# frozen_string_literal: true

module Orb
  module Resources
    class InvoiceLineItems
      # This creates a one-off fixed fee invoice line item on an Invoice. This can only
      #   be done for invoices that are in a `draft` status.
      #
      # @param params [Orb::Models::InvoiceLineItemCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :amount The total amount in the invoice's currency to add to the line item.
      #
      #   @option params [Date] :end_date A date string to specify the line item's end date in the customer's timezone.
      #
      #   @option params [String] :invoice_id The id of the Invoice to add this line item.
      #
      #   @option params [String] :name The item name associated with this line item. If an item with the same name
      #     exists in Orb, that item will be associated with the line item.
      #
      #   @option params [Float] :quantity The number of units on the line item
      #
      #   @option params [Date] :start_date A date string to specify the line item's start date in the customer's timezone.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::InvoiceLineItemCreateResponse]
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

      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
