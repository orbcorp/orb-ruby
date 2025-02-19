# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # coupon => {
    #   id: String,
    #   archived_at: Time,
    #   discount: Orb::Models::Coupon::Discount,
    #   duration_in_months: Integer,
    #   max_redemptions: Integer,
    #   **_
    # }
    # ```
    class Coupon < Orb::BaseModel
      # @!attribute id
      #   Also referred to as coupon_id in this documentation.
      #
      #   @return [String]
      required :id, String

      # @!attribute archived_at
      #   An archived coupon can no longer be redeemed. Active coupons will have a value
      #     of null for `archived_at`; this field will be non-null for archived coupons.
      #
      #   @return [Time, nil]
      required :archived_at, Time, nil?: true

      # @!attribute discount
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount]
      required :discount, union: -> { Orb::Models::Coupon::Discount }

      # @!attribute duration_in_months
      #   This allows for a coupon's discount to apply for a limited time (determined in
      #     months); a `null` value here means "unlimited time".
      #
      #   @return [Integer, nil]
      required :duration_in_months, Integer, nil?: true

      # @!attribute max_redemptions
      #   The maximum number of redemptions allowed for this coupon before it is
      #     exhausted; `null` here means "unlimited".
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

      # @!parse
      #   # A coupon represents a reusable discount configuration that can be applied either
      #   #   as a fixed or percentage amount to an invoice or subscription. Coupons are
      #   #   activated using a redemption code, which applies the discount to a subscription
      #   #   or invoice. The duration of a coupon determines how long it remains available
      #   #   for use by end users.
      #   #
      #   # @param id [String]
      #   # @param archived_at [Time, nil]
      #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount]
      #   # @param duration_in_months [Integer, nil]
      #   # @param max_redemptions [Integer, nil]
      #   # @param redemption_code [String]
      #   # @param times_redeemed [Integer]
      #   #
      #   def initialize(id:, archived_at:, discount:, duration_in_months:, max_redemptions:, redemption_code:, times_redeemed:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case discount
      # in {
      #   discount_type: "percentage",
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
      #   percentage_discount: Float,
      #   reason: String
      # }
      #   # Orb::Models::PercentageDiscount ...
      # in {
      #   discount_type: "amount",
      #   amount_discount: String,
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
      #   reason: String
      # }
      #   # Orb::Models::AmountDiscount ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case discount
      # in Orb::Models::PercentageDiscount
      #   # ...
      # in Orb::Models::AmountDiscount
      #   # ...
      # end
      # ```
      class Discount < Orb::Union
        discriminator :discount_type

        variant :percentage, -> { Orb::Models::PercentageDiscount }

        variant :amount, -> { Orb::Models::AmountDiscount }
      end
    end
  end
end
