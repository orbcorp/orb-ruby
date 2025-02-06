# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::PricesTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.prices.create(
      cadence: :annual,
      currency: "currency",
      item_id: "item_id",
      model_type: :unit,
      name: "Annual fee",
      unit_config: {unit_amount: "unit_amount"}
    )

    assert_pattern do
      response => Orb::Models::Price
    end
  end

  def test_update
    response = @orb.prices.update("price_id")

    assert_pattern do
      response => Orb::Models::Price
    end
  end

  def test_list
    response = @orb.prices.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end
  end

  def test_evaluate_required_params
    response = @orb.prices.evaluate(
      "price_id",
      timeframe_end: "2019-12-27T18:11:19.117Z",
      timeframe_start: "2019-12-27T18:11:19.117Z"
    )

    assert_pattern do
      response => Orb::Models::PriceEvaluateResponse
    end
  end

  def test_fetch
    response = @orb.prices.fetch("price_id")

    assert_pattern do
      response => Orb::Models::Price
    end
  end
end
