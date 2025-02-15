# typed: strong

module Orb
  module Resources
    class Coupons
      sig { returns(Orb::Resources::Coupons::Subscriptions) }
      def subscriptions
      end

      sig do
        params(
          discount: T.any(
            Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
            Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
          ),
          redemption_code: String,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Coupon)
      end
      def create(
        discount:,
        redemption_code:,
        duration_in_months: nil,
        max_redemptions: nil,
        request_options: {}
      )
      end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          redemption_code: T.nilable(String),
          show_archived: T.nilable(T::Boolean),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Page[Orb::Models::Coupon])
      end
      def list(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil, request_options: {})
      end

      sig do
        params(
          coupon_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Coupon)
      end
      def archive(coupon_id, request_options: {})
      end

      sig do
        params(
          coupon_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Orb::Models::Coupon)
      end
      def fetch(coupon_id, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
