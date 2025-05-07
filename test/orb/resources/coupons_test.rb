# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CouponsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.coupons.create(
        discount: {discount_type: :percentage, percentage_discount: 0},
        redemption_code: "HALFOFF"
      )

    assert_pattern do
      response => Orb::Coupon
    end

    assert_pattern do
      response => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Coupon::Discount,
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
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Coupon
    end

    assert_pattern do
      row => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Coupon::Discount,
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
      response => Orb::Coupon
    end

    assert_pattern do
      response => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Coupon::Discount,
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
      response => Orb::Coupon
    end

    assert_pattern do
      response => {
        id: String,
        archived_at: Time | nil,
        discount: Orb::Coupon::Discount,
        duration_in_months: Integer | nil,
        max_redemptions: Integer | nil,
        redemption_code: String,
        times_redeemed: Integer
      }
    end
  end
end
