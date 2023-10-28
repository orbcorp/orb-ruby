require 'orb/models/item'
require 'orb/pagination'
module Orb
    module Resources
        class ItemPage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::Item)

        end

        class ItemsResource

                attr_reader
                def initialize(client:)
                    @client = client
                end
                def create(name: nil)
                    request = {method: :post, path: "/items", body: {name: name, }, query: nil, }

                    @client.request(model: Orb::Models::Item, **request)
                end
                def list(cursor: nil, limit: nil)
                    request = {method: :get, path: "/items", body: {}, query: {cursor: cursor, limit: limit, }, }

                    @client.request(page: ItemPage, **request)
                end
                def fetch(item_id)
                    request = {method: :get, path: "/items/#{item_id}", body: {}, query: nil, }

                    @client.request(model: Orb::Models::Item, **request)
                end

        end
    end
end