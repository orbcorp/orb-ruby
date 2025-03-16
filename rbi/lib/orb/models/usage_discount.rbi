# typed: strong

module Orb
  module Models
    class UsageDiscount < Orb::BaseModel
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

      # Only available if discount_type is `usage`. Number of usage units that this
      #   discount is for
      sig { returns(Float) }
      def usage_discount
      end

      sig { params(_: Float).returns(Float) }
      def usage_discount=(_)
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
          usage_discount: Float,
          reason: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(applies_to_price_ids:, discount_type:, usage_discount:, reason: nil)
      end

      sig do
        override
          .returns(
            {
              applies_to_price_ids: T::Array[String],
              discount_type: Symbol,
              usage_discount: Float,
              reason: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        USAGE = :usage
      end
    end
  end
end
