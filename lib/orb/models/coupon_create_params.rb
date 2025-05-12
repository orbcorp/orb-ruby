# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Coupons#create
    class CouponCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute discount
      #
      #   @return [Orb::CouponCreateParams::Discount::Percentage, Orb::CouponCreateParams::Discount::Amount]
      required :discount, union: -> { Orb::CouponCreateParams::Discount }

      # @!attribute redemption_code
      #   This string can be used to redeem this coupon for a given subscription.
      #
      #   @return [String]
      required :redemption_code, String

      # @!attribute duration_in_months
      #   This allows for a coupon's discount to apply for a limited time (determined in
      #   months); a `null` value here means "unlimited time".
      #
      #   @return [Integer, nil]
      optional :duration_in_months, Integer, nil?: true

      # @!attribute max_redemptions
      #   The maximum number of redemptions allowed for this coupon before it is
      #   exhausted;`null` here means "unlimited".
      #
      #   @return [Integer, nil]
      optional :max_redemptions, Integer, nil?: true

      # @!method initialize(discount:, redemption_code:, duration_in_months: nil, max_redemptions: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CouponCreateParams} for more details.
      #
      #   @param discount [Orb::CouponCreateParams::Discount::Percentage, Orb::CouponCreateParams::Discount::Amount]
      #
      #   @param redemption_code [String] This string can be used to redeem this coupon for a given subscription.
      #
      #   @param duration_in_months [Integer, nil] This allows for a coupon's discount to apply for a limited time (determined in m
      #
      #   @param max_redemptions [Integer, nil] The maximum number of redemptions allowed for this coupon before it is exhausted
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      module Discount
        extend Orb::Internal::Type::Union

        discriminator :discount_type

        variant :percentage, -> { Orb::CouponCreateParams::Discount::Percentage }

        variant :amount, -> { Orb::CouponCreateParams::Discount::Amount }

        class Percentage < Orb::Internal::Type::BaseModel
          # @!attribute discount_type
          #
          #   @return [Symbol, :percentage]
          required :discount_type, const: :percentage

          # @!attribute percentage_discount
          #
          #   @return [Float]
          required :percentage_discount, Float

          # @!method initialize(percentage_discount:, discount_type: :percentage)
          #   @param percentage_discount [Float]
          #   @param discount_type [Symbol, :percentage]
        end

        class Amount < Orb::Internal::Type::BaseModel
          # @!attribute amount_discount
          #
          #   @return [String]
          required :amount_discount, String

          # @!attribute discount_type
          #
          #   @return [Symbol, :amount]
          required :discount_type, const: :amount

          # @!method initialize(amount_discount:, discount_type: :amount)
          #   @param amount_discount [String]
          #   @param discount_type [Symbol, :amount]
        end

        # @!method self.variants
        #   @return [Array(Orb::CouponCreateParams::Discount::Percentage, Orb::CouponCreateParams::Discount::Amount)]

        define_sorbet_constant!(:Variants) do
          T.type_alias do
            T.any(Orb::CouponCreateParams::Discount::Percentage, Orb::CouponCreateParams::Discount::Amount)
          end
        end
      end
    end
  end
end
