# typed: strong

module Orb
  module Models
    class EvaluatePriceGroup < Orb::Internal::Type::BaseModel
      # The price's output for the group
      sig { returns(String) }
      attr_accessor :amount

      # The values for the group in the order specified by `grouping_keys`
      sig { returns(T::Array[T.any(String, Float, T::Boolean)]) }
      attr_accessor :grouping_values

      # The price's usage quantity for the group
      sig { returns(Float) }
      attr_accessor :quantity

      sig do
        params(amount: String, grouping_values: T::Array[T.any(String, Float, T::Boolean)], quantity: Float)
          .returns(T.attached_class)
      end
      def self.new(
        # The price's output for the group
        amount:,
        # The values for the group in the order specified by `grouping_keys`
        grouping_values:,
        # The price's usage quantity for the group
        quantity:
      ); end
      sig do
        override
          .returns({
                     amount: String,
                     grouping_values: T::Array[T.any(String, Float, T::Boolean)],
                     quantity: Float
                   })
      end
      def to_hash; end

      module GroupingValue
        extend Orb::Internal::Type::Union

        sig { override.returns([String, Float, T::Boolean]) }
        def self.variants; end
      end
    end
  end
end
