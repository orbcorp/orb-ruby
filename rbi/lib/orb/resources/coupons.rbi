# typed: strong

module Orb
  module Resources
    class Coupons
      sig { returns(Orb::Resources::Coupons::Subscriptions) }
      attr_reader :subscriptions

      sig do
        params(
          discount: Orb::Models::CouponCreateParams::Discount::Variants,
          redemption_code: String,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Coupon)
      end
      def create(discount:, redemption_code:, duration_in_months:, max_redemptions:, request_options: {}); end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          redemption_code: T.nilable(String),
          show_archived: T.nilable(T::Boolean),
          request_options: Orb::RequestOpts
        ).returns(Orb::Page[Orb::Models::Coupon])
      end
      def list(cursor:, limit:, redemption_code:, show_archived:, request_options: {}); end

      sig { params(coupon_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Coupon) }
      def archive(coupon_id, request_options: {}); end

      sig { params(coupon_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Coupon) }
      def fetch(coupon_id, request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
