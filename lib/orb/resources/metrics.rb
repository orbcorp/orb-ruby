# frozen_string_literal: true

module Orb
  module Resources
    class Metrics
      # Some parameter documentations has been truncated, see
      # {Orb::Models::MetricCreateParams} for more details.
      #
      # This endpoint is used to create a [metric](/core-concepts###metric) using a SQL
      # string. See [SQL support](/extensibility/advanced-metrics#sql-support) for a
      # description of constructing SQL queries with examples.
      #
      # @overload create(description:, item_id:, name:, sql:, metadata: nil, request_options: {})
      #
      # @param description [String, nil] A description of the metric.
      #
      # @param item_id [String] The id of the item
      #
      # @param name [String] The name of the metric.
      #
      # @param sql [String] A sql string defining the metric.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      # ...
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::BillableMetric]
      #
      # @see Orb::Models::MetricCreateParams
      def create(params)
        parsed, options = Orb::Models::MetricCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "metrics",
          body: parsed,
          model: Orb::Models::BillableMetric,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::MetricUpdateParams} for more details.
      #
      # This endpoint allows you to update the `metadata` property on a metric. If you
      # pass `null` for the metadata value, it will clear any existing metadata for that
      # invoice.
      #
      # @overload update(metric_id, metadata: nil, request_options: {})
      #
      # @param metric_id [String]
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      # ...
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::BillableMetric]
      #
      # @see Orb::Models::MetricUpdateParams
      def update(metric_id, params = {})
        parsed, options = Orb::Models::MetricUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["metrics/%1$s", metric_id],
          body: parsed,
          model: Orb::Models::BillableMetric,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::MetricListParams} for more details.
      #
      # This endpoint is used to fetch [metric](/core-concepts##metric) details given a
      # metric identifier. It returns information about the metrics including its name,
      # description, and item.
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param created_at_gt [Time, nil]
      #
      # @param created_at_gte [Time, nil]
      #
      # @param created_at_lt [Time, nil]
      #
      # @param created_at_lte [Time, nil]
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      # ...
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::BillableMetric>]
      #
      # @see Orb::Models::MetricListParams
      def list(params = {})
        parsed, options = Orb::Models::MetricListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "metrics",
          query: parsed.transform_keys(
            created_at_gt: "created_at[gt]",
            created_at_gte: "created_at[gte]",
            created_at_lt: "created_at[lt]",
            created_at_lte: "created_at[lte]"
          ),
          page: Orb::Internal::Page,
          model: Orb::Models::BillableMetric,
          options: options
        )
      end

      # This endpoint is used to list [metrics](/core-concepts#metric). It returns
      # information about the metrics including its name, description, and item.
      #
      # @overload fetch(metric_id, request_options: {})
      #
      # @param metric_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::BillableMetric]
      #
      # @see Orb::Models::MetricFetchParams
      def fetch(metric_id, params = {})
        @client.request(
          method: :get,
          path: ["metrics/%1$s", metric_id],
          model: Orb::Models::BillableMetric,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
