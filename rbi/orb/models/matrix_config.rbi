# typed: strong

module Orb
  module Models
    class MatrixConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::MatrixConfig, Orb::Internal::AnyHash) }

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
          default_unit_amount: String,
          dimensions: T::Array[T.nilable(String)],
          matrix_values: T::Array[Orb::MatrixValue::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
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
