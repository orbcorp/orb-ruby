require 'orb/model'
require 'orb/models/coupon'
require 'orb/orb'
require 'test/unit'

class CouponsResourceTest < Test::Unit::TestCase

        def setup
            @orb = Orb::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
        end
        def test_create_required_params
            response = @orb.coupons.create(discount: {"discount_type" => "percentage", "applies_to_price_ids" => ["h74gfhdjvn7ujokd", "7hfgtgjnbvc3ujkl"], "percentage_discount" => 0.15, }, redemption_code: "HALFOFF")
            assert(Orb::Converter.same_type?(Orb::Models::Coupon, response), response.class.to_s)
        end
        def test_list
            response = @orb.coupons.list()
            assert(Orb::Converter.same_type?(Orb::Resources::CouponPage, response), response.class.to_s)
        end
        def test_archive
            response = @orb.coupons.archive("string")
            assert(Orb::Converter.same_type?(Orb::Models::Coupon, response), response.class.to_s)
        end
        def test_fetch
            response = @orb.coupons.fetch("string")
            assert(Orb::Converter.same_type?(Orb::Models::Coupon, response), response.class.to_s)
        end

end