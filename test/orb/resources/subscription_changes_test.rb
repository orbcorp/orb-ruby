# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::SubscriptionChangesTest < Orb::Test::ResourceTest
  def test_retrieve
    response = @orb.subscription_changes.retrieve("subscription_change_id")

    assert_pattern do
      response => Orb::Models::SubscriptionChangeRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        change_type: String,
        expiration_time: Time,
        status: Orb::Models::SubscriptionChangeRetrieveResponse::Status,
        subscription: Orb::MutatedSubscription | nil,
        applied_at: Time | nil,
        billing_cycle_alignment: String | nil,
        cancelled_at: Time | nil,
        change_option: String | nil,
        effective_date: Time | nil,
        plan_id: String | nil
      }
    end
  end

  def test_apply
    response = @orb.subscription_changes.apply("subscription_change_id")

    assert_pattern do
      response => Orb::Models::SubscriptionChangeApplyResponse
    end

    assert_pattern do
      response => {
        id: String,
        change_type: String,
        expiration_time: Time,
        status: Orb::Models::SubscriptionChangeApplyResponse::Status,
        subscription: Orb::MutatedSubscription | nil,
        applied_at: Time | nil,
        billing_cycle_alignment: String | nil,
        cancelled_at: Time | nil,
        change_option: String | nil,
        effective_date: Time | nil,
        plan_id: String | nil
      }
    end
  end

  def test_cancel
    response = @orb.subscription_changes.cancel("subscription_change_id")

    assert_pattern do
      response => Orb::Models::SubscriptionChangeCancelResponse
    end

    assert_pattern do
      response => {
        id: String,
        change_type: String,
        expiration_time: Time,
        status: Orb::Models::SubscriptionChangeCancelResponse::Status,
        subscription: Orb::MutatedSubscription | nil,
        applied_at: Time | nil,
        billing_cycle_alignment: String | nil,
        cancelled_at: Time | nil,
        change_option: String | nil,
        effective_date: Time | nil,
        plan_id: String | nil
      }
    end
  end
end
