require 'orb/model'
require 'orb/models/top_level_ping_response'
require 'orb/orb'
require 'test/unit'

class TopLevelResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_ping
            response = @orb.top_level.ping()
            assert(Orb::Converter.same_type?(Orb::Models::TopLevelPingResponse, response), response.class.to_s)
        end

end