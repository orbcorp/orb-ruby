# frozen_string_literal: true

module Orb
  module Models
    class CouponCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute discount
      #
      #   @return [Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount, Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount]
      required :discount, union: -> { Orb::Models::CouponCreateParams::Discount }

      # @!attribute redemption_code
      #   This string can be used to redeem this coupon for a given subscription.
      #
      #   @return [String]
      required :redemption_code, String

      # @!attribute duration_in_months
      #   This allows for a coupon's discount to apply for a limited time (determined in
      #     months); a `null` value here means "unlimited time".
      #
      #   @return [Integer, nil]
      optional :duration_in_months, Integer, nil?: true

      # @!attribute max_redemptions
      #   The maximum number of redemptions allowed for this coupon before it is
      #     exhausted;`null` here means "unlimited".
      #
      #   @return [Integer, nil]
      optional :max_redemptions, Integer, nil?: true

      # @!parse
      #   # @param discount [Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount, Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount]
      #   # @param redemption_code [String]
      #   # @param duration_in_months [Integer, nil]
      #   # @param max_redemptions [Integer, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(discount:, redemption_code:, duration_in_months: nil, max_redemptions: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case discount
      # in {discount_type: "percentage", percentage_discount: Float}
      #   # Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount ...
      # in {discount_type: "amount", amount_discount: String}
      #   # Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case discount
      # in Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount
      #   # ...
      # in Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
      #   # ...
      # end
      # ```
      class Discount < Orb::Union
        discriminator :discount_type

        variant :percentage, -> { Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount }

        variant :amount, -> { Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount }

        class NewCouponPercentageDiscount < Orb::BaseModel
          # @!attribute discount_type
          #
          #   @return [Symbol, :percentage]
          required :discount_type, const: :percentage

          # @!attribute percentage_discount
          #
          #   @return [Float]
          required :percentage_discount, Float

          # @!parse
          #   # @param percentage_discount [Float]
          #   # @param discount_type [Symbol, :percentage]
          #   #
          #   def initialize(percentage_discount:, discount_type: :percentage, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class NewCouponAmountDiscount < Orb::BaseModel
          # @!attribute amount_discount
          #
          #   @return [String]
          required :amount_discount, String

          # @!attribute discount_type
          #
          #   @return [Symbol, :amount]
          required :discount_type, const: :amount

          # @!parse
          #   # @param amount_discount [String]
          #   # @param discount_type [Symbol, :amount]
          #   #
          #   def initialize(amount_discount:, discount_type: :amount, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
