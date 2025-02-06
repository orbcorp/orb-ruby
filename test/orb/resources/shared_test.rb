# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::SharedTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end
end
