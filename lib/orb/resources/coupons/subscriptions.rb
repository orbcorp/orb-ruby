# frozen_string_literal: true

module Orb
  module Resources
    class Coupons
      class Subscriptions
        # This endpoint returns a list of all subscriptions that have redeemed a given
        #   coupon as a [paginated](/api-reference/pagination) list, ordered starting from
        #   the most recently created subscription. For a full discussion of the
        #   subscription resource, see [Subscription](/core-concepts#subscription).
        #
        # @overload list(coupon_id, cursor: nil, limit: nil, request_options: {})
        #
        # @param coupon_id [String]
        # @param cursor [String, nil]
        # @param limit [Integer]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::Subscription>]
        #
        # @see Orb::Models::Coupons::SubscriptionListParams
        def list(coupon_id, params = {})
          parsed, options = Orb::Models::Coupons::SubscriptionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["coupons/%1$s/subscriptions", coupon_id],
            query: parsed,
            page: Orb::Internal::Page,
            model: Orb::Models::Subscription,
            options: options
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
