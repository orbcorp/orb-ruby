require "orb/model"
require "orb/models/invoice_line_item_create_response"
module Orb
  module Resources
    class InvoiceLineItemsResource
      attr_reader
      def initialize(client:)
        @client = client
      end
      def create(
        amount: Orb::NotGiven.instance,
        end_date: Orb::NotGiven.instance,
        invoice_id: Orb::NotGiven.instance,
        name: Orb::NotGiven.instance,
        quantity: Orb::NotGiven.instance,
        start_date: Orb::NotGiven.instance
      )
        request = {
          method: :post,
          path: "/invoice_line_items",
          body: {
            amount: amount,
            end_date: end_date,
            invoice_id: invoice_id,
            name: name,
            quantity: quantity,
            start_date: start_date
          },
          query: nil
        }

        @client.request(
          model: Orb::Models::InvoiceLineItemCreateResponse,
          **request
        )
      end
    end
  end
end
