require 'models/usage_update_by_external_id_response'
require 'models/usage_update_response'
require 'model'

module Resources
    module Customers
        class UsageResource

                def initialize(client:)
                    @client = client
                end
                def update(id, event_name: nil, properties: nil, timestamp: nil, timeframe_end: nil, timeframe_start: nil, customer_id: nil, external_customer_id: nil)
                    response = @client.request(method: :patch, path: "/customers/#{id}/usage", body: {event_name: event_name, properties: properties, timestamp: timestamp, customer_id: customer_id, external_customer_id: external_customer_id}, query: {timeframe_end: timeframe_end, timeframe_start: timeframe_start})

                    Models::UsageUpdateResponse.convert(**response)
                end
                def update_by_external_id(id, event_name: nil, properties: nil, timestamp: nil, timeframe_end: nil, timeframe_start: nil, customer_id: nil, external_customer_id: nil)
                    response = @client.request(method: :patch, path: "/customers/external_customer_id/#{id}/usage", body: {event_name: event_name, properties: properties, timestamp: timestamp, customer_id: customer_id, external_customer_id: external_customer_id}, query: {timeframe_end: timeframe_end, timeframe_start: timeframe_start})

                    Models::UsageUpdateByExternalIDResponse.convert(**response)
                end

        end
    end
end