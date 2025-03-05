# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Prices::ExternalPriceIDTest < Orb::Test::ResourceTest
  def test_update
    response = @orb.prices.external_price_id.update("external_price_id")

    assert_pattern do
      response => Orb::Models::PriceModel
    end
  end

  def test_fetch
    response = @orb.prices.external_price_id.fetch("external_price_id")

    assert_pattern do
      response => Orb::Models::PriceModel
    end
  end
end
