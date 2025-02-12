# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::CreditsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list
    response = @orb.customers.credits.list("customer_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Customers::CreditListResponse
    end
  end

  def test_list_by_external_id
    response = @orb.customers.credits.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Customers::CreditListByExternalIDResponse
    end
  end
end
