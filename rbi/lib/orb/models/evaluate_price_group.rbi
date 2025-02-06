# typed: strong

module Orb
  module Models
    class EvaluatePriceGroup < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :amount

      sig { returns(T::Array[T.any(String, Float, T::Boolean)]) }
      attr_accessor :grouping_values

      sig { returns(Float) }
      attr_accessor :quantity

      sig do
        params(
          amount: String,
          grouping_values: T::Array[T.any(String, Float, T::Boolean)],
          quantity: Float
        ).void
      end
      def initialize(amount:, grouping_values:, quantity:)
      end

      sig do
        override.returns(
          {
            amount: String,
            grouping_values: T::Array[T.any(String, Float, T::Boolean)],
            quantity: Float
          }
        )
      end
      def to_hash
      end

      class GroupingValue < Orb::Union
        abstract!

        sig { override.returns([[NilClass, String], [NilClass, Float], [NilClass, T::Boolean]]) }
        private_class_method def self.variants
        end
      end
    end
  end
end
