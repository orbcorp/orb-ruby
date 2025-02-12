# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::DimensionalPriceGroupsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.dimensional_price_groups.create(
      billable_metric_id: "billable_metric_id",
      dimensions: %w[region instance_type],
      name: "name"
    )

    assert_pattern do
      response => Orb::Models::DimensionalPriceGroup
    end
  end

  def test_retrieve
    response = @orb.dimensional_price_groups.retrieve("dimensional_price_group_id")

    assert_pattern do
      response => Orb::Models::DimensionalPriceGroup
    end
  end

  def test_list
    response = @orb.dimensional_price_groups.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::DimensionalPriceGroup
    end
  end
end
