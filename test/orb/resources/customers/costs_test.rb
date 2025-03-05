# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::CostsTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.customers.costs.list("customer_id")

    assert_pattern do
      response => Orb::Models::CustomerCostsModel
    end

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::AggregatedCostModel])
      }
    end
  end

  def test_list_by_external_id
    response = @orb.customers.costs.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Models::CustomerCostsModel
    end

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::AggregatedCostModel])
      }
    end
  end
end
