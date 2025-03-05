# typed: strong

module Orb
  module Models
    class MatrixValueModel < Orb::BaseModel
      sig { returns(T::Array[T.nilable(String)]) }
      def dimension_values
      end

      sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
      def dimension_values=(_)
      end

      sig { returns(String) }
      def unit_amount
      end

      sig { params(_: String).returns(String) }
      def unit_amount=(_)
      end

      sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
      def initialize(dimension_values:, unit_amount:)
      end

      sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
      def to_hash
      end
    end
  end
end
