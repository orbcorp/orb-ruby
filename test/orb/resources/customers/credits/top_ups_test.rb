# frozen_string_literal: true

require_relative "../../../test_helper"

class Orb::Test::Resources::Customers::Credits::TopUpsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.customers.credits.top_ups.create(
      "customer_id",
      amount: "amount",
      currency: "currency",
      invoice_settings: {auto_collection: true, net_terms: 0},
      per_unit_cost_basis: "per_unit_cost_basis",
      threshold: "threshold"
    )

    assert_pattern do
      response => Orb::Models::Customers::Credits::TopUpCreateResponse
    end
  end

  def test_list
    response = @orb.customers.credits.top_ups.list("customer_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Customers::Credits::TopUpListResponse
    end
  end

  def test_delete_required_params
    response = @orb.customers.credits.top_ups.delete("top_up_id", customer_id: "customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_create_by_external_id_required_params
    response = @orb.customers.credits.top_ups.create_by_external_id(
      "external_customer_id",
      amount: "amount",
      currency: "currency",
      invoice_settings: {auto_collection: true, net_terms: 0},
      per_unit_cost_basis: "per_unit_cost_basis",
      threshold: "threshold"
    )

    assert_pattern do
      response => Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse
    end
  end

  def test_delete_by_external_id_required_params
    response = @orb.customers.credits.top_ups.delete_by_external_id(
      "top_up_id",
      external_customer_id: "external_customer_id"
    )

    assert_pattern do
      response => nil
    end
  end

  def test_list_by_external_id
    response = @orb.customers.credits.top_ups.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Customers::Credits::TopUpListByExternalIDResponse
    end
  end
end
