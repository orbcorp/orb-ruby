# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Coupons::SubscriptionsTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.coupons.subscriptions.list("coupon_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Subscription
    end

    assert_pattern do
      row => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Subscription::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::FixedFeeQuantityScheduleEntry]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::MinimumInterval]),
        name: String,
        net_terms: Integer,
        pending_subscription_change: Orb::SubscriptionChangeMinified | nil,
        plan: Orb::Plan | nil,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::PriceInterval]),
        redeemed_coupon: Orb::CouponRedemption | nil,
        start_date: Time,
        status: Orb::Subscription::Status,
        trial_info: Orb::SubscriptionTrialInfo
      }
    end
  end
end
