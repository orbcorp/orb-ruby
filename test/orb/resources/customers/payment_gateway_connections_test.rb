# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::PaymentGatewayConnectionsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.customers.payment_gateway_connections.create(
        "customer_id",
        payment_gateway_connection_id: "payment_gateway_connection_id"
      )

    assert_pattern do
      response => Orb::Customers::CustomerPaymentGatewayConnection
    end

    assert_pattern do
      response => {
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        payment_gateway_connection_id: String,
        provider_customer_id: String | nil,
        provider_type: Orb::Customers::CustomerPaymentGatewayConnection::ProviderType
      }
    end
  end

  def test_update_required_params
    response =
      @orb.customers.payment_gateway_connections.update(
        "payment_gateway_connection_id",
        customer_id: "customer_id"
      )

    assert_pattern do
      response => Orb::Customers::CustomerPaymentGatewayConnection
    end

    assert_pattern do
      response => {
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        payment_gateway_connection_id: String,
        provider_customer_id: String | nil,
        provider_type: Orb::Customers::CustomerPaymentGatewayConnection::ProviderType
      }
    end
  end

  def test_list
    response = @orb.customers.payment_gateway_connections.list("customer_id")

    assert_pattern do
      response => Orb::Models::Customers::PaymentGatewayConnectionListResponse
    end

    assert_pattern do
      response => {
        customer_id: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Customers::CustomerPaymentGatewayConnection])
      }
    end
  end

  def test_delete_required_params
    response =
      @orb.customers.payment_gateway_connections.delete(
        "payment_gateway_connection_id",
        customer_id: "customer_id"
      )

    assert_pattern do
      response => Orb::Customers::CustomerPaymentGatewayConnection
    end

    assert_pattern do
      response => {
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        payment_gateway_connection_id: String,
        provider_customer_id: String | nil,
        provider_type: Orb::Customers::CustomerPaymentGatewayConnection::ProviderType
      }
    end
  end

  def test_create_by_external_id_required_params
    response =
      @orb.customers.payment_gateway_connections.create_by_external_id(
        "external_customer_id",
        payment_gateway_connection_id: "payment_gateway_connection_id"
      )

    assert_pattern do
      response => Orb::Customers::CustomerPaymentGatewayConnection
    end

    assert_pattern do
      response => {
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        payment_gateway_connection_id: String,
        provider_customer_id: String | nil,
        provider_type: Orb::Customers::CustomerPaymentGatewayConnection::ProviderType
      }
    end
  end

  def test_delete_by_external_id_required_params
    response =
      @orb.customers.payment_gateway_connections.delete_by_external_id(
        "payment_gateway_connection_id",
        external_customer_id: "external_customer_id"
      )

    assert_pattern do
      response => Orb::Customers::CustomerPaymentGatewayConnection
    end

    assert_pattern do
      response => {
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        payment_gateway_connection_id: String,
        provider_customer_id: String | nil,
        provider_type: Orb::Customers::CustomerPaymentGatewayConnection::ProviderType
      }
    end
  end

  def test_list_by_external_id
    response = @orb.customers.payment_gateway_connections.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Models::Customers::PaymentGatewayConnectionListByExternalIDResponse
    end

    assert_pattern do
      response => {
        customer_id: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Customers::CustomerPaymentGatewayConnection])
      }
    end
  end

  def test_update_by_external_id_required_params
    response =
      @orb.customers.payment_gateway_connections.update_by_external_id(
        "payment_gateway_connection_id",
        external_customer_id: "external_customer_id"
      )

    assert_pattern do
      response => Orb::Customers::CustomerPaymentGatewayConnection
    end

    assert_pattern do
      response => {
        billing_entity_id: String,
        created_at: Time,
        external_account_id: String | nil,
        is_default: Orb::Internal::Type::Boolean,
        payment_gateway_connection_id: String,
        provider_customer_id: String | nil,
        provider_type: Orb::Customers::CustomerPaymentGatewayConnection::ProviderType
      }
    end
  end
end
