# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CouponsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.coupons.create(
      discount: {discount_type: :percentage, percentage_discount: 0},
      redemption_code: "HALFOFF"
    )

    assert_pattern do
      response => Orb::Models::Coupon
    end

    assert_pattern do
      response => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Models::Coupon::Discount,
        duration_in_months: Integer | nil,
        max_redemptions: Integer | nil,
        redemption_code: String,
        times_redeemed: Integer
      }
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

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Models::Coupon::Discount,
        duration_in_months: Integer | nil,
        max_redemptions: Integer | nil,
        redemption_code: String,
        times_redeemed: Integer
      }
    end
  end

  def test_archive
    response = @orb.coupons.archive("coupon_id")

    assert_pattern do
      response => Orb::Models::Coupon
    end

    assert_pattern do
      response => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Models::Coupon::Discount,
        duration_in_months: Integer | nil,
        max_redemptions: Integer | nil,
        redemption_code: String,
        times_redeemed: Integer
      }
    end
  end

  def test_fetch
    response = @orb.coupons.fetch("coupon_id")

    assert_pattern do
      response => Orb::Models::Coupon
    end

    assert_pattern do
      response => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Models::Coupon::Discount,
        duration_in_months: Integer | nil,
        max_redemptions: Integer | nil,
        redemption_code: String,
        times_redeemed: Integer
      }
    end
  end
end
