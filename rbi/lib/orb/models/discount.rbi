# typed: strong

module Orb
  module Models
    class Discount < Orb::Union
      abstract!

      class UsageDiscount < Orb::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(Symbol) }
        attr_accessor :discount_type

        sig { returns(Float) }
        attr_accessor :usage_discount

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            applies_to_price_ids: T::Array[String],
            usage_discount: Float,
            reason: T.nilable(String),
            discount_type: Symbol
          ).void
        end
        def initialize(applies_to_price_ids:, usage_discount:, reason: nil, discount_type: :usage); end

        sig do
          override.returns(
            {
              applies_to_price_ids: T::Array[String],
              discount_type: Symbol,
              usage_discount: Float,
              reason: T.nilable(String)
            }
          )
        end
        def to_hash; end
      end

      sig do
        override.returns(
          [
            [Symbol, Orb::Models::PercentageDiscount],
            [Symbol, Orb::Models::TrialDiscount],
            [Symbol, Orb::Models::Discount::UsageDiscount],
            [Symbol, Orb::Models::AmountDiscount]
          ]
        )
      end
      private_class_method def self.variants; end
    end
  end
end
