# typed: strong

module Orb
  module Models
    class AmountDiscount < Orb::BaseModel
      # Only available if discount_type is `amount`.
      sig { returns(String) }
      attr_accessor :amount_discount

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
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
      def self.new(amount_discount:, applies_to_price_ids:, discount_type:, reason: nil)
      end

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
      def to_hash
      end

      module DiscountType
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::AmountDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::AmountDiscount::DiscountType::TaggedSymbol) }

        AMOUNT = T.let(:amount, Orb::Models::AmountDiscount::DiscountType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Orb::Models::AmountDiscount::DiscountType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
