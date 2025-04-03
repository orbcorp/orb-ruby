# typed: strong

module Orb
  module Models
    class MetricCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # A description of the metric.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The id of the item
      sig { returns(String) }
      attr_accessor :item_id

      # The name of the metric.
      sig { returns(String) }
      attr_accessor :name

      # A sql string defining the metric.
      sig { returns(String) }
      attr_accessor :sql

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          description: T.nilable(String),
          item_id: String,
          name: String,
          sql: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(description:, item_id:, name:, sql:, metadata: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              description: T.nilable(String),
              item_id: String,
              name: String,
              sql: String,
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
