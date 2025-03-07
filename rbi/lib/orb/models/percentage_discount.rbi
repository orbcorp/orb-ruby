# typed: strong

module Orb
  module Models
    class PercentageDiscount < Orb::BaseModel
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

      sig { returns(Float) }
      def percentage_discount
      end

      sig { params(_: Float).returns(Float) }
      def percentage_discount=(_)
      end

      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          discount_type: Symbol,
          percentage_discount: Float,
          reason: T.nilable(String)
        )
          .void
      end
      def initialize(applies_to_price_ids:, discount_type:, percentage_discount:, reason: nil)
      end

      sig do
        override
          .returns(
            {
              applies_to_price_ids: T::Array[String],
              discount_type: Symbol,
              percentage_discount: Float,
              reason: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        PERCENTAGE = :percentage

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
