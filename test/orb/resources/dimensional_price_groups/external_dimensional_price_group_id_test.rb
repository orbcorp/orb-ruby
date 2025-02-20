# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @orb.dimensional_price_groups.external_dimensional_price_group_id.retrieve(
      "external_dimensional_price_group_id"
    )

    assert_pattern do
      response => Orb::Models::DimensionalPriceGroup
    end

    assert_pattern do
      response => {
        id: String,
        billable_metric_id: String,
        dimensions: ^(Orb::ArrayOf[String]),
        external_dimensional_price_group_id: String | nil,
        metadata: ^(Orb::HashOf[String]),
        name: String
      }
    end
  end
end
