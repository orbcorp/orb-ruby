# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CustomersTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.customers.create(email: "dev@stainless.com", name: "x")

    assert_pattern do
      response => Orb::Models::Customer
    end

    assert_pattern do
      response => {
        id: String,
        additional_emails: ^(Orb::ArrayOf[String]),
        auto_collection: Orb::BooleanModel,
        balance: String,
        billing_address: Orb::Models::Customer::BillingAddress | nil,
        created_at: Time,
        currency: String | nil,
        email: String,
        email_delivery: Orb::BooleanModel,
        exempt_from_automated_tax: Orb::BooleanModel | nil,
        external_customer_id: String | nil,
        hierarchy: Orb::Models::Customer::Hierarchy,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        payment_provider: Orb::Models::Customer::PaymentProvider | nil,
        payment_provider_id: String | nil,
        portal_url: String | nil,
        shipping_address: Orb::Models::Customer::ShippingAddress | nil,
        tax_id: Orb::Models::Customer::TaxID | nil,
        timezone: String,
        accounting_sync_configuration: Orb::Models::Customer::AccountingSyncConfiguration | nil,
        reporting_configuration: Orb::Models::Customer::ReportingConfiguration | nil
      }
    end
  end

  def test_update
    response = @orb.customers.update("customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end

    assert_pattern do
      response => {
        id: String,
        additional_emails: ^(Orb::ArrayOf[String]),
        auto_collection: Orb::BooleanModel,
        balance: String,
        billing_address: Orb::Models::Customer::BillingAddress | nil,
        created_at: Time,
        currency: String | nil,
        email: String,
        email_delivery: Orb::BooleanModel,
        exempt_from_automated_tax: Orb::BooleanModel | nil,
        external_customer_id: String | nil,
        hierarchy: Orb::Models::Customer::Hierarchy,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        payment_provider: Orb::Models::Customer::PaymentProvider | nil,
        payment_provider_id: String | nil,
        portal_url: String | nil,
        shipping_address: Orb::Models::Customer::ShippingAddress | nil,
        tax_id: Orb::Models::Customer::TaxID | nil,
        timezone: String,
        accounting_sync_configuration: Orb::Models::Customer::AccountingSyncConfiguration | nil,
        reporting_configuration: Orb::Models::Customer::ReportingConfiguration | nil
      }
    end
  end

  def test_list
    response = @orb.customers.list

    assert_pattern do
      response => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::Customer
    end

    assert_pattern do
      row => {
        id: String,
        additional_emails: ^(Orb::ArrayOf[String]),
        auto_collection: Orb::BooleanModel,
        balance: String,
        billing_address: Orb::Models::Customer::BillingAddress | nil,
        created_at: Time,
        currency: String | nil,
        email: String,
        email_delivery: Orb::BooleanModel,
        exempt_from_automated_tax: Orb::BooleanModel | nil,
        external_customer_id: String | nil,
        hierarchy: Orb::Models::Customer::Hierarchy,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        payment_provider: Orb::Models::Customer::PaymentProvider | nil,
        payment_provider_id: String | nil,
        portal_url: String | nil,
        shipping_address: Orb::Models::Customer::ShippingAddress | nil,
        tax_id: Orb::Models::Customer::TaxID | nil,
        timezone: String,
        accounting_sync_configuration: Orb::Models::Customer::AccountingSyncConfiguration | nil,
        reporting_configuration: Orb::Models::Customer::ReportingConfiguration | nil
      }
    end
  end

  def test_delete
    response = @orb.customers.delete("customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_fetch
    response = @orb.customers.fetch("customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end

    assert_pattern do
      response => {
        id: String,
        additional_emails: ^(Orb::ArrayOf[String]),
        auto_collection: Orb::BooleanModel,
        balance: String,
        billing_address: Orb::Models::Customer::BillingAddress | nil,
        created_at: Time,
        currency: String | nil,
        email: String,
        email_delivery: Orb::BooleanModel,
        exempt_from_automated_tax: Orb::BooleanModel | nil,
        external_customer_id: String | nil,
        hierarchy: Orb::Models::Customer::Hierarchy,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        payment_provider: Orb::Models::Customer::PaymentProvider | nil,
        payment_provider_id: String | nil,
        portal_url: String | nil,
        shipping_address: Orb::Models::Customer::ShippingAddress | nil,
        tax_id: Orb::Models::Customer::TaxID | nil,
        timezone: String,
        accounting_sync_configuration: Orb::Models::Customer::AccountingSyncConfiguration | nil,
        reporting_configuration: Orb::Models::Customer::ReportingConfiguration | nil
      }
    end
  end

  def test_fetch_by_external_id
    response = @orb.customers.fetch_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end

    assert_pattern do
      response => {
        id: String,
        additional_emails: ^(Orb::ArrayOf[String]),
        auto_collection: Orb::BooleanModel,
        balance: String,
        billing_address: Orb::Models::Customer::BillingAddress | nil,
        created_at: Time,
        currency: String | nil,
        email: String,
        email_delivery: Orb::BooleanModel,
        exempt_from_automated_tax: Orb::BooleanModel | nil,
        external_customer_id: String | nil,
        hierarchy: Orb::Models::Customer::Hierarchy,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        payment_provider: Orb::Models::Customer::PaymentProvider | nil,
        payment_provider_id: String | nil,
        portal_url: String | nil,
        shipping_address: Orb::Models::Customer::ShippingAddress | nil,
        tax_id: Orb::Models::Customer::TaxID | nil,
        timezone: String,
        accounting_sync_configuration: Orb::Models::Customer::AccountingSyncConfiguration | nil,
        reporting_configuration: Orb::Models::Customer::ReportingConfiguration | nil
      }
    end
  end

  def test_sync_payment_methods_from_gateway
    response = @orb.customers.sync_payment_methods_from_gateway("external_customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_sync_payment_methods_from_gateway_by_external_customer_id
    response = @orb.customers.sync_payment_methods_from_gateway_by_external_customer_id("customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_update_by_external_id
    response = @orb.customers.update_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Models::Customer
    end

    assert_pattern do
      response => {
        id: String,
        additional_emails: ^(Orb::ArrayOf[String]),
        auto_collection: Orb::BooleanModel,
        balance: String,
        billing_address: Orb::Models::Customer::BillingAddress | nil,
        created_at: Time,
        currency: String | nil,
        email: String,
        email_delivery: Orb::BooleanModel,
        exempt_from_automated_tax: Orb::BooleanModel | nil,
        external_customer_id: String | nil,
        hierarchy: Orb::Models::Customer::Hierarchy,
        metadata: ^(Orb::HashOf[String]),
        name: String,
        payment_provider: Orb::Models::Customer::PaymentProvider | nil,
        payment_provider_id: String | nil,
        portal_url: String | nil,
        shipping_address: Orb::Models::Customer::ShippingAddress | nil,
        tax_id: Orb::Models::Customer::TaxID | nil,
        timezone: String,
        accounting_sync_configuration: Orb::Models::Customer::AccountingSyncConfiguration | nil,
        reporting_configuration: Orb::Models::Customer::ReportingConfiguration | nil
      }
    end
  end
end
