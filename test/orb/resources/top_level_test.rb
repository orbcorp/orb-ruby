# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::TopLevelTest < Orb::Test::ResourceTest
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
