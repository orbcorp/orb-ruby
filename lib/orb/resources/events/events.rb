require 'orb/model'
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
                def update(event_id, event_name: Orb::NotGiven.instance, properties: Orb::NotGiven.instance, timestamp: Orb::NotGiven.instance, customer_id: Orb::NotGiven.instance, external_customer_id: Orb::NotGiven.instance)
                    request = {method: :put, path: "/events/#{event_id}", body: {event_name: event_name, properties: properties, timestamp: timestamp, customer_id: customer_id, external_customer_id: external_customer_id, }, query: nil, }

                    @client.request(model: Orb::Models::EventUpdateResponse, **request)
                end
                def deprecate(event_id)
                    request = {method: :put, path: "/events/#{event_id}/deprecate", query: nil, }

                    @client.request(model: Orb::Models::EventDeprecateResponse, **request)
                end
                def ingest(events: Orb::NotGiven.instance, backfill_id: Orb::NotGiven.instance, debug: Orb::NotGiven.instance)
                    request = {method: :post, path: "/ingest", body: {events: events, }, query: {backfill_id: backfill_id, debug: debug, }, }

                    @client.request(model: Orb::Models::EventIngestResponse, **request)
                end
                def search(cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, timestamp_gt: Orb::NotGiven.instance, timestamp_gte: Orb::NotGiven.instance, timestamp_lt: Orb::NotGiven.instance, timestamp_lte: Orb::NotGiven.instance, event_ids: Orb::NotGiven.instance, invoice_id: Orb::NotGiven.instance)
                    request = {method: :post, path: "/events/search", body: {event_ids: event_ids, invoice_id: invoice_id, }, query: {cursor: cursor, limit: limit, timestamp[gt]: timestamp_gt, timestamp[gte]: timestamp_gte, timestamp[lt]: timestamp_lt, timestamp[lte]: timestamp_lte, }, }

                    @client.request(model: Orb::Models::EventSearchResponse, **request)
                end

        end
    end
end