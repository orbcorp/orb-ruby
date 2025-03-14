# frozen_string_literal: true

module Orb
  module Resources
    class Metrics
      # This endpoint is used to create a [metric](/core-concepts###metric) using a SQL
      #   string. See [SQL support](/extensibility/advanced-metrics#sql-support) for a
      #   description of constructing SQL queries with examples.
      #
      # @param params [Orb::Models::MetricCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :description A description of the metric.
      #
      #   @option params [String] :item_id The id of the item
      #
      #   @option params [String] :name The name of the metric.
      #
      #   @option params [String] :sql A sql string defining the metric.
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::BillableMetric]
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

      # This endpoint allows you to update the `metadata` property on a metric. If you
      #   pass `null` for the metadata value, it will clear any existing metadata for that
      #   invoice.
      #
      # @param metric_id [String]
      #
      # @param params [Orb::Models::MetricUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::BillableMetric]
      def update(metric_id, params = {})
        parsed, options = Orb::Models::MetricUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["metrics/%0s", metric_id],
          body: parsed,
          model: Orb::Models::BillableMetric,
          options: options
        )
      end

      # This endpoint is used to fetch [metric](/core-concepts##metric) details given a
      #   metric identifier. It returns information about the metrics including its name,
      #   description, and item.
      #
      # @param params [Orb::Models::MetricListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time, nil] :created_at_gt
      #
      #   @option params [Time, nil] :created_at_gte
      #
      #   @option params [Time, nil] :created_at_lt
      #
      #   @option params [Time, nil] :created_at_lte
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::BillableMetric>]
      def list(params = {})
        parsed, options = Orb::Models::MetricListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "metrics",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::BillableMetric,
          options: options
        )
      end

      # This endpoint is used to list [metrics](/core-concepts#metric). It returns
      #   information about the metrics including its name, description, and item.
      #
      # @param metric_id [String]
      #
      # @param params [Orb::Models::MetricFetchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::BillableMetric]
      def fetch(metric_id, params = {})
        @client.request(
          method: :get,
          path: ["metrics/%0s", metric_id],
          model: Orb::Models::BillableMetric,
          options: params[:request_options]
        )
      end

      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
