require 'models/subscription'
require 'model'

module Resources
    module Coupons
        class SubscriptionsResource

                def initialize(client:)
                    @client = client
                end
                def list(coupon_id, cursor: nil, limit: nil)
                    response = @client.request(method: :get, path: "/coupons/#{coupon_id}/subscriptions", body: {}, query: {cursor: cursor, limit: limit})

                    Models::Subscription.convert(**response)
                end

        end
    end
end