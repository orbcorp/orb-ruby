# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::WebhookEndpointsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.webhook_endpoints.create(url: "url")

    assert_pattern do
      response => Orb::WebhookEndpointWithSecret
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        enabled: Orb::Internal::Type::Boolean,
        enabled_event_types: ^(Orb::Internal::Type::ArrayOf[String]) | nil,
        payload_style: Orb::WebhookEndpointWithSecret::PayloadStyle,
        secret: String,
        url: String
      }
    end
  end

  def test_retrieve
    response = @orb.webhook_endpoints.retrieve("webhook_endpoint_id")

    assert_pattern do
      response => Orb::WebhookEndpoint
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        enabled: Orb::Internal::Type::Boolean,
        enabled_event_types: ^(Orb::Internal::Type::ArrayOf[String]) | nil,
        payload_style: Orb::WebhookEndpoint::PayloadStyle,
        url: String
      }
    end
  end

  def test_update
    response = @orb.webhook_endpoints.update("webhook_endpoint_id")

    assert_pattern do
      response => Orb::WebhookEndpoint
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        enabled: Orb::Internal::Type::Boolean,
        enabled_event_types: ^(Orb::Internal::Type::ArrayOf[String]) | nil,
        payload_style: Orb::WebhookEndpoint::PayloadStyle,
        url: String
      }
    end
  end

  def test_list
    response = @orb.webhook_endpoints.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::WebhookEndpoint
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        enabled: Orb::Internal::Type::Boolean,
        enabled_event_types: ^(Orb::Internal::Type::ArrayOf[String]) | nil,
        payload_style: Orb::WebhookEndpoint::PayloadStyle,
        url: String
      }
    end
  end

  def test_delete
    response = @orb.webhook_endpoints.delete("webhook_endpoint_id")

    assert_pattern do
      response => nil
    end
  end

  def test_disable
    response = @orb.webhook_endpoints.disable("webhook_endpoint_id")

    assert_pattern do
      response => Orb::WebhookEndpoint
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        enabled: Orb::Internal::Type::Boolean,
        enabled_event_types: ^(Orb::Internal::Type::ArrayOf[String]) | nil,
        payload_style: Orb::WebhookEndpoint::PayloadStyle,
        url: String
      }
    end
  end

  def test_enable
    response = @orb.webhook_endpoints.enable("webhook_endpoint_id")

    assert_pattern do
      response => Orb::WebhookEndpoint
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        enabled: Orb::Internal::Type::Boolean,
        enabled_event_types: ^(Orb::Internal::Type::ArrayOf[String]) | nil,
        payload_style: Orb::WebhookEndpoint::PayloadStyle,
        url: String
      }
    end
  end
end
