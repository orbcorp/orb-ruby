# typed: strong

module Orb
  module Models
    class Coupon < Orb::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          archived_at: T.nilable(Time),
          discount: Orb::Models::Coupon::Discount::Variants,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          redemption_code: String,
          times_redeemed: Integer
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Time)) }
      attr_accessor :archived_at

      sig { returns(Orb::Models::Coupon::Discount::Variants) }
      attr_accessor :discount

      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions

      sig { returns(String) }
      attr_accessor :redemption_code

      sig { returns(Integer) }
      attr_accessor :times_redeemed

      sig do
        params(
          id: String,
          archived_at: T.nilable(Time),
          discount: Orb::Models::Coupon::Discount::Variants,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          redemption_code: String,
          times_redeemed: Integer
        ).void
      end
      def initialize(
        id:,
        archived_at:,
        discount:,
        duration_in_months:,
        max_redemptions:,
        redemption_code:,
        times_redeemed:
      )
      end

      sig { returns(Orb::Models::Coupon::Shape) }
      def to_h; end

      class Discount < Orb::Union
        abstract!

        Variants = T.type_alias { T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount) }

        sig do
          override.returns([[Symbol, Orb::Models::PercentageDiscount], [Symbol, Orb::Models::AmountDiscount]])
        end
        private_class_method def self.variants; end
      end
    end
  end
end
