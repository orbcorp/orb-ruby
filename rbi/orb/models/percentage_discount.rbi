# typed: strong

module Orb
  module Models
    class PercentageDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::PercentageDiscount, Orb::Internal::AnyHash) }

      sig { returns(Orb::PercentageDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # Only available if discount_type is `percentage`. This is a number between 0
      # and 1.
      sig { returns(Float) }
      attr_accessor :percentage_discount

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          discount_type: Orb::PercentageDiscount::DiscountType::OrSymbol,
          percentage_discount: Float,
          applies_to_price_ids: T.nilable(T::Array[String]),
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        discount_type:,
        # Only available if discount_type is `percentage`. This is a number between 0
        # and 1.
        percentage_discount:,
        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        applies_to_price_ids: nil,
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            discount_type: Orb::PercentageDiscount::DiscountType::OrSymbol,
            percentage_discount: Float,
            applies_to_price_ids: T.nilable(T::Array[String]),
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PercentageDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(
            :percentage,
            Orb::PercentageDiscount::DiscountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PercentageDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
