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

      # The billable metric associated with this dimensional price group. All prices
      #   associated with this dimensional price group will be computed using this
      #   billable metric.
      sig { returns(String) }
      def billable_metric_id
      end

      sig { params(_: String).returns(String) }
      def billable_metric_id=(_)
      end

      # The dimensions that this dimensional price group is defined over
      sig { returns(T::Array[String]) }
      def dimensions
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def dimensions=(_)
      end

      # An alias for the dimensional price group
      sig { returns(T.nilable(String)) }
      def external_dimensional_price_group_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_dimensional_price_group_id=(_)
      end

      # User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # The name of the dimensional price group
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # A dimensional price group is used to partition the result of a billable metric
      #   by a set of dimensions. Prices in a price group must specify the parition used
      #   to derive their usage.
      sig do
        params(
          id: String,
          billable_metric_id: String,
          dimensions: T::Array[String],
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, billable_metric_id:, dimensions:, external_dimensional_price_group_id:, metadata:, name:)
      end

      sig do
        override
          .returns(
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
