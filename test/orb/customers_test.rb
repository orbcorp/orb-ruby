require 'orb/model'
require 'orb/models/customer'
require 'orb/orb'
require 'test/unit'

class CustomersResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(
                      base_url: "http://localhost:4010"
                    )
        end
        def test_create_required_params
            response = @orb.customers.create(email: "string", name: "string")
            assert(Orb::Converter.same_type?(Orb::Models::Customer, response), response.class.to_s)
        end
        def test_update
            response = @orb.customers.update("string")
            assert(Orb::Converter.same_type?(Orb::Models::Customer, response), response.class.to_s)
        end
        def test_list
            response = @orb.customers.list()
            assert(Orb::Converter.same_type?(Orb::Resources::CustomerPage, response), response.class.to_s)
        end
        def test_delete
            response = @orb.customers.delete("string")
            assert(Orb::Converter.same_type?(NilClass, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.customers.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::Customer, response), response.class.to_s)
        end
        def test_fetch_by_external_id
            response = @orb.customers.fetch_by_external_id("string")
            assert(Orb::Converter.same_type?(Orb::Models::Customer, response), response.class.to_s)
        end
        def test_update_by_external_id
            response = @orb.customers.update_by_external_id("string")
            assert(Orb::Converter.same_type?(Orb::Models::Customer, response), response.class.to_s)
        end

end