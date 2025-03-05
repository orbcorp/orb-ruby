# typed: strong

module Orb
  module Models
    class MatrixWithAllocationConfigModel < Orb::BaseModel
      sig { returns(Float) }
      def allocation
      end

      sig { params(_: Float).returns(Float) }
      def allocation=(_)
      end

      sig { returns(String) }
      def default_unit_amount
      end

      sig { params(_: String).returns(String) }
      def default_unit_amount=(_)
      end

      sig { returns(T::Array[T.nilable(String)]) }
      def dimensions
      end

      sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
      def dimensions=(_)
      end

      sig { returns(T::Array[Orb::Models::MatrixValueModel]) }
      def matrix_values
      end

      sig { params(_: T::Array[Orb::Models::MatrixValueModel]).returns(T::Array[Orb::Models::MatrixValueModel]) }
      def matrix_values=(_)
      end

      sig do
        params(
          allocation: Float,
          default_unit_amount: String,
          dimensions: T::Array[T.nilable(String)],
          matrix_values: T::Array[Orb::Models::MatrixValueModel]
        )
          .void
      end
      def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
      end

      sig do
        override
          .returns(
            {
              allocation: Float,
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[Orb::Models::MatrixValueModel]
            }
          )
      end
      def to_hash
      end
    end
  end
end
