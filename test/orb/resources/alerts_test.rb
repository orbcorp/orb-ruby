# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::AlertsTest < Orb::Test::ResourceTest
  def test_retrieve
    response = @orb.alerts.retrieve("alert_id")

    assert_pattern do
      response => Orb::Alert
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end

  def test_update_required_params
    response = @orb.alerts.update("alert_configuration_id", thresholds: [{value: 0}])

    assert_pattern do
      response => Orb::Alert
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end

  def test_list
    skip("plan_version=0 breaks Prism")

    response = @orb.alerts.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Alert
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end

  def test_create_for_customer_required_params
    response =
      @orb.alerts.create_for_customer("customer_id", currency: "currency", type: :credit_balance_depleted)

    assert_pattern do
      response => Orb::Alert
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end

  def test_create_for_external_customer_required_params
    response =
      @orb.alerts.create_for_external_customer(
        "external_customer_id",
        currency: "currency",
        type: :credit_balance_depleted
      )

    assert_pattern do
      response => Orb::Alert
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end

  def test_create_for_subscription_required_params
    response =
      @orb.alerts.create_for_subscription("subscription_id", thresholds: [{value: 0}], type: :usage_exceeded)

    assert_pattern do
      response => Orb::Alert
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end

  def test_disable
    response = @orb.alerts.disable("alert_configuration_id")

    assert_pattern do
      response => Orb::Alert
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end

  def test_enable
    response = @orb.alerts.enable("alert_configuration_id")

    assert_pattern do
      response => Orb::Alert
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        currency: String | nil,
        customer: Orb::Alert::Customer | nil,
        enabled: Orb::Internal::Type::Boolean,
        metric: Orb::Alert::Metric | nil,
        plan: Orb::Alert::Plan | nil,
        subscription: Orb::Alert::Subscription | nil,
        thresholds: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold]) | nil,
        type: Orb::Alert::Type,
        balance_alert_status: ^(Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus]) | nil
      }
    end
  end
end
