# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::InvoiceLineItemsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.invoice_line_items.create(
      amount: "12.00",
      end_date: "2023-09-22",
      invoice_id: "4khy3nwzktxv7",
      name: "Item Name",
      quantity: 1,
      start_date: "2023-09-22"
    )

    assert_pattern do
      response => Orb::Models::InvoiceLineItemCreateResponse
    end
  end
end
