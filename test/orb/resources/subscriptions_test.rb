# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::SubscriptionsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create
    response = @orb.subscriptions.create

    assert_pattern do
      response => Orb::Models::SubscriptionCreateResponse
    end
  end

  def test_update
    response = @orb.subscriptions.update("subscription_id")

    assert_pattern do
      response => Orb::Models::Subscription
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
      row => Orb::Models::Subscription
    end
  end

  def test_cancel_required_params
    response = @orb.subscriptions.cancel("subscription_id", cancel_option: :end_of_subscription_term)

    assert_pattern do
      response => Orb::Models::SubscriptionCancelResponse
    end
  end

  def test_fetch
    response = @orb.subscriptions.fetch("subscription_id")

    assert_pattern do
      response => Orb::Models::Subscription
    end
  end

  def test_fetch_costs
    response = @orb.subscriptions.fetch_costs("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionFetchCostsResponse
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
      response => Orb::Models::SubscriptionPriceIntervalsResponse
    end
  end

  def test_schedule_plan_change_required_params
    response = @orb.subscriptions.schedule_plan_change("subscription_id", change_option: :requested_date)

    assert_pattern do
      response => Orb::Models::SubscriptionSchedulePlanChangeResponse
    end
  end

  def test_trigger_phase
    response = @orb.subscriptions.trigger_phase("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionTriggerPhaseResponse
    end
  end

  def test_unschedule_cancellation
    response = @orb.subscriptions.unschedule_cancellation("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionUnscheduleCancellationResponse
    end
  end

  def test_unschedule_fixed_fee_quantity_updates_required_params
    response = @orb.subscriptions.unschedule_fixed_fee_quantity_updates(
      "subscription_id",
      price_id: "price_id"
    )

    assert_pattern do
      response => Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse
    end
  end

  def test_unschedule_pending_plan_changes
    response = @orb.subscriptions.unschedule_pending_plan_changes("subscription_id")

    assert_pattern do
      response => Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse
    end
  end

  def test_update_fixed_fee_quantity_required_params
    response = @orb.subscriptions.update_fixed_fee_quantity(
      "subscription_id",
      price_id: "price_id",
      quantity: 0
    )

    assert_pattern do
      response => Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse
    end
  end

  def test_update_trial_required_params
    response = @orb.subscriptions.update_trial("subscription_id", trial_end_date: "2017-07-21T17:32:28Z")

    assert_pattern do
      response => Orb::Models::SubscriptionUpdateTrialResponse
    end
  end
end
