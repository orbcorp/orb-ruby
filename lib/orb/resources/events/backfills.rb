require 'orb/model'
require 'orb/models/backfill_close_response'
require 'orb/models/backfill_create_response'
require 'orb/models/backfill_fetch_response'
require 'orb/models/backfill_list_response'
require 'orb/models/backfill_revert_response'
require 'orb/pagination'
module Orb
    module Resources
        module Events
            class BackfillListResponsePage < Page
              required :data, Orb::ArrayOf.new(Orb::Models::BackfillListResponse)

            end

            class BackfillsResource

                    attr_reader
                    def initialize(client:)
                        @client = client
                    end
                    def create(timeframe_end: Orb::NotGiven.instance, timeframe_start: Orb::NotGiven.instance, close_time: Orb::NotGiven.instance, customer_id: Orb::NotGiven.instance, external_customer_id: Orb::NotGiven.instance, replace_existing_events: Orb::NotGiven.instance)
                        request = {method: :post, path: "/events/backfills", body: {timeframe_end: timeframe_end, timeframe_start: timeframe_start, close_time: close_time, customer_id: customer_id, external_customer_id: external_customer_id, replace_existing_events: replace_existing_events, }, query: nil, }

                        @client.request(model: Orb::Models::BackfillCreateResponse, **request)
                    end
                    def list(cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance)
                        request = {method: :get, path: "/events/backfills", query: {cursor: cursor, limit: limit, }, }

                        @client.request(page: BackfillListResponsePage, **request)
                    end
                    def close(backfill_id)
                        request = {method: :post, path: "/events/backfills/#{backfill_id}/close", query: nil, }

                        @client.request(model: Orb::Models::BackfillCloseResponse, **request)
                    end
                    def fetch(backfill_id)
                        request = {method: :get, path: "/events/backfills/#{backfill_id}", query: nil, }

                        @client.request(model: Orb::Models::BackfillFetchResponse, **request)
                    end
                    def revert(backfill_id)
                        request = {method: :post, path: "/events/backfills/#{backfill_id}/revert", query: nil, }

                        @client.request(model: Orb::Models::BackfillRevertResponse, **request)
                    end

            end
        end
    end
end