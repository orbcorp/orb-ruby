require 'orb/model'
require 'orb/models/event_deprecate_response'
require 'orb/models/event_ingest_response'
require 'orb/models/event_search_response'
require 'orb/models/event_update_response'
require 'orb/orb'
require 'test/unit'

class EventsResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
        end
        def test_update_required_params
            response = @orb.events.update("string", event_name: "string", properties: {}, timestamp: "2020-12-09T16:09:53Z")
            assert(Orb::Converter.same_type?(Orb::Models::EventUpdateResponse, response), response.class.to_s)
        end
        def test_deprecate
            response = @orb.events.deprecate("string")
            assert(Orb::Converter.same_type?(Orb::Models::EventDeprecateResponse, response), response.class.to_s)
        end
        def test_ingest_required_params
            response = @orb.events.ingest(events: [{"event_name" => "string", "timestamp" => "2020-12-09T16:09:53Z", "properties" => {}, "idempotency_key" => "string", }, {"event_name" => "string", "timestamp" => "2020-12-09T16:09:53Z", "properties" => {}, "idempotency_key" => "string", }, {"event_name" => "string", "timestamp" => "2020-12-09T16:09:53Z", "properties" => {}, "idempotency_key" => "string", }])
            assert(Orb::Converter.same_type?(Orb::Models::EventIngestResponse, response), response.class.to_s)
        end
        def test_search_required_params
            response = @orb.events.search(event_ids: ["string", "string", "string"])
            assert(Orb::Converter.same_type?(Orb::Models::EventSearchResponse, response), response.class.to_s)
        end

end