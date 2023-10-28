require 'orb/models/credit_note'
require 'orb/pagination'
module Orb
    module Resources
        class CreditNotePage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::CreditNote)

        end

        class CreditNotesResource

                attr_reader
                def initialize(client:)
                    @client = client
                end
                def list(cursor: nil, limit: nil)
                    request = {method: :get, path: "/credit_notes", body: {}, query: {cursor: cursor, limit: limit, }, }

                    @client.request(page: CreditNotePage, **request)
                end
                def fetch(credit_note_id)
                    request = {method: :get, path: "/credit_notes/#{credit_note_id}", body: {}, query: nil, }

                    @client.request(model: Orb::Models::CreditNote, **request)
                end

        end
    end
end