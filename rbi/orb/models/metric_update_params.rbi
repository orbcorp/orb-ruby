# typed: strong

module Orb
  module Models
    class MetricUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::MetricUpdateParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :metric_id

      # A description of the metric.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The id of the item to associate the metric with. Can only be changed while the
      # metric is in `draft` status.
      sig { returns(T.nilable(String)) }
      attr_accessor :item_id

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # The name of the metric.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # A new sql string defining the metric. Can only be changed while the metric is in
      # `draft` status and no price uses it. If the metric has parameters, the new sql
      # must use the same ones.
      sig { returns(T.nilable(String)) }
      attr_accessor :sql

      sig do
        params(
          metric_id: String,
          description: T.nilable(String),
          item_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          sql: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        metric_id:,
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

      sig do
        override.returns(
          {
            metric_id: String,
            description: T.nilable(String),
            item_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            name: T.nilable(String),
            sql: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
