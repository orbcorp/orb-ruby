# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CustomersTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.customers.create(email: "dev@stainlessapi.com", name: "x")

    assert_pattern do
      response => Orb::Models::Customer
    end
  end

  def test_update
    response = @orb.customers.update("customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end
  end

  def test_list
    response = @orb.customers.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Customer
    end
  end

  def test_delete
    response = @orb.customers.delete("customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_fetch
    response = @orb.customers.fetch("customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end
  end

  def test_fetch_by_external_id
    response = @orb.customers.fetch_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end
  end

  def test_sync_payment_methods_from_gateway
    response = @orb.customers.sync_payment_methods_from_gateway("external_customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_sync_payment_methods_from_gateway_by_external_customer_id
    response = @orb.customers.sync_payment_methods_from_gateway_by_external_customer_id("customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_by_external_id
    response = @orb.customers.update_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end
  end
end
