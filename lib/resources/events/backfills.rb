require 'models/backfill_close_response'
require 'models/backfill_create_response'
require 'models/backfill_fetch_response'
require 'models/backfill_list_response'
require 'models/backfill_revert_response'
require 'model'

module Resources
    module Events
        class BackfillsResource

                def initialize(client:)
                    @client = client
                end
                def create(timeframe_end: nil, timeframe_start: nil, close_time: nil, customer_id: nil, external_customer_id: nil, replace_existing_events: nil)
                    response = @client.request(method: :post, path: "/events/backfills", body: {timeframe_end: timeframe_end, timeframe_start: timeframe_start, close_time: close_time, customer_id: customer_id, external_customer_id: external_customer_id, replace_existing_events: replace_existing_events, })

                    Models::BackfillCreateResponse.convert(**response)
                end
                def list(cursor: nil, limit: nil)
                    response = @client.request(method: :get, path: "/events/backfills", body: {}, query: {cursor: cursor, limit: limit, })

                    Models::BackfillListResponse.convert(**response)
                end
                def close(backfill_id)
                    response = @client.request(method: :post, path: "/events/backfills/#{backfill_id}/close", body: {})

                    Models::BackfillCloseResponse.convert(**response)
                end
                def fetch(backfill_id)
                    response = @client.request(method: :get, path: "/events/backfills/#{backfill_id}", body: {})

                    Models::BackfillFetchResponse.convert(**response)
                end
                def revert(backfill_id)
                    response = @client.request(method: :post, path: "/events/backfills/#{backfill_id}/revert", body: {})

                    Models::BackfillRevertResponse.convert(**response)
                end

        end
    end
end