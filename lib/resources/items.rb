require 'models/item_fetch_response'
require 'models/item_list_response'
require 'model'

module Resources
    class ItemsResource

            def initialize(client:)
                @client = client
            end
            def list(cursor: nil, limit: nil)
                response = @client.request(method: :get, path: "/items", body: {}, query: {cursor: cursor, limit: limit, })

                Models::ItemListResponse.convert(**response)
            end
            def fetch(item_id)
                response = @client.request(method: :get, path: "/items/#{item_id}", body: {})

                Models::ItemFetchResponse.convert(**response)
            end

    end
end