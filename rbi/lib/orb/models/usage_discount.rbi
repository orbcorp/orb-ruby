# typed: strong

module Orb
  module Models
    class UsageDiscount < Orb::BaseModel
      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Orb::Models::UsageDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # Only available if discount_type is `usage`. Number of usage units that this
      #   discount is for
      sig { returns(Float) }
      attr_accessor :usage_discount

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          discount_type: Orb::Models::UsageDiscount::DiscountType::OrSymbol,
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
              discount_type: Orb::Models::UsageDiscount::DiscountType::OrSymbol,
              usage_discount: Float,
              reason: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::UsageDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::UsageDiscount::DiscountType::TaggedSymbol) }

        USAGE = T.let(:usage, Orb::Models::UsageDiscount::DiscountType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Orb::Models::UsageDiscount::DiscountType::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
