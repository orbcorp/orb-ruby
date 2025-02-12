# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::AlertsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @orb.alerts.retrieve("alert_id")

    assert_pattern do
      response => Orb::Models::Alert
    end
  end

  def test_update_required_params
    response = @orb.alerts.update("alert_configuration_id", thresholds: [{value: 0}])

    assert_pattern do
      response => Orb::Models::Alert
    end
  end

  def test_list
    skip("plan_version=0 breaks Prism")

    response = @orb.alerts.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Alert
    end
  end

  def test_create_for_customer_required_params
    response = @orb.alerts.create_for_customer("customer_id", currency: "currency", type: :usage_exceeded)

    assert_pattern do
      response => Orb::Models::Alert
    end
  end

  def test_create_for_external_customer_required_params
    response = @orb.alerts.create_for_external_customer(
      "external_customer_id",
      currency: "currency",
      type: :usage_exceeded
    )

    assert_pattern do
      response => Orb::Models::Alert
    end
  end

  def test_create_for_subscription_required_params
    response = @orb.alerts.create_for_subscription(
      "subscription_id",
      thresholds: [{value: 0}],
      type: :usage_exceeded
    )

    assert_pattern do
      response => Orb::Models::Alert
    end
  end

  def test_disable
    response = @orb.alerts.disable("alert_configuration_id")

    assert_pattern do
      response => Orb::Models::Alert
    end
  end

  def test_enable
    response = @orb.alerts.enable("alert_configuration_id")

    assert_pattern do
      response => Orb::Models::Alert
    end
  end
end
