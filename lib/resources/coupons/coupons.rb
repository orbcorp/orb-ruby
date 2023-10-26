require 'models/coupon'
require 'model'

module Resources
    class CouponsResource

            def initialize(client:)
                @client = client
            end
            def create(discount: nil, redemption_code: nil, duration_in_months: nil, max_redemptions: nil)
                response = @client.request(method: :post, path: "/coupons", body: {discount: discount, redemption_code: redemption_code, duration_in_months: duration_in_months, max_redemptions: max_redemptions, })

                Models::Coupon.convert(**response)
            end
            def list(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil)
                response = @client.request(method: :get, path: "/coupons", body: {}, query: {cursor: cursor, limit: limit, redemption_code: redemption_code, show_archived: show_archived, })

                Models::Coupon.convert(**response)
            end
            def archive(coupon_id)
                response = @client.request(method: :post, path: "/coupons/#{coupon_id}/archive", body: {})

                Models::Coupon.convert(**response)
            end
            def fetch(coupon_id)
                response = @client.request(method: :get, path: "/coupons/#{coupon_id}", body: {})

                Models::Coupon.convert(**response)
            end

    end
end