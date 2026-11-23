# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Account::PaymentGatewayConnectionsTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.account.payment_gateway_connections.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Account::PaymentGatewayConnection
    end

    assert_pattern do
      row => {
        id: String,
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        provider_type: Orb::Account::PaymentGatewayConnection::ProviderType
      }
    end
  end

  def test_fetch
    response = @orb.account.payment_gateway_connections.fetch("payment_gateway_connection_id")

    assert_pattern do
      response => Orb::Account::PaymentGatewayConnection
    end

    assert_pattern do
      response => {
        id: String,
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        provider_type: Orb::Account::PaymentGatewayConnection::ProviderType
      }
    end
  end
end
