require 'orb/model'
require 'orb/models/invoice'
require 'orb/models/invoice_fetch_upcoming_response'
require 'orb/orb'
require 'test/unit'

class InvoicesResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_create_required_params
            response = @orb.invoices.create(currency: "USD", invoice_date: "2019-12-27T18:11:19.117Z", line_items: [{"start_date" => "2023-09-22", "end_date" => "2023-09-22", "quantity" => 1, "name" => "Line Item Name", "item_id" => "4khy3nwzktxv7", "model_type" => "unit", "unit_config" => {"unit_amount" => "string", }, }, {"start_date" => "2023-09-22", "end_date" => "2023-09-22", "quantity" => 1, "name" => "Line Item Name", "item_id" => "4khy3nwzktxv7", "model_type" => "unit", "unit_config" => {"unit_amount" => "string", }, }, {"start_date" => "2023-09-22", "end_date" => "2023-09-22", "quantity" => 1, "name" => "Line Item Name", "item_id" => "4khy3nwzktxv7", "model_type" => "unit", "unit_config" => {"unit_amount" => "string", }, }], net_terms: 0)
            assert(Orb::Converter.same_type?(Orb::Models::Invoice, response), response.class.to_s)
        end
        def test_list
            response = @orb.invoices.list()
            assert(Orb::Converter.same_type?(Orb::Resources::InvoicePage, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.invoices.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::Invoice, response), response.class.to_s)
        end
        def test_fetch_upcoming
            response = @orb.invoices.fetch_upcoming()
            assert(Orb::Converter.same_type?(Orb::Models::InvoiceFetchUpcomingResponse, response), response.class.to_s)
        end
        def test_issue
            response = @orb.invoices.issue("string")
            assert(Orb::Converter.same_type?(Orb::Models::Invoice, response), response.class.to_s)
        end
        def test_mark_paid_required_params
            response = @orb.invoices.mark_paid("string", external_id: "external_payment_id_123", notes: "string", payment_received_date: "2023-09-22")
            assert(Orb::Converter.same_type?(Orb::Models::Invoice, response), response.class.to_s)
        end
        def test_void
            response = @orb.invoices.void("string")
            assert(Orb::Converter.same_type?(Orb::Models::Invoice, response), response.class.to_s)
        end

end