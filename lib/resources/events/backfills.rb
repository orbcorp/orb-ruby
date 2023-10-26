require 'models/backfill_close_response'
require 'models/backfill_create_response'
require 'models/backfill_fetch_response'
require 'models/backfill_list_response'
require 'models/backfill_revert_response'
require 'pagination'
require 'model'

module Resources
    module Events
        class BackfillListResponsePage < Page
          required :data, ArrayOf.new(Models::BackfillListResponse)

        end

        class BackfillsResource

                def initialize(client:)
                    @client = client
                end
                def create(timeframe_end: nil, timeframe_start: nil, close_time: nil, customer_id: nil, external_customer_id: nil, replace_existing_events: nil)
                    request = {method: :post, path: "/events/backfills", body: {timeframe_end: timeframe_end, timeframe_start: timeframe_start, close_time: close_time, customer_id: customer_id, external_customer_id: external_customer_id, replace_existing_events: replace_existing_events, }, query: nil, }

                    @client.request(model: Models::BackfillCreateResponse, **request)
                end
                def list(cursor: nil, limit: nil)
                    request = {method: :get, path: "/events/backfills", body: {}, query: {cursor: cursor, limit: limit, }, }

                    @client.request(page: BackfillListResponsePage, **request)
                end
                def close(backfill_id)
                    request = {method: :post, path: "/events/backfills/#{backfill_id}/close", body: {}, query: nil, }

                    @client.request(model: Models::BackfillCloseResponse, **request)
                end
                def fetch(backfill_id)
                    request = {method: :get, path: "/events/backfills/#{backfill_id}", body: {}, query: nil, }

                    @client.request(model: Models::BackfillFetchResponse, **request)
                end
                def revert(backfill_id)
                    request = {method: :post, path: "/events/backfills/#{backfill_id}/revert", body: {}, query: nil, }

                    @client.request(model: Models::BackfillRevertResponse, **request)
                end

        end
    end
end