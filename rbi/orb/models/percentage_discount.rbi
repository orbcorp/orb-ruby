# typed: strong

module Orb
  module Models
    class PercentageDiscount < Orb::Internal::Type::BaseModel
      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Orb::Models::PercentageDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # Only available if discount_type is `percentage`. This is a number between 0
      # and 1.
      sig { returns(Float) }
      attr_accessor :percentage_discount

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          discount_type: Orb::Models::PercentageDiscount::DiscountType::OrSymbol,
          percentage_discount: Float,
          reason: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        applies_to_price_ids:,
        discount_type:,
        # Only available if discount_type is `percentage`. This is a number between 0
        # and 1.
        percentage_discount:,
        reason: nil
      ); end
      sig do
        override
          .returns(
            {
              applies_to_price_ids: T::Array[String],
              discount_type: Orb::Models::PercentageDiscount::DiscountType::OrSymbol,
              percentage_discount: Float,
              reason: T.nilable(String)
            }
          )
      end
      def to_hash; end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::PercentageDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE = T.let(:percentage, Orb::Models::PercentageDiscount::DiscountType::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::PercentageDiscount::DiscountType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
