# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::TopLevelTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_ping
    response = @orb.top_level.ping

    assert_pattern do
      response => Orb::Models::TopLevelPingResponse
    end

    assert_pattern do
      response => {
        response: String
      }
    end
  end
end
