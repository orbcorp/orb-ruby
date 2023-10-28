require 'orb/models/subscription'
require 'orb/pagination'
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
                    def list(coupon_id, cursor: nil, limit: nil)
                        request = {method: :get, path: "/coupons/#{coupon_id}/subscriptions", body: {}, query: {cursor: cursor, limit: limit, }, }

                        @client.request(page: SubscriptionPage, **request)
                    end

            end
        end
    end
end