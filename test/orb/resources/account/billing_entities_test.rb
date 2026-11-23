# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Account::BillingEntitiesTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.account.billing_entities.create(address: {country: "x"}, legal_name: "x", name: "x")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_update
    response = @orb.account.billing_entities.update("billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_list
    response = @orb.account.billing_entities.list

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Account::BillingEntity
    end

    assert_pattern do
      row => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_archive
    response = @orb.account.billing_entities.archive("billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_archive_by_external_id
    response = @orb.account.billing_entities.archive_by_external_id("external_billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_fetch
    response = @orb.account.billing_entities.fetch("billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_fetch_by_external_id
    response = @orb.account.billing_entities.fetch_by_external_id("external_billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_unarchive
    response = @orb.account.billing_entities.unarchive("billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_unarchive_by_external_id
    response = @orb.account.billing_entities.unarchive_by_external_id("external_billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end

  def test_update_by_external_id
    response = @orb.account.billing_entities.update_by_external_id("external_billing_entity_id")

    assert_pattern do
      response => Orb::Account::BillingEntity
    end

    assert_pattern do
      response => {
        id: String,
        address: Orb::Address | nil,
        created_at: Time,
        default_payment_gateway_connection_id: String | nil,
        external_billing_entity_id: String | nil,
        invoice_settings: Orb::Account::BillingEntity::InvoiceSettings,
        is_default: Orb::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        payment_gateway_connections: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::PaymentGatewayConnection]),
        status: Orb::Account::BillingEntity::Status,
        tax_registrations: ^(Orb::Internal::Type::ArrayOf[Orb::Account::BillingEntity::TaxRegistration])
      }
    end
  end
end
