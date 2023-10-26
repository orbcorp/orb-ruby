require 'models/invoice_line_item_create_response'
require 'model'

module Resources
    class InvoiceLineItemsResource

            def initialize(client:)
                @client = client
            end
            def create(amount: nil, end_date: nil, invoice_id: nil, name: nil, quantity: nil, start_date: nil)
                request = {method: :post, path: "/invoice_line_items", body: {amount: amount, end_date: end_date, invoice_id: invoice_id, name: name, quantity: quantity, start_date: start_date, }, query: nil, }

                @client.request(model: Models::InvoiceLineItemCreateResponse, **request)
            end

    end
end