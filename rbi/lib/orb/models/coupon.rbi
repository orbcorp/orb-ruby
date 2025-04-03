# typed: strong

module Orb
  module Models
    class Coupon < Orb::Internal::Type::BaseModel
      # Also referred to as coupon_id in this documentation.
      sig { returns(String) }
      attr_accessor :id

      # An archived coupon can no longer be redeemed. Active coupons will have a value
      #   of null for `archived_at`; this field will be non-null for archived coupons.
      sig { returns(T.nilable(Time)) }
      attr_accessor :archived_at

      sig { returns(T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount)) }
      attr_accessor :discount

      # This allows for a coupon's discount to apply for a limited time (determined in
      #   months); a `null` value here means "unlimited time".
      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months

      # The maximum number of redemptions allowed for this coupon before it is
      #   exhausted; `null` here means "unlimited".
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions

      # This string can be used to redeem this coupon for a given subscription.
      sig { returns(String) }
      attr_accessor :redemption_code

      # The number of times this coupon has been redeemed.
      sig { returns(Integer) }
      attr_accessor :times_redeemed

      # A coupon represents a reusable discount configuration that can be applied either
      #   as a fixed or percentage amount to an invoice or subscription. Coupons are
      #   activated using a redemption code, which applies the discount to a subscription
      #   or invoice. The duration of a coupon determines how long it remains available
      #   for use by end users.
      sig do
        params(
          id: String,
          archived_at: T.nilable(Time),
          discount: T.any(Orb::Models::PercentageDiscount, Orb::Internal::AnyHash, Orb::Models::AmountDiscount),
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          redemption_code: String,
          times_redeemed: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        archived_at:,
        discount:,
        duration_in_months:,
        max_redemptions:,
        redemption_code:,
        times_redeemed:
      )
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

      module Discount
        extend Orb::Internal::Type::Union

        sig { override.returns([Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount]) }
        def self.variants
        end
      end
    end
  end
end
