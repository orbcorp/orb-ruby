# typed: strong

module Orb
  module Resources
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
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Models::BillableMetric)
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
        request_options: {}
      ); end
      # This endpoint allows you to update the `metadata` property on a metric. If you
      # pass `null` for the metadata value, it will clear any existing metadata for that
      # invoice.
      sig do
        params(
          metric_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Models::BillableMetric)
      end
      def update(
        metric_id,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      ); end
      # This endpoint is used to fetch [metric](/core-concepts##metric) details given a
      # metric identifier. It returns information about the metrics including its name,
      # description, and item.
      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Internal::Page[Orb::Models::BillableMetric])
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
        request_options: {}
      ); end
      # This endpoint is used to list [metrics](/core-concepts#metric). It returns
      # information about the metrics including its name, description, and item.
      sig { params(metric_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::BillableMetric) }
      def fetch(metric_id, request_options: {}); end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
