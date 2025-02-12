# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::PlansTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.plans.create(
      currency: "currency",
      name: "name",
      prices: [
        {
          cadence: :annual,
          item_id: "item_id",
          model_type: :unit,
          name: "Annual fee",
          unit_config: {unit_amount: "unit_amount"}
        }
      ]
    )

    assert_pattern do
      response => Orb::Models::Plan
    end
  end

  def test_update
    response = @orb.plans.update("plan_id")

    assert_pattern do
      response => Orb::Models::Plan
    end
  end

  def test_list
    response = @orb.plans.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Plan
    end
  end

  def test_fetch
    response = @orb.plans.fetch("plan_id")

    assert_pattern do
      response => Orb::Models::Plan
    end
  end
end
