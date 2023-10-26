require 'models/usage_update_by_external_id_response'
require 'models/usage_update_response'
require 'model'

module Resources
    module Customers
        class UsageResource

                def initialize(client:)
                    @client = client
                end
                def update(id, events: nil, timeframe_end: nil, timeframe_start: nil)
                    response = @client.request(method: :patch, path: "/customers/#{id}/usage", body: {events: events, }, query: {timeframe_end: timeframe_end, timeframe_start: timeframe_start, })

                    Models::UsageUpdateResponse.convert(**response)
                end
                def update_by_external_id(id, events: nil, timeframe_end: nil, timeframe_start: nil)
                    response = @client.request(method: :patch, path: "/customers/external_customer_id/#{id}/usage", body: {events: events, }, query: {timeframe_end: timeframe_end, timeframe_start: timeframe_start, })

                    Models::UsageUpdateByExternalIDResponse.convert(**response)
                end

        end
    end
end