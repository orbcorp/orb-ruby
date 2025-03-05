# typed: strong

module Orb
  module Models
    class MatrixConfigModel < Orb::BaseModel
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
          default_unit_amount: String,
          dimensions: T::Array[T.nilable(String)],
          matrix_values: T::Array[Orb::Models::MatrixValueModel]
        )
          .void
      end
      def initialize(default_unit_amount:, dimensions:, matrix_values:)
      end

      sig do
        override
          .returns(
            {
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
