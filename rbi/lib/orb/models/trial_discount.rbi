# typed: strong

module Orb
  module Models
    class TrialDiscount < Orb::Internal::Type::BaseModel
      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Orb::Models::TrialDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

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
          applies_to_price_ids: T::Array[String],
          discount_type: Orb::Models::TrialDiscount::DiscountType::OrSymbol,
          reason: T.nilable(String),
          trial_amount_discount: T.nilable(String),
          trial_percentage_discount: T.nilable(Float)
        )
          .returns(T.attached_class)
      end
      def self.new(
        applies_to_price_ids:,
        discount_type:,
        reason: nil,
        trial_amount_discount: nil,
        trial_percentage_discount: nil
      ); end
      sig do
        override
          .returns(
            {
              applies_to_price_ids: T::Array[String],
              discount_type: Orb::Models::TrialDiscount::DiscountType::OrSymbol,
              reason: T.nilable(String),
              trial_amount_discount: T.nilable(String),
              trial_percentage_discount: T.nilable(Float)
            }
          )
      end
      def to_hash; end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::TrialDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::TrialDiscount::DiscountType::TaggedSymbol) }

        TRIAL = T.let(:trial, Orb::Models::TrialDiscount::DiscountType::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::TrialDiscount::DiscountType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
