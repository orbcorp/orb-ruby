# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CouponsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.coupons.create(
      discount: {discount_type: :percentage, percentage_discount: 0},
      redemption_code: "HALFOFF"
    )

    assert_pattern do
      response => Orb::Models::Coupon
    end
  end

  def test_list
    response = @orb.coupons.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Coupon
    end
  end

  def test_archive
    response = @orb.coupons.archive("coupon_id")

    assert_pattern do
      response => Orb::Models::Coupon
    end
  end

  def test_fetch
    response = @orb.coupons.fetch("coupon_id")

    assert_pattern do
      response => Orb::Models::Coupon
    end
  end
end
