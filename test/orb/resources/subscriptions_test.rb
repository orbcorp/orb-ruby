# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::SubscriptionsTest < Orb::Test::ResourceTest
  def test_create
    response = @orb.subscriptions.create

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_update
    response = @orb.subscriptions.update("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionModel
    end

    assert_pattern do
      response => {
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

  def test_list
    response = @orb.subscriptions.list

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

  def test_cancel_required_params
    response = @orb.subscriptions.cancel("subscription_id", cancel_option: :end_of_subscription_term)

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_fetch
    response = @orb.subscriptions.fetch("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionModel
    end

    assert_pattern do
      response => {
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

  def test_fetch_costs
    response = @orb.subscriptions.fetch_costs("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionFetchCostsResponse
    end

    assert_pattern do
      response => {
        data: ^(Orb::ArrayOf[Orb::Models::AggregatedCostModel])
      }
    end
  end

  def test_fetch_schedule
    response = @orb.subscriptions.fetch_schedule("subscription_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::SubscriptionFetchScheduleResponse
    end

    assert_pattern do
      row => {
        created_at: Time,
        end_date: Time | nil,
        plan: Orb::Models::PlanMinifiedModel,
        start_date: Time
      }
    end
  end

  def test_fetch_usage
    skip("Incorrect example breaks Prism")

    response = @orb.subscriptions.fetch_usage("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionUsage
    end
  end

  def test_price_intervals
    skip("Incorrect example breaks Prism")

    response = @orb.subscriptions.price_intervals("subscription_id")

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_schedule_plan_change_required_params
    response = @orb.subscriptions.schedule_plan_change("subscription_id", change_option: :requested_date)

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_trigger_phase
    response = @orb.subscriptions.trigger_phase("subscription_id")

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_unschedule_cancellation
    response = @orb.subscriptions.unschedule_cancellation("subscription_id")

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_unschedule_fixed_fee_quantity_updates_required_params
    response = @orb.subscriptions.unschedule_fixed_fee_quantity_updates(
      "subscription_id",
      price_id: "price_id"
    )

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_unschedule_pending_plan_changes
    response = @orb.subscriptions.unschedule_pending_plan_changes("subscription_id")

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_update_fixed_fee_quantity_required_params
    response = @orb.subscriptions.update_fixed_fee_quantity(
      "subscription_id",
      price_id: "price_id",
      quantity: 0
    )

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end

  def test_update_trial_required_params
    response = @orb.subscriptions.update_trial("subscription_id", trial_end_date: "2017-07-21T17:32:28Z")

    assert_pattern do
      response => Orb::Models::MutatedSubscriptionModel
    end

    assert_pattern do
      response => {
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
        discount_intervals: ^(Orb::ArrayOf[union: Orb::Models::MutatedSubscriptionModel::DiscountInterval]),
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
        status: Orb::Models::MutatedSubscriptionModel::Status,
        trial_info: Orb::Models::SubscriptionTrialInfoModel
      }
    end
  end
end
