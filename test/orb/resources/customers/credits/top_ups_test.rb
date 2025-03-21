# frozen_string_literal: true

require_relative "../../../test_helper"

class Orb::Test::Resources::Customers::Credits::TopUpsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.customers.credits.top_ups.create(
        "customer_id",
        amount: "amount",
        currency: "currency",
        invoice_settings: {auto_collection: true, net_terms: 0},
        per_unit_cost_basis: "per_unit_cost_basis",
        threshold: "threshold"
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::TopUpCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: String,
        currency: String,
        invoice_settings: Orb::Models::Customers::Credits::TopUpCreateResponse::InvoiceSettings,
        per_unit_cost_basis: String,
        threshold: String,
        expires_after: Integer | nil,
        expires_after_unit: Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit | nil
      }
    end
  end

  def test_list
    response = @orb.customers.credits.top_ups.list("customer_id")

    assert_pattern do
      response => Orb::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::Credits::TopUpListResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: String,
        currency: String,
        invoice_settings: Orb::Models::Customers::Credits::TopUpListResponse::InvoiceSettings,
        per_unit_cost_basis: String,
        threshold: String,
        expires_after: Integer | nil,
        expires_after_unit: Orb::Models::Customers::Credits::TopUpListResponse::ExpiresAfterUnit | nil
      }
    end
  end

  def test_delete_required_params
    response = @orb.customers.credits.top_ups.delete("top_up_id", customer_id: "customer_id")

    assert_pattern do
      response => nil
    end
  end

  def test_create_by_external_id_required_params
    response =
      @orb.customers.credits.top_ups.create_by_external_id(
        "external_customer_id",
        amount: "amount",
        currency: "currency",
        invoice_settings: {auto_collection: true, net_terms: 0},
        per_unit_cost_basis: "per_unit_cost_basis",
        threshold: "threshold"
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse
    end

    assert_pattern do
      response => {
        id: String,
        amount: String,
        currency: String,
        invoice_settings: Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse::InvoiceSettings,
        per_unit_cost_basis: String,
        threshold: String,
        expires_after: Integer | nil,
        expires_after_unit: Orb::Models::Customers::Credits::TopUpCreateByExternalIDResponse::ExpiresAfterUnit | nil
      }
    end
  end

  def test_delete_by_external_id_required_params
    response =
      @orb.customers.credits.top_ups.delete_by_external_id(
        "top_up_id",
        external_customer_id: "external_customer_id"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_by_external_id
    response = @orb.customers.credits.top_ups.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::Credits::TopUpListByExternalIDResponse
    end

    assert_pattern do
      row => {
        id: String,
        amount: String,
        currency: String,
        invoice_settings: Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::InvoiceSettings,
        per_unit_cost_basis: String,
        threshold: String,
        expires_after: Integer | nil,
        expires_after_unit: Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit | nil
      }
    end
  end
end
