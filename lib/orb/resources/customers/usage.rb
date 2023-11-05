require "orb/model"
require "orb/models/usage_update_by_external_id_response"
require "orb/models/usage_update_response"
module Orb
  module Resources
    module Customers
      class UsageResource
        attr_reader
        def initialize(client:)
          @client = client
        end
        def update(
          id,
          events: Orb::NotGiven.instance,
          timeframe_end: Orb::NotGiven.instance,
          timeframe_start: Orb::NotGiven.instance
        )
          request = {
            method: :patch,
            path: "/customers/#{id}/usage",
            body: {
              events: events
            },
            query: {
              timeframe_end: timeframe_end,
              timeframe_start: timeframe_start
            }
          }

          @client.request(model: Orb::Models::UsageUpdateResponse, **request)
        end
        def update_by_external_id(
          id,
          events: Orb::NotGiven.instance,
          timeframe_end: Orb::NotGiven.instance,
          timeframe_start: Orb::NotGiven.instance
        )
          request = {
            method: :patch,
            path: "/customers/external_customer_id/#{id}/usage",
            body: {
              events: events
            },
            query: {
              timeframe_end: timeframe_end,
              timeframe_start: timeframe_start
            }
          }

          @client.request(
            model: Orb::Models::UsageUpdateByExternalIDResponse,
            **request
          )
        end
      end
    end
  end
end
