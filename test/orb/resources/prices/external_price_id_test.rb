# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Prices::ExternalPriceIDTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_update
    response = @orb.prices.external_price_id.update("external_price_id")

    assert_pattern do
      response => Orb::Models::Price
    end
  end

  def test_fetch
    response = @orb.prices.external_price_id.fetch("external_price_id")

    assert_pattern do
      response => Orb::Models::Price
    end
  end
end
