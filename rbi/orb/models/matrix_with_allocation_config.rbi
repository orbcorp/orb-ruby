# typed: strong

module Orb
  module Models
    class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::MatrixWithAllocationConfig, Orb::Internal::AnyHash)
        end

      # Allocation to be used to calculate the price
      sig { returns(Float) }
      attr_accessor :allocation

      # Default per unit rate for any usage not bucketed into a specified matrix_value
      sig { returns(String) }
      attr_accessor :default_unit_amount

      # One or two event property values to evaluate matrix groups by
      sig { returns(T::Array[T.nilable(String)]) }
      attr_accessor :dimensions

      # Matrix values for specified matrix grouping keys
      sig { returns(T::Array[Orb::MatrixValue]) }
      attr_accessor :matrix_values

      sig do
        params(
          allocation: Float,
          default_unit_amount: String,
          dimensions: T::Array[T.nilable(String)],
          matrix_values: T::Array[Orb::MatrixValue::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Allocation to be used to calculate the price
        allocation:,
        # Default per unit rate for any usage not bucketed into a specified matrix_value
        default_unit_amount:,
        # One or two event property values to evaluate matrix groups by
        dimensions:,
        # Matrix values for specified matrix grouping keys
        matrix_values:
      )
      end

      sig do
        override.returns(
          {
            allocation: Float,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::MatrixValue]
          }
        )
      end
      def to_hash
      end
    end
  end
end
