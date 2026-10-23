# frozen_string_literal: true

module Orb
  module Resources
    # The Metric resource represents a calculation of a quantity based on events.
    # Metrics are defined by the query that transforms raw usage events into
    # meaningful values for your customers.
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
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::BillableMetric]
      #
      # @see Orb::Models::MetricCreateParams
      def create(params)
        parsed, options = Orb::MetricCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "metrics",
          body: parsed,
          model: Orb::BillableMetric,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::MetricUpdateParams} for more details.
      #
      # This endpoint allows you to update the `name`, `description`, and `metadata`
      # properties on a metric. Fields left out of the request are not changed, and
      # `name` cannot be empty. If you pass `null` for the metadata value, it will clear
      # any existing metadata for that metric.
      #
      # @overload update(metric_id, description: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param metric_id [String]
      #
      # @param description [String, nil] A description of the metric.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      # @param name [String, nil] The name of the metric.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::BillableMetric]
      #
      # @see Orb::Models::MetricUpdateParams
      def update(metric_id, params = {})
        parsed, options = Orb::MetricUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["metrics/%1$s", metric_id],
          body: parsed,
          model: Orb::BillableMetric,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::MetricListParams} for more details.
      #
      # This endpoint is used to list [metrics](/core-concepts#metric). It returns
      # information about the metrics including its name, description, and item.
      #
      # Pass `status` to only return metrics with that status, e.g. `status=active` to
      # leave out archived metrics.
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, status: nil, request_options: {})
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
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param status [Symbol, Orb::Models::MetricListParams::Status, nil] The metric status to filter to ('active', 'archived', or 'draft').
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::BillableMetric>]
      #
      # @see Orb::Models::MetricListParams
      def list(params = {})
        parsed, options = Orb::MetricListParams.dump_request(params)
        query = Orb::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "metrics",
          query: query.transform_keys(
            created_at_gt: "created_at[gt]",
            created_at_gte: "created_at[gte]",
            created_at_lt: "created_at[lt]",
            created_at_lte: "created_at[lte]"
          ),
          page: Orb::Internal::Page,
          model: Orb::BillableMetric,
          options: options
        )
      end

      # This endpoint archives a [metric](/core-concepts#metric). Archived metrics are
      # left out of `GET /v1/metrics` when filtering with `status=active`, and can't be
      # chosen when creating new plans in the Orb dashboard.
      #
      # Archiving does not change existing prices, plans, or subscriptions that use the
      # metric, and usage on those prices continues to be billed. A metric that is
      # already archived cannot be archived again.
      #
      # @overload archive(metric_id, request_options: {})
      #
      # @param metric_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::BillableMetric]
      #
      # @see Orb::Models::MetricArchiveParams
      def archive(metric_id, params = {})
        @client.request(
          method: :post,
          path: ["metrics/%1$s/archive", metric_id],
          model: Orb::BillableMetric,
          options: params[:request_options]
        )
      end

      # This endpoint is used to fetch [metric](/core-concepts#metric) details given a
      # metric identifier. It returns information about the metrics including its name,
      # description, and item.
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
          model: Orb::BillableMetric,
          options: params[:request_options]
        )
      end

      # This endpoint restores an archived [metric](/core-concepts#metric) to `active`,
      # so it can be chosen for new plans again. Only archived metrics can be
      # unarchived.
      #
      # @overload unarchive(metric_id, request_options: {})
      #
      # @param metric_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::BillableMetric]
      #
      # @see Orb::Models::MetricUnarchiveParams
      def unarchive(metric_id, params = {})
        @client.request(
          method: :post,
          path: ["metrics/%1$s/unarchive", metric_id],
          model: Orb::BillableMetric,
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
