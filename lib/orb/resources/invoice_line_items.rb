# frozen_string_literal: true

module Orb
  module Resources
    class InvoiceLineItems
      # This creates a one-off fixed fee invoice line item on an Invoice. This can only
      # be done for invoices that are in a `draft` status.
      #
      # @overload create(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {})
      #
      # @param amount [String]
      # @param end_date [Date]
      # @param invoice_id [String]
      # @param name [String]
      # @param quantity [Float]
      # @param start_date [Date]
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
