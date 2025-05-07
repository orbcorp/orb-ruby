# frozen_string_literal: true

module Orb
  module Resources
    class Coupons
      # @return [Orb::Resources::Coupons::Subscriptions]
      attr_reader :subscriptions

      # Some parameter documentations has been truncated, see
      # {Orb::Models::CouponCreateParams} for more details.
      #
      # This endpoint allows the creation of coupons, which can then be redeemed at
      # subscription creation or plan change.
      #
      # @overload create(discount:, redemption_code:, duration_in_months: nil, max_redemptions: nil, request_options: {})
      #
      # @param discount [Orb::CouponCreateParams::Discount::Percentage, Orb::CouponCreateParams::Discount::Amount]
      #
      # @param redemption_code [String] This string can be used to redeem this coupon for a given subscription.
      #
      # @param duration_in_months [Integer, nil] This allows for a coupon's discount to apply for a limited time (determined in m
      #
      # @param max_redemptions [Integer, nil] The maximum number of redemptions allowed for this coupon before it is exhausted
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Coupon]
      #
      # @see Orb::Models::CouponCreateParams
      def create(params)
        parsed, options = Orb::CouponCreateParams.dump_request(params)
        @client.request(method: :post, path: "coupons", body: parsed, model: Orb::Coupon, options: options)
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::CouponListParams} for more details.
      #
      # This endpoint returns a list of all coupons for an account in a list format.
      #
      # The list of coupons is ordered starting from the most recently created coupon.
      # The response also includes `pagination_metadata`, which lets the caller retrieve
      # the next page of results if they exist. More information about pagination can be
      # found in the Pagination-metadata schema.
      #
      # @overload list(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param redemption_code [String, nil] Filter to coupons matching this redemption code.
      #
      # @param show_archived [Boolean, nil] Show archived coupons as well (by default, this endpoint only returns active cou
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Coupon>]
      #
      # @see Orb::Models::CouponListParams
      def list(params = {})
        parsed, options = Orb::CouponListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "coupons",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Coupon,
          options: options
        )
      end

      # This endpoint allows a coupon to be archived. Archived coupons can no longer be
      # redeemed, and will be hidden from lists of active coupons. Additionally, once a
      # coupon is archived, its redemption code can be reused for a different coupon.
      #
      # @overload archive(coupon_id, request_options: {})
      #
      # @param coupon_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Coupon]
      #
      # @see Orb::Models::CouponArchiveParams
      def archive(coupon_id, params = {})
        @client.request(
          method: :post,
          path: ["coupons/%1$s/archive", coupon_id],
          model: Orb::Coupon,
          options: params[:request_options]
        )
      end

      # This endpoint retrieves a coupon by its ID. To fetch coupons by their redemption
      # code, use the [List coupons](list-coupons) endpoint with the redemption_code
      # parameter.
      #
      # @overload fetch(coupon_id, request_options: {})
      #
      # @param coupon_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Coupon]
      #
      # @see Orb::Models::CouponFetchParams
      def fetch(coupon_id, params = {})
        @client.request(
          method: :get,
          path: ["coupons/%1$s", coupon_id],
          model: Orb::Coupon,
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
