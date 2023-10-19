require 'model'

require 'models/top_level_ping_response'

module Resources
    class TopLevelResource

            def initialize(client:)
                @client = client
            end
            def ping
                response = @client.request(method: :get, path: "/ping", body: {})

                Models::TopLevelPingResponse.convert(**response)
            end

    end
end