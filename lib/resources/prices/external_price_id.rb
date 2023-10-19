require 'model'

module Resources
    module Prices
        class ExternalPriceIDResource

                def initialize(client:)
                    @client = client
                end
                def fetch(external_price_id)
                    @client.request(method: :get, path: "/prices/external_price_id/#{external_price_id}", body: {})
                end

        end
    end
end