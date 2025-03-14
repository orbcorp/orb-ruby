# typed: strong

module Orb
  module Models
    class MetricCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # A description of the metric.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The id of the item
      sig { returns(String) }
      def item_id
      end

      sig { params(_: String).returns(String) }
      def item_id=(_)
      end

      # The name of the metric.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # A sql string defining the metric.
      sig { returns(String) }
      def sql
      end

      sig { params(_: String).returns(String) }
      def sql=(_)
      end

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig do
        params(
          description: T.nilable(String),
          item_id: String,
          name: String,
          sql: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
