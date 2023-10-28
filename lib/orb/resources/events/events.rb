require 'orb/models/event_deprecate_response'
require 'orb/models/event_ingest_response'
require 'orb/models/event_search_response'
require 'orb/models/event_update_response'
require 'orb/resources/events/backfills'
module Orb
    module Resources
        class EventsResource

                attr_reader :backfills
                def initialize(client:)
                    @client = client
                    @backfills = Orb::Resources::Events::BackfillsResource.new(client: client)
                end
                def update(event_id, event_name: nil, properties: nil, timestamp: nil, customer_id: nil, external_customer_id: nil)
                    request = {method: :put, path: "/events/#{event_id}", body: {event_name: event_name, properties: properties, timestamp: timestamp, customer_id: customer_id, external_customer_id: external_customer_id, }, query: nil, }

                    @client.request(model: Orb::Models::EventUpdateResponse, **request)
                end
                def deprecate(event_id)
                    request = {method: :put, path: "/events/#{event_id}/deprecate", body: {}, query: nil, }

                    @client.request(model: Orb::Models::EventDeprecateResponse, **request)
                end
                def ingest(events: nil, backfill_id: nil, debug: nil)
                    request = {method: :post, path: "/ingest", body: {events: events, }, query: {backfill_id: backfill_id, debug: debug, }, }

                    @client.request(model: Orb::Models::EventIngestResponse, **request)
                end
                def search(cursor: nil, limit: nil, timestamp_gt: nil, timestamp_gte: nil, timestamp_lt: nil, timestamp_lte: nil, event_ids: nil, invoice_id: nil)
                    request = {method: :post, path: "/events/search", body: {event_ids: event_ids, invoice_id: invoice_id, }, query: {cursor: cursor, limit: limit, timestamp[gt]: timestamp_gt, timestamp[gte]: timestamp_gte, timestamp[lt]: timestamp_lt, timestamp[lte]: timestamp_lte, }, }

                    @client.request(model: Orb::Models::EventSearchResponse, **request)
                end

        end
    end
end