# typed: strong

module Orb
  module Models
    class EvaluatePriceGroup < Orb::BaseModel
      # The price's output for the group
      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      # The values for the group in the order specified by `grouping_keys`
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

      # The price's usage quantity for the group
      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      sig do
        params(amount: String, grouping_values: T::Array[T.any(String, Float, T::Boolean)], quantity: Float)
          .returns(T.attached_class)
      end
      def self.new(amount:, grouping_values:, quantity:)
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

        Variants = type_template(:out) { {fixed: T.any(String, Float, T::Boolean)} }
      end
    end
  end
end
