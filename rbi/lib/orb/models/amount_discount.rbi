# typed: strong

module Orb
  module Models
    class AmountDiscount < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :amount_discount

      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Symbol) }
      attr_accessor :discount_type

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          amount_discount: String,
          applies_to_price_ids: T::Array[String],
          discount_type: Symbol,
          reason: T.nilable(String)
        ).void
      end
      def initialize(amount_discount:, applies_to_price_ids:, discount_type:, reason: nil)
      end

      sig do
        override.returns(
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

        AMOUNT = :amount

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
