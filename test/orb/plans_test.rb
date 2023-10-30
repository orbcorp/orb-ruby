require 'orb/model'
require 'orb/models/plan'
require 'orb/orb'
require 'test/unit'

class PlansResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_create_required_params
            response = @orb.plans.create(currency: "string", name: "string", prices: [{"name" => "Annual fee", "item_id" => "string", "cadence" => "annual", "model_type" => "unit", "unit_config" => {"unit_amount" => "string", }, }])
            assert(Orb::Converter.same_type?(Orb::Models::Plan, response), response.class.to_s)
        end
        def test_update
            response = @orb.plans.update("string")
            assert(Orb::Converter.same_type?(Orb::Models::Plan, response), response.class.to_s)
        end
        def test_list
            response = @orb.plans.list()
            assert(Orb::Converter.same_type?(Orb::Resources::PlanPage, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.plans.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::Plan, response), response.class.to_s)
        end

end