# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Coupons::SubscriptionsTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.coupons.subscriptions.list("coupon_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::SubscriptionModel
    end

    assert_pattern do
      row => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::ArrayOf[Orb::Models::AdjustmentIntervalModel]),
        auto_collection: Orb::BooleanModel | nil,
        billing_cycle_anchor_configuration: Orb::Models::BillingCycleAnchorConfigurationModel,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::CustomerModel,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::SubscriptionModel::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::ArrayOf[Orb::Models::FixedFeeQuantityScheduleEntryModel]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::ArrayOf[Orb::Models::MaximumIntervalModel]),
        metadata: ^(Orb::HashOf[String]),
        minimum_intervals: ^(Orb::ArrayOf[Orb::Models::MinimumIntervalModel]),
        net_terms: Integer,
        plan: Orb::Models::PlanModel,
        price_intervals: ^(Orb::ArrayOf[Orb::Models::PriceIntervalModel]),
        redeemed_coupon: Orb::Models::CouponRedemptionModel | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end
end
