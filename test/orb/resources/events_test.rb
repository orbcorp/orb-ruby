# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::EventsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_update_required_params
    response = @orb.events.update(
      "event_id",
      event_name: "event_name",
      properties: {},
      timestamp: "2020-12-09T16:09:53Z"
    )

    assert_pattern do
      response => Orb::Models::EventUpdateResponse
    end

    assert_pattern do
      response => {
        amended: String
      }
    end
  end

  def test_deprecate
    response = @orb.events.deprecate("event_id")

    assert_pattern do
      response => Orb::Models::EventDeprecateResponse
    end

    assert_pattern do
      response => {
        deprecated: String
      }
    end
  end

  def test_ingest_required_params
    response = @orb.events.ingest(
      events: [
        {
          event_name: "event_name",
          idempotency_key: "idempotency_key",
          properties: {},
          timestamp: "2020-12-09T16:09:53Z"
        }
      ]
    )

    assert_pattern do
      response => Orb::Models::EventIngestResponse
    end

    assert_pattern do
      response => {
        validation_failed: ^(Orb::ArrayOf[Orb::Models::EventIngestResponse::ValidationFailed]),
        debug: Orb::Models::EventIngestResponse::Debug | nil
      }
    end
  end

  def test_search_required_params
    response = @orb.events.search(event_ids: ["string"])

    assert_pattern do
      response => Orb::Models::EventSearchResponse
    end

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::EventSearchResponse::Data])
      }
    end
  end
end
