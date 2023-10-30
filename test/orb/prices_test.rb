require 'orb/model'
require 'orb/orb'
require 'test/unit'

class PricesResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_create_required_params
            response = @orb.prices.create(cadence: "annual", currency: "string", item_id: "string", model_type: "unit", name: "Annual fee", unit_config: {"unit_amount" => "string", })
            assert(Orb::Converter.same_type?(Orb::Unknown, response), response.class.to_s)
        end
        def test_list
            response = @orb.prices.list()
            assert(Orb::Converter.same_type?(Orb::Resources::PricePage, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.prices.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Unknown, response), response.class.to_s)
        end

end