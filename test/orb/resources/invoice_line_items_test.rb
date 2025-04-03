# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::InvoiceLineItemsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response =
      @orb.invoice_line_items.create(
        amount: "12.00",
        end_date: "2023-09-22",
        invoice_id: "4khy3nwzktxv7",
        name: "Item Name",
        quantity: 1,
        start_date: "2023-09-22"
      )

    assert_pattern do
      response => Orb::Models::InvoiceLineItemCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        adjusted_subtotal: String,
        adjustments: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::InvoiceLineItemCreateResponse::Adjustment]),
        amount: String,
        credits_applied: String,
        discount: Orb::Models::Discount | nil,
        end_date: Time,
        filter: String | nil,
        grouping: String | nil,
        maximum: Orb::Models::InvoiceLineItemCreateResponse::Maximum | nil,
        maximum_amount: String | nil,
        minimum: Orb::Models::InvoiceLineItemCreateResponse::Minimum | nil,
        minimum_amount: String | nil,
        name: String,
        partially_invoiced_amount: String,
        price: Orb::Models::Price | nil,
        quantity: Float,
        start_date: Time,
        sub_line_items: ^(Orb::Internal::Type::ArrayOf[union: Orb::Models::InvoiceLineItemCreateResponse::SubLineItem]),
        subtotal: String,
        tax_amounts: ^(Orb::Internal::Type::ArrayOf[Orb::Models::InvoiceLineItemCreateResponse::TaxAmount]),
        usage_customer_ids: ^(Orb::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
