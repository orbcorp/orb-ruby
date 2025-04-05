# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::SubscriptionsTest < Orb::Test::ResourceTest
  def test_create
    response = @orb.subscriptions.create

    assert_pattern do
      response => Orb::Models::SubscriptionCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionCreateResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionCreateResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCreateResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionCreateResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionCreateResponse::Status,
        trial_info: Orb::Models::SubscriptionCreateResponse::TrialInfo
      }
    end
  end

  def test_update
    response = @orb.subscriptions.update("subscription_id")

    assert_pattern do
      response => Orb::Models::Subscription
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::Subscription::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Subscription::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::PriceInterval]),
        redeemed_coupon: Orb::Models::Subscription::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::Subscription::Status,
        trial_info: Orb::Models::Subscription::TrialInfo
      }
    end
  end

  def test_list
    response = @orb.subscriptions.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Subscription
    end

    assert_pattern do
      row => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::Subscription::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Subscription::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::PriceInterval]),
        redeemed_coupon: Orb::Models::Subscription::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::Subscription::Status,
        trial_info: Orb::Models::Subscription::TrialInfo
      }
    end
  end

  def test_cancel_required_params
    response = @orb.subscriptions.cancel("subscription_id", cancel_option: :end_of_subscription_term)

    assert_pattern do
      response => Orb::Models::SubscriptionCancelResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCancelResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionCancelResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionCancelResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCancelResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCancelResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCancelResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionCancelResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionCancelResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionCancelResponse::Status,
        trial_info: Orb::Models::SubscriptionCancelResponse::TrialInfo
      }
    end
  end

  def test_fetch
    response = @orb.subscriptions.fetch("subscription_id")

    assert_pattern do
      response => Orb::Models::Subscription
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::Subscription::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::Subscription::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Subscription::PriceInterval]),
        redeemed_coupon: Orb::Models::Subscription::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::Subscription::Status,
        trial_info: Orb::Models::Subscription::TrialInfo
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
        data: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionFetchCostsResponse::Data])
      }
    end
  end

  def test_fetch_schedule
    response = @orb.subscriptions.fetch_schedule("subscription_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::SubscriptionFetchScheduleResponse
    end

    assert_pattern do
      row => {
        created_at: Time,
        end_date: Time | nil,
        plan: Orb::Models::SubscriptionFetchScheduleResponse::Plan,
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

    assert_pattern do
      case response
      in Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage
      in Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage
      end
    end
  end

  def test_price_intervals
    skip("Incorrect example breaks Prism")

    response = @orb.subscriptions.price_intervals("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionPriceIntervalsResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionPriceIntervalsResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionPriceIntervalsResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionPriceIntervalsResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionPriceIntervalsResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionPriceIntervalsResponse::Status,
        trial_info: Orb::Models::SubscriptionPriceIntervalsResponse::TrialInfo
      }
    end
  end

  def test_schedule_plan_change_required_params
    response = @orb.subscriptions.schedule_plan_change("subscription_id", change_option: :requested_date)

    assert_pattern do
      response => Orb::Models::SubscriptionSchedulePlanChangeResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionSchedulePlanChangeResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionSchedulePlanChangeResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionSchedulePlanChangeResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionSchedulePlanChangeResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionSchedulePlanChangeResponse::Status,
        trial_info: Orb::Models::SubscriptionSchedulePlanChangeResponse::TrialInfo
      }
    end
  end

  def test_trigger_phase
    response = @orb.subscriptions.trigger_phase("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionTriggerPhaseResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionTriggerPhaseResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionTriggerPhaseResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionTriggerPhaseResponse::Status,
        trial_info: Orb::Models::SubscriptionTriggerPhaseResponse::TrialInfo
      }
    end
  end

  def test_unschedule_cancellation
    response = @orb.subscriptions.unschedule_cancellation("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionUnscheduleCancellationResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleCancellationResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionUnscheduleCancellationResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionUnscheduleCancellationResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleCancellationResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleCancellationResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleCancellationResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleCancellationResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionUnscheduleCancellationResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionUnscheduleCancellationResponse::Status,
        trial_info: Orb::Models::SubscriptionUnscheduleCancellationResponse::TrialInfo
      }
    end
  end

  def test_unschedule_fixed_fee_quantity_updates_required_params
    response =
      @orb.subscriptions.unschedule_fixed_fee_quantity_updates("subscription_id", price_id: "price_id")

    assert_pattern do
      response => Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::Status,
        trial_info: Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse::TrialInfo
      }
    end
  end

  def test_unschedule_pending_plan_changes
    response = @orb.subscriptions.unschedule_pending_plan_changes("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::Status,
        trial_info: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::TrialInfo
      }
    end
  end

  def test_update_fixed_fee_quantity_required_params
    response =
      @orb.subscriptions.update_fixed_fee_quantity("subscription_id", price_id: "price_id", quantity: 0)

    assert_pattern do
      response => Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::Status,
        trial_info: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::TrialInfo
      }
    end
  end

  def test_update_trial_required_params
    response = @orb.subscriptions.update_trial("subscription_id", trial_end_date: "2017-07-21T17:32:28Z")

    assert_pattern do
      response => Orb::Models::SubscriptionUpdateTrialResponse
    end

    assert_pattern do
      response => {
        id: String,
        active_plan_phase_order: Integer | nil,
        adjustment_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval]),
        auto_collection: Orb::Internal::Type::Boolean | nil,
        billing_cycle_anchor_configuration: Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration,
        billing_cycle_day: Integer,
        created_at: Time,
        current_billing_period_end_date: Time | nil,
        current_billing_period_start_date: Time | nil,
        customer: Orb::Models::Customer,
        default_invoice_memo: String | nil,
        discount_intervals: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval]),
        end_date: Time | nil,
        fixed_fee_quantity_schedule: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule]),
        invoicing_threshold: String | nil,
        maximum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval]),
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        minimum_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval]),
        net_terms: Integer,
        plan: Orb::Models::Plan,
        price_intervals: ^(Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval]),
        redeemed_coupon: Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon | nil,
        start_date: Time,
        status: Orb::Models::SubscriptionUpdateTrialResponse::Status,
        trial_info: Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo
      }
    end
  end
end
