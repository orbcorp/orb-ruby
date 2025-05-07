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
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Subscription::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Subscription::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Subscription::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Subscription::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Subscription::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Subscription::MinimumInterval]),
        net_terms: Integer,
        pending_subscription_change: Orb::Subscription::PendingSubscriptionChange | nil,
        plan: Orb::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Subscription::PriceInterval]),
        redeemed_coupon: Orb::Subscription::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Subscription::Status,
        trial_info: Orb::Subscription::TrialInfo
      }
    end
  end
end
