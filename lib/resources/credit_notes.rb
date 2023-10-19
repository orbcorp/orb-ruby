require 'model'

require 'models/credit_note'

module Resources
    class CreditNotesResource

            def initialize(client:)
                @client = client
            end
            def list(cursor: nil, limit: nil)
                response = @client.request(method: :get, path: "/credit_notes", body: {}, query: {cursor: cursor, limit: limit})

                Models::CreditNote.convert(**response)
            end
            def fetch(credit_note_id)
                response = @client.request(method: :get, path: "/credit_notes/#{credit_note_id}", body: {})

                Models::CreditNote.convert(**response)
            end

    end
end