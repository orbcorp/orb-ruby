require 'orb/models/coupon'
require 'orb/pagination'
require 'orb/resources/coupons/subscriptions'
module Orb
    module Resources
        class CouponPage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::Coupon)

        end

        class CouponsResource

                attr_reader :subscriptions
                def initialize(client:)
                    @client = client
                    @subscriptions = Orb::Resources::Coupons::SubscriptionsResource.new(client: client)
                end
                def create(discount: nil, redemption_code: nil, duration_in_months: nil, max_redemptions: nil)
                    request = {method: :post, path: "/coupons", body: {discount: discount, redemption_code: redemption_code, duration_in_months: duration_in_months, max_redemptions: max_redemptions, }, query: nil, }

                    @client.request(model: Orb::Models::Coupon, **request)
                end
                def list(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil)
                    request = {method: :get, path: "/coupons", body: {}, query: {cursor: cursor, limit: limit, redemption_code: redemption_code, show_archived: show_archived, }, }

                    @client.request(page: CouponPage, **request)
                end
                def archive(coupon_id)
                    request = {method: :post, path: "/coupons/#{coupon_id}/archive", body: {}, query: nil, }

                    @client.request(model: Orb::Models::Coupon, **request)
                end
                def fetch(coupon_id)
                    request = {method: :get, path: "/coupons/#{coupon_id}", body: {}, query: nil, }

                    @client.request(model: Orb::Models::Coupon, **request)
                end

        end
    end
end