# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::BalanceTransactionsTest < Orb::Test::ResourceTest
  def test_create_required_params
    response = @orb.customers.balance_transactions.create("customer_id", amount: "amount", type: :increment)

    assert_pattern do
      response => Orb::Models::CustomerBalanceTransactionModel
    end

    assert_pattern do
      response => {
        id: String,
        action: Orb::Models::CustomerBalanceTransactionModel::Action,
        amount: String,
        created_at: Time,
        credit_note: Orb::Models::CustomerBalanceTransactionModel::CreditNote | nil,
        description: String | nil,
        ending_balance: String,
        invoice: Orb::Models::CustomerBalanceTransactionModel::Invoice | nil,
        starting_balance: String,
        type: Orb::Models::CustomerBalanceTransactionModel::Type
      }
    end
  end

  def test_list
    response = @orb.customers.balance_transactions.list("customer_id")

    assert_pattern do
      response => Orb::Page
    end

    page = response.next_page
    assert_pattern do
      page => Orb::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Orb::Models::CustomerBalanceTransactionModel
    end

    assert_pattern do
      row => {
        id: String,
        action: Orb::Models::CustomerBalanceTransactionModel::Action,
        amount: String,
        created_at: Time,
        credit_note: Orb::Models::CustomerBalanceTransactionModel::CreditNote | nil,
        description: String | nil,
        ending_balance: String,
        invoice: Orb::Models::CustomerBalanceTransactionModel::Invoice | nil,
        starting_balance: String,
        type: Orb::Models::CustomerBalanceTransactionModel::Type
      }
    end
  end
end
