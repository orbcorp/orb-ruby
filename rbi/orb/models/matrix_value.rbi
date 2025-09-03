# typed: strong

module Orb
  module Models
    class MatrixValue < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::MatrixValue, Orb::Internal::AnyHash) }

      # One or two matrix keys to filter usage to this Matrix value by
      sig { returns(T::Array[T.nilable(String)]) }
      attr_accessor :dimension_values

      # Unit price for the specified dimension_values
      sig { returns(String) }
      attr_accessor :unit_amount

      # Configuration for a single matrix value
      sig do
        params(
          dimension_values: T::Array[T.nilable(String)],
          unit_amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        # One or two matrix keys to filter usage to this Matrix value by
        dimension_values:,
        # Unit price for the specified dimension_values
        unit_amount:
      )
      end

      sig do
        override.returns(
          { dimension_values: T::Array[T.nilable(String)], unit_amount: String }
        )
      end
      def to_hash
      end
    end
  end
end
