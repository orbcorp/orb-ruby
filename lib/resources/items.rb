require 'models/item_fetch_response'
require 'models/item_list_response'
require 'pagination'
require 'model'

module Resources
    class ItemListResponsePage < Page
      required :data, ArrayOf.new(Models::ItemListResponse)

    end

    class ItemsResource

            def initialize(client:)
                @client = client
            end
            def list(cursor: nil, limit: nil)
                request = {method: :get, path: "/items", body: {}, query: {cursor: cursor, limit: limit, }, }

                @client.request(page: ItemListResponsePage, **request)
            end
            def fetch(item_id)
                request = {method: :get, path: "/items/#{item_id}", body: {}, query: nil, }

                @client.request(model: Models::ItemFetchResponse, **request)
            end

    end
end