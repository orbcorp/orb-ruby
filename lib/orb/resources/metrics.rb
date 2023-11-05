require "orb/model"
require "orb/models/metric_create_response"
require "orb/models/metric_fetch_response"
require "orb/models/metric_list_response"
require "orb/pagination"
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
      def create(
        description: Orb::NotGiven.instance,
        item_id: Orb::NotGiven.instance,
        name: Orb::NotGiven.instance,
        sql: Orb::NotGiven.instance,
        metadata: Orb::NotGiven.instance
      )
        request = {
          method: :post,
          path: "/metrics",
          body: {
            description: description,
            item_id: item_id,
            name: name,
            sql: sql,
            metadata: metadata
          },
          query: nil
        }

        @client.request(model: Orb::Models::MetricCreateResponse, **request)
      end
      def list(
        created_at_gt: Orb::NotGiven.instance,
        created_at_gte: Orb::NotGiven.instance,
        created_at_lt: Orb::NotGiven.instance,
        created_at_lte: Orb::NotGiven.instance,
        cursor: Orb::NotGiven.instance,
        limit: Orb::NotGiven.instance
      )
        request = {
          method: :get,
          path: "/metrics",
          query: {
            "created_at[gt]": created_at_gt,
            "created_at[gte]": created_at_gte,
            "created_at[lt]": created_at_lt,
            "created_at[lte]": created_at_lte,
            cursor: cursor,
            limit: limit
          }
        }

        @client.request(page: MetricListResponsePage, **request)
      end
      def fetch(metric_id)
        request = { method: :get, path: "/metrics/#{metric_id}", query: nil }

        @client.request(model: Orb::Models::MetricFetchResponse, **request)
      end
    end
  end
end
