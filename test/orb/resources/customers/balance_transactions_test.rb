# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::BalanceTransactionsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.customers.balance_transactions.create("customer_id", amount: "amount", type: :increment)

    assert_pattern do
      response => Orb::Models::Customers::BalanceTransactionCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        action: Orb::Models::Customers::BalanceTransactionCreateResponse::Action,
        amount: String,
        created_at: Time,
        credit_note: Orb::CreditNoteTiny | nil,
        description: String | nil,
        ending_balance: String,
        invoice: Orb::InvoiceTiny | nil,
        starting_balance: String,
        type: Orb::Models::Customers::BalanceTransactionCreateResponse::Type
      }
    end
  end

  def test_list
    response = @orb.customers.balance_transactions.list("customer_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::BalanceTransactionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        action: Orb::Models::Customers::BalanceTransactionListResponse::Action,
        amount: String,
        created_at: Time,
        credit_note: Orb::CreditNoteTiny | nil,
        description: String | nil,
        ending_balance: String,
        invoice: Orb::InvoiceTiny | nil,
        starting_balance: String,
        type: Orb::Models::Customers::BalanceTransactionListResponse::Type
      }
    end
  end
end
