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
        expiration_time: Time,
        status: Orb::Models::SubscriptionChangeRetrieveResponse::Status,
        subscription: Orb::Models::SubscriptionChangeRetrieveResponse::Subscription | nil,
        applied_at: Time | nil,
        cancelled_at: Time | nil
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
        expiration_time: Time,
        status: Orb::Models::SubscriptionChangeApplyResponse::Status,
        subscription: Orb::Models::SubscriptionChangeApplyResponse::Subscription | nil,
        applied_at: Time | nil,
        cancelled_at: Time | nil
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
        expiration_time: Time,
        status: Orb::Models::SubscriptionChangeCancelResponse::Status,
        subscription: Orb::Models::SubscriptionChangeCancelResponse::Subscription | nil,
        applied_at: Time | nil,
        cancelled_at: Time | nil
      }
    end
  end
end
