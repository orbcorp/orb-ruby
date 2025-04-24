# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Coupons#create
    class Coupon < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   Also referred to as coupon_id in this documentation.
      #
      #   @return [String]
      required :id, String

      # @!attribute archived_at
      #   An archived coupon can no longer be redeemed. Active coupons will have a value
      #   of null for `archived_at`; this field will be non-null for archived coupons.
      #
      #   @return [Time, nil]
      required :archived_at, Time, nil?: true

      # @!attribute discount
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount]
      required :discount, union: -> { Orb::Models::Coupon::Discount }

      # @!attribute duration_in_months
      #   This allows for a coupon's discount to apply for a limited time (determined in
      #   months); a `null` value here means "unlimited time".
      #
      #   @return [Integer, nil]
      required :duration_in_months, Integer, nil?: true

      # @!attribute max_redemptions
      #   The maximum number of redemptions allowed for this coupon before it is
      #   exhausted; `null` here means "unlimited".
      #
      #   @return [Integer, nil]
      required :max_redemptions, Integer, nil?: true

      # @!attribute redemption_code
      #   This string can be used to redeem this coupon for a given subscription.
      #
      #   @return [String]
      required :redemption_code, String

      # @!attribute times_redeemed
      #   The number of times this coupon has been redeemed.
      #
      #   @return [Integer]
      required :times_redeemed, Integer

      # @!method initialize(id:, archived_at:, discount:, duration_in_months:, max_redemptions:, redemption_code:, times_redeemed:)
      #   Some parameter documentations has been truncated, see {Orb::Models::Coupon} for
      #   more details.
      #
      #   A coupon represents a reusable discount configuration that can be applied either
      #   as a fixed or percentage amount to an invoice or subscription. Coupons are
      #   activated using a redemption code, which applies the discount to a subscription
      #   or invoice. The duration of a coupon determines how long it remains available
      #   for use by end users.
      #
      #   @param id [String] Also referred to as coupon_id in this documentation.
      #
      #   @param archived_at [Time, nil] An archived coupon can no longer be redeemed. Active coupons will have a value o
      #   ...
      #
      #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount]
      #
      #   @param duration_in_months [Integer, nil] This allows for a coupon's discount to apply for a limited time (determined in m
      #   ...
      #
      #   @param max_redemptions [Integer, nil] The maximum number of redemptions allowed for this coupon before it is exhausted
      #   ...
      #
      #   @param redemption_code [String] This string can be used to redeem this coupon for a given subscription.
      #
      #   @param times_redeemed [Integer] The number of times this coupon has been redeemed.

      # @see Orb::Models::Coupon#discount
      module Discount
        extend Orb::Internal::Type::Union

        discriminator :discount_type

        variant :percentage, -> { Orb::Models::PercentageDiscount }

        variant :amount, -> { Orb::Models::AmountDiscount }

        # @!method self.variants
        #   @return [Array(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount)]
      end
    end
  end
end
