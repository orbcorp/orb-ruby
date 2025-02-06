# typed: strong

module Orb
  module Models
    class EvaluatePriceGroup < Orb::BaseModel
      Shape = T.type_alias do
        {
          amount: String,
          grouping_values: T::Array[Orb::Models::EvaluatePriceGroup::GroupingValue::Variants],
          quantity: Float
        }
      end

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(T::Array[Orb::Models::EvaluatePriceGroup::GroupingValue::Variants]) }
      attr_accessor :grouping_values

      sig { returns(Float) }
      attr_accessor :quantity

      sig do
        params(
          amount: String,
          grouping_values: T::Array[Orb::Models::EvaluatePriceGroup::GroupingValue::Variants],
          quantity: Float
        ).void
      end
      def initialize(amount:, grouping_values:, quantity:); end

      sig { returns(Orb::Models::EvaluatePriceGroup::Shape) }
      def to_h; end

      class GroupingValue < Orb::Union
        abstract!

        Variants = T.type_alias { T.any(String, Float, T::Boolean) }

        sig { override.returns([[NilClass, String], [NilClass, Float], [NilClass, T::Boolean]]) }
        private_class_method def self.variants; end
      end
    end
  end
end
