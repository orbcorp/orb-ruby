# typed: strong

module Orb
  module Resources
    class Metrics
      sig do
        params(
          description: T.nilable(String),
          item_id: String,
          name: String,
          sql: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::BillableMetric)
      end
      def create(description:, item_id:, name:, sql:, metadata: nil, request_options: {})
      end

      sig do
        params(
          metric_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::BillableMetric)
      end
      def update(metric_id, metadata: nil, request_options: {})
      end

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Page[Orb::Models::BillableMetric])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig do
        params(
          metric_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::BillableMetric)
      end
      def fetch(metric_id, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
