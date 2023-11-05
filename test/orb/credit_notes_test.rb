require 'orb/model'
require 'orb/models/credit_note'
require 'orb/orb'
require 'test/unit'

class CreditNotesResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
        end
        def test_list
            response = @orb.credit_notes.list()
            assert(Orb::Converter.same_type?(Orb::Resources::CreditNotePage, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.credit_notes.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::CreditNote, response), response.class.to_s)
        end

end