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
        # @param coupon_id [String]
        #
        # @param params [Orb::Models::Coupons::SubscriptionListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
        #     from the initial request.
        #
        #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Page<Orb::Models::Subscription>]
        #
        def list(coupon_id, params = {})
          parsed, options = Orb::Models::Coupons::SubscriptionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["coupons/%0s/subscriptions", coupon_id],
            query: parsed,
            page: Orb::Page,
            model: Orb::Models::Subscription,
            options: options
          )
        end

        # @param client [Orb::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
