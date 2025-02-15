# typed: strong

module Orb
  module Models
    class DimensionalPriceGroup < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def billable_metric_id
      end

      sig { params(_: String).returns(String) }
      def billable_metric_id=(_)
      end

      sig { returns(T::Array[String]) }
      def dimensions
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def dimensions=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_dimensional_price_group_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_dimensional_price_group_id=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          id: String,
          billable_metric_id: String,
          dimensions: T::Array[String],
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String
        ).void
      end
      def initialize(
        id:,
        billable_metric_id:,
        dimensions:,
        external_dimensional_price_group_id:,
        metadata:,
        name:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billable_metric_id: String,
            dimensions: T::Array[String],
            external_dimensional_price_group_id: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
