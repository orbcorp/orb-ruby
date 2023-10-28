require 'orb/models/metric_create_response'
require 'orb/models/metric_fetch_response'
require 'orb/models/metric_list_response'
require 'orb/pagination'
module Orb
    module Resources
        class MetricListResponsePage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::MetricListResponse)

        end

        class MetricsResource

                attr_reader
                def initialize(client:)
                    @client = client
                end
                def create(description: nil, item_id: nil, name: nil, sql: nil, metadata: nil)
                    request = {method: :post, path: "/metrics", body: {description: description, item_id: item_id, name: name, sql: sql, metadata: metadata, }, query: nil, }

                    @client.request(model: Orb::Models::MetricCreateResponse, **request)
                end
                def list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil)
                    request = {method: :get, path: "/metrics", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, limit: limit, }, }

                    @client.request(page: MetricListResponsePage, **request)
                end
                def fetch(metric_id)
                    request = {method: :get, path: "/metrics/#{metric_id}", body: {}, query: nil, }

                    @client.request(model: Orb::Models::MetricFetchResponse, **request)
                end

        end
    end
end