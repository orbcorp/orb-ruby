require 'orb/model'
require 'orb/models/metric_create_response'
require 'orb/models/metric_fetch_response'
require 'orb/orb'
require 'test/unit'

class MetricsResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_create_required_params
            response = @orb.metrics.create(description: "Sum of bytes downloaded in fast mode", item_id: "string", name: "Bytes downloaded", sql: "SELECT sum(bytes_downloaded) FROM events WHERE download_speed = 'fast'")
            assert(Orb::Converter.same_type?(Orb::Models::MetricCreateResponse, response), response.class.to_s)
        end
        def test_list
            response = @orb.metrics.list()
            assert(Orb::Converter.same_type?(Orb::Resources::MetricListResponsePage, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.metrics.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::MetricFetchResponse, response), response.class.to_s)
        end

end