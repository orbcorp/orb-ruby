# frozen_string_literal: true

module Orb
  module Resources
    class Coupons
      # @return [Orb::Resources::Coupons::Subscriptions]
      attr_reader :subscriptions

      # This endpoint allows the creation of coupons, which can then be redeemed at
      #   subscription creation or plan change.
      #
      # @param params [Orb::Models::CouponCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount, Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount] :discount
      #
      #   @option params [String] :redemption_code This string can be used to redeem this coupon for a given subscription.
      #
      #   @option params [Integer, nil] :duration_in_months This allows for a coupon's discount to apply for a limited time (determined in
      #     months); a `null` value here means "unlimited time".
      #
      #   @option params [Integer, nil] :max_redemptions The maximum number of redemptions allowed for this coupon before it is
      #     exhausted;`null` here means "unlimited".
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Coupon]
      #
      # @see Orb::Models::CouponCreateParams
      def create(params)
        parsed, options = Orb::Models::CouponCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "coupons",
          body: parsed,
          model: Orb::Models::Coupon,
          options: options
        )
      end

      # This endpoint returns a list of all coupons for an account in a list format.
      #
      #   The list of coupons is ordered starting from the most recently created coupon.
      #   The response also includes `pagination_metadata`, which lets the caller retrieve
      #   the next page of results if they exist. More information about pagination can be
      #   found in the Pagination-metadata schema.
      #
      # @param params [Orb::Models::CouponListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [String, nil] :redemption_code Filter to coupons matching this redemption code.
      #
      #   @option params [Boolean, nil] :show_archived Show archived coupons as well (by default, this endpoint only returns active
      #     coupons).
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::Coupon>]
      #
      # @see Orb::Models::CouponListParams
      def list(params = {})
        parsed, options = Orb::Models::CouponListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "coupons",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::Coupon,
          options: options
        )
      end

      # This endpoint allows a coupon to be archived. Archived coupons can no longer be
      #   redeemed, and will be hidden from lists of active coupons. Additionally, once a
      #   coupon is archived, its redemption code can be reused for a different coupon.
      #
      # @param coupon_id [String]
      #
      # @param params [Orb::Models::CouponArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Coupon]
      #
      # @see Orb::Models::CouponArchiveParams
      def archive(coupon_id, params = {})
        @client.request(
          method: :post,
          path: ["coupons/%1$s/archive", coupon_id],
          model: Orb::Models::Coupon,
          options: params[:request_options]
        )
      end

      # This endpoint retrieves a coupon by its ID. To fetch coupons by their redemption
      #   code, use the [List coupons](list-coupons) endpoint with the redemption_code
      #   parameter.
      #
      # @param coupon_id [String]
      #
      # @param params [Orb::Models::CouponFetchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Coupon]
      #
      # @see Orb::Models::CouponFetchParams
      def fetch(coupon_id, params = {})
        @client.request(
          method: :get,
          path: ["coupons/%1$s", coupon_id],
          model: Orb::Models::Coupon,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @subscriptions = Orb::Resources::Coupons::Subscriptions.new(client: client)
      end
    end
  end
end
