require 'orb/model'
require 'orb/models/item'
require 'orb/orb'
require 'test/unit'

class ItemsResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_create_required_params
            response = @orb.items.create(name: "API requests")
            assert(Orb::Converter.same_type?(Orb::Models::Item, response), response.class.to_s)
        end
        def test_list
            response = @orb.items.list()
            assert(Orb::Converter.same_type?(Orb::Resources::ItemPage, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.items.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::Item, response), response.class.to_s)
        end

end