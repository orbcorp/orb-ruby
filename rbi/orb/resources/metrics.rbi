# typed: strong

module Orb
  module Resources
    # The Metric resource represents a calculation of a quantity based on events.
    # Metrics are defined by the query that transforms raw usage events into
    # meaningful values for your customers.
    class Metrics
      # This endpoint is used to create a [metric](/core-concepts###metric) using a SQL
      # string. See [SQL support](/extensibility/advanced-metrics#sql-support) for a
      # description of constructing SQL queries with examples.
      sig do
        params(
          description: T.nilable(String),
          item_id: String,
          name: String,
          sql: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          status: Orb::MetricCreateParams::Status::OrSymbol,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::BillableMetric)
      end
      def create(
        # A description of the metric.
        description:,
        # The id of the item
        item_id:,
        # The name of the metric.
        name:,
        # A sql string defining the metric.
        sql:,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The status of the metric to create (either active or draft). If not specified,
        # this defaults to active. A draft metric's `sql` and `item_id` can be changed
        # until it's published.
        status: nil,
        request_options: {}
      )
      end

      # This endpoint allows you to update the `name`, `description`, and `metadata`
      # properties on a metric. Fields left out of the request are not changed, and
      # `name` cannot be empty. If you pass `null` for the metadata value, it will clear
      # any existing metadata for that metric.
      #
      # While a metric is in `draft` status, its `sql` and `item_id` can also be
      # changed. Use [publish metric](/api-reference/metric/publish-metric) to make a
      # draft metric active.
      sig do
        params(
          metric_id: String,
          description: T.nilable(String),
          item_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          sql: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::BillableMetric)
      end
      def update(
        metric_id,
        # A description of the metric.
        description: nil,
        # The id of the item to associate the metric with. Can only be changed while the
        # metric is in `draft` status.
        item_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The name of the metric.
        name: nil,
        # A new sql string defining the metric. Can only be changed while the metric is in
        # `draft` status and no price uses it. If the metric has parameters, the new sql
        # must use the same ones.
        sql: nil,
        request_options: {}
      )
      end

      # This endpoint is used to list [metrics](/core-concepts#metric). It returns
      # information about the metrics including its name, description, and item.
      #
      # Pass `status` to only return metrics with that status, e.g. `status=active` to
      # leave out archived metrics.
      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          status: T.nilable(Orb::MetricListParams::Status::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::BillableMetric])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        # The metric status to filter to ('active', 'archived', or 'draft').
        status: nil,
        request_options: {}
      )
      end

      # This endpoint archives a [metric](/core-concepts#metric). Archived metrics are
      # left out of `GET /v1/metrics` when filtering with `status=active`, and can't be
      # chosen when creating new plans in the Orb dashboard.
      #
      # Archiving does not change existing prices, plans, or subscriptions that use the
      # metric, and usage on those prices continues to be billed. A metric that is
      # already archived cannot be archived again.
      sig do
        params(
          metric_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::BillableMetric)
      end
      def archive(metric_id, request_options: {})
      end

      # This endpoint is used to fetch [metric](/core-concepts#metric) details given a
      # metric identifier. It returns information about the metrics including its name,
      # description, and item.
      sig do
        params(
          metric_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::BillableMetric)
      end
      def fetch(metric_id, request_options: {})
      end

      # This endpoint publishes a [metric](/core-concepts#metric) in `draft` status,
      # making it `active`. Only draft metrics can be published, and an active metric
      # can't be moved back into `draft`, so its `sql` and `item_id` can no longer be
      # changed.
      sig do
        params(
          metric_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::BillableMetric)
      end
      def publish(metric_id, request_options: {})
      end

      # This endpoint restores an archived [metric](/core-concepts#metric) to `active`,
      # so it can be chosen for new plans again. Only archived metrics can be
      # unarchived.
      sig do
        params(
          metric_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::BillableMetric)
      end
      def unarchive(metric_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
