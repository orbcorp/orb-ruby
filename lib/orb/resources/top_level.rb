require 'orb/models/top_level_ping_response'
module Orb
    module Resources
        class TopLevelResource

                attr_reader
                def initialize(client:)
                    @client = client
                end
                def ping
                    request = {method: :get, path: "/ping", body: {}, query: nil, }

                    @client.request(model: Orb::Models::TopLevelPingResponse, **request)
                end

        end
    end
end