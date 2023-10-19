require 'model'

require 'models/metric_create_response'

require 'models/metric_list_response'

require 'models/metric_fetch_response'

module Resources
    class MetricsResource

            def initialize(client:)
                @client = client
            end
            def create(description: nil, item_id: nil, name: nil, sql: nil, metadata: nil)
                response = @client.request(method: :post, path: "/metrics", body: {description: description, item_id: item_id, name: name, sql: sql, metadata: metadata})

                Models::MetricCreateResponse.convert(**response)
            end
            def list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil)
                response = @client.request(method: :get, path: "/metrics", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, limit: limit})

                Models::MetricListResponse.convert(**response)
            end
            def fetch(metric_id)
                response = @client.request(method: :get, path: "/metrics/#{metric_id}", body: {})

                Models::MetricFetchResponse.convert(**response)
            end

    end
end