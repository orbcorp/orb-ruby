require "orb/model"
require "orb/models/subscription"
require "orb/pagination"
module Orb
  module Resources
    module Coupons
      class SubscriptionPage < Page
        required :data, Orb::ArrayOf.new(Orb::Models::Subscription)
      end

      class SubscriptionsResource
        attr_reader
        def initialize(client:)
          @client = client
        end
        def list(
          coupon_id,
          cursor: Orb::NotGiven.instance,
          limit: Orb::NotGiven.instance
        )
          request = {
            method: :get,
            path: "/coupons/#{coupon_id}/subscriptions",
            query: {
              cursor: cursor,
              limit: limit
            }
          }

          @client.request(page: SubscriptionPage, **request)
        end
      end
    end
  end
end
