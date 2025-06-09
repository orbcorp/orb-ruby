# typed: strong

module Orb
  module Models
    class MatrixValue < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::MatrixValue, Orb::Internal::AnyHash) }

      # One or two matrix keys to filter usage to this Matrix value by. For example,
      # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
      # instance tier.
      sig { returns(T::Array[T.nilable(String)]) }
      attr_accessor :dimension_values

      # Unit price for the specified dimension_values
      sig { returns(String) }
      attr_accessor :unit_amount

      sig do
        params(
          dimension_values: T::Array[T.nilable(String)],
          unit_amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        # One or two matrix keys to filter usage to this Matrix value by. For example,
        # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
        # instance tier.
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
