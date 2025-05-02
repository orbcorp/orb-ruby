# typed: strong

module Orb
  module Resources
    class Coupons
      sig { returns(Orb::Resources::Coupons::Subscriptions) }
      attr_reader :subscriptions

      # This endpoint allows the creation of coupons, which can then be redeemed at
      # subscription creation or plan change.
      sig do
        params(
          discount: T.any(
            Orb::Models::CouponCreateParams::Discount::Percentage,
            Orb::Internal::AnyHash,
            Orb::Models::CouponCreateParams::Discount::Amount
          ),
          redemption_code: String,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Models::Coupon)
      end
      def create(
        discount:,
        # This string can be used to redeem this coupon for a given subscription.
        redemption_code:,
        # This allows for a coupon's discount to apply for a limited time (determined in
        # months); a `null` value here means "unlimited time".
        duration_in_months: nil,
        # The maximum number of redemptions allowed for this coupon before it is
        # exhausted;`null` here means "unlimited".
        max_redemptions: nil,
        request_options: {}
      ); end
      # This endpoint returns a list of all coupons for an account in a list format.
      #
      # The list of coupons is ordered starting from the most recently created coupon.
      # The response also includes `pagination_metadata`, which lets the caller retrieve
      # the next page of results if they exist. More information about pagination can be
      # found in the Pagination-metadata schema.
      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          redemption_code: T.nilable(String),
          show_archived: T.nilable(T::Boolean),
          request_options: Orb::RequestOpts
        )
          .returns(Orb::Internal::Page[Orb::Models::Coupon])
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        # Filter to coupons matching this redemption code.
        redemption_code: nil,
        # Show archived coupons as well (by default, this endpoint only returns active
        # coupons).
        show_archived: nil,
        request_options: {}
      ); end
      # This endpoint allows a coupon to be archived. Archived coupons can no longer be
      # redeemed, and will be hidden from lists of active coupons. Additionally, once a
      # coupon is archived, its redemption code can be reused for a different coupon.
      sig { params(coupon_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Coupon) }
      def archive(coupon_id, request_options: {}); end

      # This endpoint retrieves a coupon by its ID. To fetch coupons by their redemption
      # code, use the [List coupons](list-coupons) endpoint with the redemption_code
      # parameter.
      sig { params(coupon_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Coupon) }
      def fetch(coupon_id, request_options: {}); end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
