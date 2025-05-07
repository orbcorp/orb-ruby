# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Events::VolumeTest < Orb::Test::ResourceTest
  def test_list_required_params
    response = @orb.events.volume.list(timeframe_start: "2019-12-27T18:11:19.117Z")

    assert_pattern do
      response => Orb::Events::EventVolumes
    end

    assert_pattern do
      response => {
        data: ^(Orb::Internal::Type::ArrayOf[Orb::Events::EventVolumes::Data])
      }
    end
  end
end
