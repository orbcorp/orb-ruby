# typed: strong

module Orb
  module Models
    class PercentageDiscount < Orb::BaseModel
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Symbol) }
      attr_accessor :discount_type

      sig { returns(Float) }
      attr_accessor :percentage_discount

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          discount_type: Symbol,
          percentage_discount: Float,
          reason: T.nilable(String)
        ).void
      end
      def initialize(applies_to_price_ids:, discount_type:, percentage_discount:, reason: nil)
      end

      sig do
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
