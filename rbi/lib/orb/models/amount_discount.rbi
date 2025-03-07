# typed: strong

module Orb
  module Models
    class AmountDiscount < Orb::BaseModel
      sig { returns(String) }
      def amount_discount
      end

      sig { params(_: String).returns(String) }
      def amount_discount=(_)
      end

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
          .void
      end
      def initialize(amount_discount:, applies_to_price_ids:, discount_type:, reason: nil)
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

        AMOUNT = :amount

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
