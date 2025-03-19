# typed: strong

module Orb
  module Models
    class Coupon < Orb::BaseModel
      # Also referred to as coupon_id in this documentation.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # An archived coupon can no longer be redeemed. Active coupons will have a value
      #   of null for `archived_at`; this field will be non-null for archived coupons.
      sig { returns(T.nilable(Time)) }
      def archived_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def archived_at=(_)
      end

      sig { returns(T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount)) }
      def discount
      end

      sig do
        params(_: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount))
          .returns(T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount))
      end
      def discount=(_)
      end

      # This allows for a coupon's discount to apply for a limited time (determined in
      #   months); a `null` value here means "unlimited time".
      sig { returns(T.nilable(Integer)) }
      def duration_in_months
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def duration_in_months=(_)
      end

      # The maximum number of redemptions allowed for this coupon before it is
      #   exhausted; `null` here means "unlimited".
      sig { returns(T.nilable(Integer)) }
      def max_redemptions
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def max_redemptions=(_)
      end

      # This string can be used to redeem this coupon for a given subscription.
      sig { returns(String) }
      def redemption_code
      end

      sig { params(_: String).returns(String) }
      def redemption_code=(_)
      end

      # The number of times this coupon has been redeemed.
      sig { returns(Integer) }
      def times_redeemed
      end

      sig { params(_: Integer).returns(Integer) }
      def times_redeemed=(_)
      end

      # A coupon represents a reusable discount configuration that can be applied either
      #   as a fixed or percentage amount to an invoice or subscription. Coupons are
      #   activated using a redemption code, which applies the discount to a subscription
      #   or invoice. The duration of a coupon determines how long it remains available
      #   for use by end users.
      sig do
        params(
          id: String,
          archived_at: T.nilable(Time),
          discount: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount),
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          redemption_code: String,
          times_redeemed: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(id:, archived_at:, discount:, duration_in_months:, max_redemptions:, redemption_code:, times_redeemed:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              archived_at: T.nilable(Time),
              discount: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount),
              duration_in_months: T.nilable(Integer),
              max_redemptions: T.nilable(Integer),
              redemption_code: String,
              times_redeemed: Integer
            }
          )
      end
      def to_hash
      end

      class Discount < Orb::Union
        abstract!

        Variants =
          type_template(:out) { {fixed: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount)} }
      end
    end
  end
end
