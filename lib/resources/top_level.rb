require 'models/top_level_ping_response'
require 'model'

module Resources
    class TopLevelResource

            def initialize(client:)
                @client = client
            end
            def ping
                request = {method: :get, path: "/ping", body: {}, query: nil, }

                @client.request(model: Models::TopLevelPingResponse, **request)
            end

    end
end