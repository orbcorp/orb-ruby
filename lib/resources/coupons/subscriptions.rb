require 'models/subscription'
require 'pagination'
require 'model'

module Resources
    module Coupons
        class SubscriptionPage < Page
          required :data, ArrayOf.new(Models::Subscription)

        end

        class SubscriptionsResource

                def initialize(client:)
                    @client = client
                end
                def list(coupon_id, cursor: nil, limit: nil)
                    request = {method: :get, path: "/coupons/#{coupon_id}/subscriptions", body: {}, query: {cursor: cursor, limit: limit, }, }

                    @client.request(page: SubscriptionPage, **request)
                end

        end
    end
end