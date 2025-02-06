# typed: strong

module Orb
  module Models
    class TrialDiscount < Orb::BaseModel
      Shape = T.type_alias do
        {
          applies_to_price_ids: T::Array[String],
          discount_type: Symbol,
          reason: T.nilable(String),
          trial_amount_discount: T.nilable(String),
          trial_percentage_discount: T.nilable(Float)
        }
      end

      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      sig { returns(Symbol) }
      attr_accessor :discount_type

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig { returns(T.nilable(String)) }
      attr_accessor :trial_amount_discount

      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_percentage_discount

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          discount_type: Symbol,
          reason: T.nilable(String),
          trial_amount_discount: T.nilable(String),
          trial_percentage_discount: T.nilable(Float)
        ).void
      end
      def initialize(
        applies_to_price_ids:,
        discount_type:,
        reason: nil,
        trial_amount_discount: nil,
        trial_percentage_discount: nil
      ); end

      sig { returns(Orb::Models::TrialDiscount::Shape) }
      def to_h; end

      class DiscountType < Orb::Enum
        abstract!

        TRIAL = :trial

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
