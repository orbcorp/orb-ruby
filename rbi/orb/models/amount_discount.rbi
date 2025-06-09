# typed: strong

module Orb
  module Models
    class AmountDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::AmountDiscount, Orb::Internal::AnyHash) }

      # Only available if discount_type is `amount`.
      sig { returns(String) }
      attr_accessor :amount_discount

      sig { returns(Orb::AmountDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this discount to.
      sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
      attr_accessor :filters

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          amount_discount: String,
          discount_type: Orb::AmountDiscount::DiscountType::OrSymbol,
          applies_to_price_ids: T.nilable(T::Array[String]),
          filters: T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Only available if discount_type is `amount`.
        amount_discount:,
        discount_type:,
        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        applies_to_price_ids: nil,
        # The filters that determine which prices to apply this discount to.
        filters: nil,
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            amount_discount: String,
            discount_type: Orb::AmountDiscount::DiscountType::OrSymbol,
            applies_to_price_ids: T.nilable(T::Array[String]),
            filters: T.nilable(T::Array[Orb::TransformPriceFilter]),
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::AmountDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT = T.let(:amount, Orb::AmountDiscount::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::AmountDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
