# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::InvoiceLineItemsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.invoice_line_items.create(
      amount: "12.00",
      end_date: "2023-09-22",
      invoice_id: "4khy3nwzktxv7",
      name: "Item Name",
      quantity: 1,
      start_date: "2023-09-22"
    )

    assert_pattern do
      response => Orb::Models::InvoiceLineItemModel
    end

    assert_pattern do
      response => {
        id: String,
        adjusted_subtotal: String,
        adjustments: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLineItemModel::Adjustment]),
        amount: String,
        credits_applied: String,
        discount: Orb::Models::Discount | nil,
        end_date: Time,
        filter: String | nil,
        grouping: String | nil,
        maximum: Orb::Models::MaximumModel | nil,
        maximum_amount: String | nil,
        minimum: Orb::Models::MinimumModel | nil,
        minimum_amount: String | nil,
        name: String,
        partially_invoiced_amount: String,
        price: Orb::Models::PriceModel | nil,
        quantity: Float,
        start_date: Time,
        sub_line_items: ^(Orb::ArrayOf[union: Orb::Models::InvoiceLineItemModel::SubLineItem]),
        subtotal: String,
        tax_amounts: ^(Orb::ArrayOf[Orb::Models::TaxAmountModel]),
        usage_customer_ids: ^(Orb::ArrayOf[String]) | nil
      }
    end
  end
end
