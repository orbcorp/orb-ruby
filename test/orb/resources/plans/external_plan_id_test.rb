# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Plans::ExternalPlanIDTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_update
    response = @orb.plans.external_plan_id.update("external_plan_id")

    assert_pattern do
      response => Orb::Models::Plan
    end
  end

  def test_fetch
    response = @orb.plans.external_plan_id.fetch("external_plan_id")

    assert_pattern do
      response => Orb::Models::Plan
    end
  end
end
