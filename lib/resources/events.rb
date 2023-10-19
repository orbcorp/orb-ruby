require 'model'

require 'models/event_update_response'

require 'models/event_deprecate_response'

require 'models/event_ingest_response'

require 'models/event_search_response'

module Resources
    class EventsResource

            def initialize(client:)
                @client = client
            end
            def update(event_id, event_name: nil, properties: nil, timestamp: nil, customer_id: nil, external_customer_id: nil)
                response = @client.request(method: :put, path: "/events/#{event_id}", body: {event_name: event_name, properties: properties, timestamp: timestamp, customer_id: customer_id, external_customer_id: external_customer_id})

                Models::EventUpdateResponse.convert(**response)
            end
            def deprecate(event_id)
                response = @client.request(method: :put, path: "/events/#{event_id}/deprecate", body: {})

                Models::EventDeprecateResponse.convert(**response)
            end
            def ingest(events: nil, backfill_id: nil, debug: nil)
                response = @client.request(method: :post, path: "/ingest", body: {events: events}, query: {backfill_id: backfill_id, debug: debug})

                Models::EventIngestResponse.convert(**response)
            end
            def search(cursor: nil, limit: nil, timestamp_gt: nil, timestamp_gte: nil, timestamp_lt: nil, timestamp_lte: nil, event_ids: nil, invoice_id: nil)
                response = @client.request(method: :post, path: "/events/search", body: {event_ids: event_ids, invoice_id: invoice_id}, query: {cursor: cursor, limit: limit, timestamp[gt]: timestamp_gt, timestamp[gte]: timestamp_gte, timestamp[lt]: timestamp_lt, timestamp[lte]: timestamp_lte})

                Models::EventSearchResponse.convert(**response)
            end

    end
end