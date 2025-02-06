# typed: strong

module Orb
  module Models
    class DimensionalPriceGroup < Orb::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          billable_metric_id: String,
          dimensions: T::Array[String],
          external_dimensional_price_group_id: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          name: String
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :billable_metric_id

      sig { returns(T::Array[String]) }
      attr_accessor :dimensions

      sig { returns(T.nilable(String)) }
      attr_accessor :external_dimensional_price_group_id

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

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

      sig { returns(Orb::Models::DimensionalPriceGroup::Shape) }
      def to_h; end
    end
  end
end
