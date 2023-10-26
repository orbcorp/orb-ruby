require 'models/credit_note'
require 'pagination'
require 'model'

module Resources
    class CreditNotePage < Page
      required :data, ArrayOf.new(Models::CreditNote)

    end

    class CreditNotesResource

            def initialize(client:)
                @client = client
            end
            def list(cursor: nil, limit: nil)
                request = {method: :get, path: "/credit_notes", body: {}, query: {cursor: cursor, limit: limit, }, }

                @client.request(page: CreditNotePage, **request)
            end
            def fetch(credit_note_id)
                request = {method: :get, path: "/credit_notes/#{credit_note_id}", body: {}, query: nil, }

                @client.request(model: Models::CreditNote, **request)
            end

    end
end