# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Events::BackfillsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.events.backfills.create(
      timeframe_end: "2019-12-27T18:11:19.117Z",
      timeframe_start: "2019-12-27T18:11:19.117Z"
    )

    assert_pattern do
      response => Orb::Models::Events::BackfillCreateResponse
    end
  end

  def test_list
    response = @orb.events.backfills.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Events::BackfillListResponse
    end
  end

  def test_close
    response = @orb.events.backfills.close("backfill_id")

    assert_pattern do
      response => Orb::Models::Events::BackfillCloseResponse
    end
  end

  def test_fetch
    response = @orb.events.backfills.fetch("backfill_id")

    assert_pattern do
      response => Orb::Models::Events::BackfillFetchResponse
    end
  end

  def test_revert
    response = @orb.events.backfills.revert("backfill_id")

    assert_pattern do
      response => Orb::Models::Events::BackfillRevertResponse
    end
  end
end
