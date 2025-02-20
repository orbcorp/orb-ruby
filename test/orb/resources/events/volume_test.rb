# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Events::VolumeTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list_required_params
    response = @orb.events.volume.list(timeframe_start: "2019-12-27T18:11:19.117Z")

    assert_pattern do
      response => Orb::Models::Events::EventVolumes
    end

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::Events::EventVolumes::Data])
      }
    end
  end
end
