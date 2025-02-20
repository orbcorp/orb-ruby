# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::CostsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list
    response = @orb.customers.costs.list("customer_id")

    assert_pattern do
      response => Orb::Models::Customers::CostListResponse
    end

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::Customers::CostListResponse::Data])
      }
    end
  end

  def test_list_by_external_id
    response = @orb.customers.costs.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Models::Customers::CostListByExternalIDResponse
    end

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::Customers::CostListByExternalIDResponse::Data])
      }
    end
  end
end
