# typed: strong

module Orb
  module Models
    class DimensionalPriceGroup < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The billable metric associated with this dimensional price group. All prices
      # associated with this dimensional price group will be computed using this
      # billable metric.
      sig { returns(String) }
      attr_accessor :billable_metric_id

      # The dimensions that this dimensional price group is defined over
      sig { returns(T::Array[String]) }
      attr_accessor :dimensions

      # An alias for the dimensional price group
      sig { returns(T.nilable(String)) }
      attr_accessor :external_dimensional_price_group_id

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The name of the dimensional price group
      sig { returns(String) }
      attr_accessor :name

      # A dimensional price group is used to partition the result of a billable metric
      # by a set of dimensions. Prices in a price group must specify the parition used
      # to derive their usage.
      sig do
        params(
          id: String,
          billable_metric_id: String,
          dimensions: T::Array[String],
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The billable metric associated with this dimensional price group. All prices
        # associated with this dimensional price group will be computed using this
        # billable metric.
        billable_metric_id:,
        # The dimensions that this dimensional price group is defined over
        dimensions:,
        # An alias for the dimensional price group
        external_dimensional_price_group_id:,
        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        metadata:,
        # The name of the dimensional price group
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
