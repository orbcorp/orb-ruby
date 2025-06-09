# typed: strong

module Orb
  module Models
    class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
        end

      sig { returns(T::Array[String]) }
      attr_accessor :dimension_values

      sig { returns(String) }
      attr_accessor :dimensional_price_group_id

      sig do
        params(
          dimension_values: T::Array[String],
          dimensional_price_group_id: String
        ).returns(T.attached_class)
      end
      def self.new(dimension_values:, dimensional_price_group_id:)
      end

      sig do
        override.returns(
          {
            dimension_values: T::Array[String],
            dimensional_price_group_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
