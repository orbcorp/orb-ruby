# typed: strong

module Orb
  module Models
    class TrialDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::TrialDiscount, Orb::Internal::AnyHash) }

      sig { returns(Orb::TrialDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # Only available if discount_type is `trial`
      sig { returns(T.nilable(String)) }
      attr_accessor :trial_amount_discount

      # Only available if discount_type is `trial`
      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_percentage_discount

      sig do
        params(
          discount_type: Orb::TrialDiscount::DiscountType::OrSymbol,
          applies_to_price_ids: T.nilable(T::Array[String]),
          reason: T.nilable(String),
          trial_amount_discount: T.nilable(String),
          trial_percentage_discount: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        discount_type:,
        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        applies_to_price_ids: nil,
        reason: nil,
        # Only available if discount_type is `trial`
        trial_amount_discount: nil,
        # Only available if discount_type is `trial`
        trial_percentage_discount: nil
      )
      end

      sig do
        override.returns(
          {
            discount_type: Orb::TrialDiscount::DiscountType::OrSymbol,
            applies_to_price_ids: T.nilable(T::Array[String]),
            reason: T.nilable(String),
            trial_amount_discount: T.nilable(String),
            trial_percentage_discount: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::TrialDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIAL = T.let(:trial, Orb::TrialDiscount::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::TrialDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
