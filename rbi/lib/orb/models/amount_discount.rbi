# typed: strong

module Orb
  module Models
    class AmountDiscount < Orb::Internal::Type::BaseModel
      # Only available if discount_type is `amount`.
      sig { returns(String) }
      attr_accessor :amount_discount

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Orb::Models::AmountDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          amount_discount: String,
          applies_to_price_ids: T::Array[String],
          discount_type: Orb::Models::AmountDiscount::DiscountType::OrSymbol,
          reason: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(amount_discount:, applies_to_price_ids:, discount_type:, reason: nil); end

      sig do
        override
          .returns(
            {
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              discount_type: Orb::Models::AmountDiscount::DiscountType::OrSymbol,
              reason: T.nilable(String)
            }
          )
      end
      def to_hash; end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::AmountDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT = T.let(:amount, Orb::Models::AmountDiscount::DiscountType::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::AmountDiscount::DiscountType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
