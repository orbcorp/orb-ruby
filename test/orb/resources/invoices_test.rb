# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::InvoicesTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.invoices.create(
      currency: "USD",
      invoice_date: "2019-12-27T18:11:19.117Z",
      line_items: [
        {
          end_date: "2023-09-22",
          item_id: "4khy3nwzktxv7",
          model_type: :unit,
          name: "Line Item Name",
          quantity: 1,
          start_date: "2023-09-22",
          unit_config: {unit_amount: "unit_amount"}
        }
      ],
      net_terms: 0
    )

    assert_pattern do
      response => Orb::Models::Invoice
    end
  end

  def test_update
    response = @orb.invoices.update("invoice_id")

    assert_pattern do
      response => Orb::Models::Invoice
    end
  end

  def test_list
    response = @orb.invoices.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Invoice
    end
  end

  def test_fetch
    response = @orb.invoices.fetch("invoice_id")

    assert_pattern do
      response => Orb::Models::Invoice
    end
  end

  def test_fetch_upcoming_required_params
    response = @orb.invoices.fetch_upcoming(subscription_id: "subscription_id")

    assert_pattern do
      response => Orb::Models::InvoiceFetchUpcomingResponse
    end
  end

  def test_issue
    response = @orb.invoices.issue("invoice_id")

    assert_pattern do
      response => Orb::Models::Invoice
    end
  end

  def test_mark_paid_required_params
    response = @orb.invoices.mark_paid("invoice_id", payment_received_date: "2023-09-22")

    assert_pattern do
      response => Orb::Models::Invoice
    end
  end

  def test_pay
    response = @orb.invoices.pay("invoice_id")

    assert_pattern do
      response => Orb::Models::Invoice
    end
  end

  def test_void
    response = @orb.invoices.void("invoice_id")

    assert_pattern do
      response => Orb::Models::Invoice
    end
  end
end
