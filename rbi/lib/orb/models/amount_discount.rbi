# typed: strong

module Orb
  module Models
    class AmountDiscount < Orb::BaseModel
      # Only available if discount_type is `amount`.
      sig { returns(String) }
      def amount_discount
      end

      sig { params(_: String).returns(String) }
      def amount_discount=(_)
      end

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      sig { returns(T::Array[String]) }
      def applies_to_price_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applies_to_price_ids=(_)
      end

      sig { returns(Symbol) }
      def discount_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def discount_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      sig do
        params(
          amount_discount: String,
          applies_to_price_ids: T::Array[String],
          discount_type: Symbol,
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
              discount_type: Symbol,
              reason: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        AMOUNT = :amount
      end
    end
  end
end
