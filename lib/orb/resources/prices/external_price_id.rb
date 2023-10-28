module Orb
    module Resources
        module Prices
            class ExternalPriceIDResource

                    attr_reader
                    def initialize(client:)
                        @client = client
                    end
                    def fetch(external_price_id)
                        request = {method: :get, path: "/prices/external_price_id/#{external_price_id}", body: {}, query: nil, }

                        @client.request(**request)
                    end

            end
        end
    end
end