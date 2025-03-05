# typed: strong

module Orb
  module Models
    class DimensionalPriceConfigurationModel < Orb::BaseModel
      sig { returns(T::Array[String]) }
      def dimension_values
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def dimension_values=(_)
      end

      sig { returns(String) }
      def dimensional_price_group_id
      end

      sig { params(_: String).returns(String) }
      def dimensional_price_group_id=(_)
      end

      sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
      def initialize(dimension_values:, dimensional_price_group_id:)
      end

      sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
      def to_hash
      end
    end
  end
end
