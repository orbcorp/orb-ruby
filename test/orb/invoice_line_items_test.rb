require 'orb/model'
require 'orb/models/invoice_line_item_create_response'
require 'orb/orb'
require 'test/unit'

class InvoiceLineItemsResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_create_required_params
            response = @orb.invoice_line_items.create(amount: "12.00", end_date: "2023-09-22", invoice_id: "4khy3nwzktxv7", name: "Item Name", quantity: 1, start_date: "2023-09-22")
            assert(Orb::Converter.same_type?(Orb::Models::InvoiceLineItemCreateResponse, response), response.class.to_s)
        end

end