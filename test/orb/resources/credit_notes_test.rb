# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CreditNotesTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @orb.credit_notes.create(
      line_items: [
        {
          amount: "amount",
          invoice_line_item_id: "4khy3nwzktxv7"
        }
      ]
    )

    assert_pattern do
      response => Orb::Models::CreditNote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        credit_note_number: String,
        credit_note_pdf: String | nil,
        customer: Orb::Models::CreditNote::Customer,
        invoice_id: String,
        line_items: ^(Orb::ArrayOf[Orb::Models::CreditNote::LineItem]),
        maximum_amount_adjustment: Orb::Models::CreditNote::MaximumAmountAdjustment | nil,
        memo: String | nil,
        minimum_amount_refunded: String | nil,
        reason: Orb::Models::CreditNote::Reason | nil,
        subtotal: String,
        total: String,
        type: Orb::Models::CreditNote::Type,
        voided_at: Time | nil,
        discounts: ^(Orb::ArrayOf[Orb::Models::CreditNote::Discount]) | nil
      }
    end
  end

  def test_list
    response = @orb.credit_notes.list

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::CreditNote
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        credit_note_number: String,
        credit_note_pdf: String | nil,
        customer: Orb::Models::CreditNote::Customer,
        invoice_id: String,
        line_items: ^(Orb::ArrayOf[Orb::Models::CreditNote::LineItem]),
        maximum_amount_adjustment: Orb::Models::CreditNote::MaximumAmountAdjustment | nil,
        memo: String | nil,
        minimum_amount_refunded: String | nil,
        reason: Orb::Models::CreditNote::Reason | nil,
        subtotal: String,
        total: String,
        type: Orb::Models::CreditNote::Type,
        voided_at: Time | nil,
        discounts: ^(Orb::ArrayOf[Orb::Models::CreditNote::Discount]) | nil
      }
    end
  end

  def test_fetch
    response = @orb.credit_notes.fetch("credit_note_id")

    assert_pattern do
      response => Orb::Models::CreditNote
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        credit_note_number: String,
        credit_note_pdf: String | nil,
        customer: Orb::Models::CreditNote::Customer,
        invoice_id: String,
        line_items: ^(Orb::ArrayOf[Orb::Models::CreditNote::LineItem]),
        maximum_amount_adjustment: Orb::Models::CreditNote::MaximumAmountAdjustment | nil,
        memo: String | nil,
        minimum_amount_refunded: String | nil,
        reason: Orb::Models::CreditNote::Reason | nil,
        subtotal: String,
        total: String,
        type: Orb::Models::CreditNote::Type,
        voided_at: Time | nil,
        discounts: ^(Orb::ArrayOf[Orb::Models::CreditNote::Discount]) | nil
      }
    end
  end
end
