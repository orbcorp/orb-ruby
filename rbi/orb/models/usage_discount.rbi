# typed: strong

module Orb
  module Models
    class UsageDiscount < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Orb::UsageDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # Only available if discount_type is `usage`. Number of usage units that this
      # discount is for
      sig { returns(Float) }
      attr_accessor :usage_discount

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          discount_type: Orb::UsageDiscount::DiscountType::OrSymbol,
          usage_discount: Float,
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        applies_to_price_ids:,
        discount_type:,
        # Only available if discount_type is `usage`. Number of usage units that this
        # discount is for
        usage_discount:,
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_ids: T::Array[String],
            discount_type: Orb::UsageDiscount::DiscountType::OrSymbol,
            usage_discount: Float,
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::UsageDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE = T.let(:usage, Orb::UsageDiscount::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::UsageDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
