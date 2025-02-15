# typed: strong

module Orb
  module Models
    class Discount < Orb::Union
      abstract!

      class UsageDiscount < Orb::BaseModel
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
            usage_discount: Float,
            reason: T.nilable(String),
            discount_type: Symbol
          ).void
        end
        def initialize(applies_to_price_ids:, usage_discount:, reason: nil, discount_type: :usage)
        end

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
        def to_hash
        end
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
      private_class_method def self.variants
      end
    end
  end
end
