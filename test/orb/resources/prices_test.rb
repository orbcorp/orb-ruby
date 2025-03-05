# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::PricesTest < Orb::Test::ResourceTest
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
      response => Orb::Models::PriceModel
    end
  end

  def test_update
    response = @orb.prices.update("price_id")

    assert_pattern do
      response => Orb::Models::PriceModel
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

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::PriceModel
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

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::EvaluatePriceGroup])
      }
    end
  end

  def test_fetch
    response = @orb.prices.fetch("price_id")

    assert_pattern do
      response => Orb::Models::PriceModel
    end
  end
end
