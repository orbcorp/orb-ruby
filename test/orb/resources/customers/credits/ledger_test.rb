# frozen_string_literal: true

require_relative "../../../test_helper"

class Orb::Test::Resources::Customers::Credits::LedgerTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list
    response = @orb.customers.credits.ledger.list("customer_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end
  end

  def test_create_entry_required_params
    response = @orb.customers.credits.ledger.create_entry(
      "customer_id",
      entry_type: "expiration_change",
      expiry_date: "2019-12-27T18:11:19.117Z",
      target_expiry_date: "2019-12-27"
    )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryResponse
    end
  end

  def test_create_entry_by_external_id_required_params
    response = @orb.customers.credits.ledger.create_entry_by_external_id(
      "external_customer_id",
      entry_type: "expiration_change",
      expiry_date: "2019-12-27T18:11:19.117Z",
      target_expiry_date: "2019-12-27"
    )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse
    end
  end

  def test_list_by_external_id
    response = @orb.customers.credits.ledger.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end
  end
end
