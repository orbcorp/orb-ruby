# typed: strong

module Orb
  module Models
    class EvaluatePriceGroup < Orb::BaseModel
      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      sig { returns(T::Array[T.any(String, Float, T::Boolean)]) }
      def grouping_values
      end

      sig do
        params(
          _: T::Array[T.any(
            String,
            Float,
            T::Boolean
          )]
        ).returns(T::Array[T.any(String, Float, T::Boolean)])
      end
      def grouping_values=(_)
      end

      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

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
        override
          .returns({
                     amount: String,
                     grouping_values: T::Array[T.any(String, Float, T::Boolean)],
                     quantity: Float
                   })
      end
      def to_hash
      end

      class GroupingValue < Orb::Union
        abstract!

        class << self
          sig { override.returns([[NilClass, String], [NilClass, Float], [NilClass, T::Boolean]]) }
          private def variants
          end
        end
      end
    end
  end
end
