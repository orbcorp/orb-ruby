require 'orb/model'
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
                def create(discount: Orb::NotGiven.instance, redemption_code: Orb::NotGiven.instance, duration_in_months: Orb::NotGiven.instance, max_redemptions: Orb::NotGiven.instance)
                    request = {method: :post, path: "/coupons", body: {discount: discount, redemption_code: redemption_code, duration_in_months: duration_in_months, max_redemptions: max_redemptions, }, query: nil, }

                    @client.request(model: Orb::Models::Coupon, **request)
                end
                def list(cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, redemption_code: Orb::NotGiven.instance, show_archived: Orb::NotGiven.instance)
                    request = {method: :get, path: "/coupons", query: {cursor: cursor, limit: limit, redemption_code: redemption_code, show_archived: show_archived, }, }

                    @client.request(page: CouponPage, **request)
                end
                def archive(coupon_id)
                    request = {method: :post, path: "/coupons/#{coupon_id}/archive", query: nil, }

                    @client.request(model: Orb::Models::Coupon, **request)
                end
                def fetch(coupon_id)
                    request = {method: :get, path: "/coupons/#{coupon_id}", query: nil, }

                    @client.request(model: Orb::Models::Coupon, **request)
                end

        end
    end
end