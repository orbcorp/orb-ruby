# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::BalanceTransactionsTest < Minitest::Test
  def before_all
    @orb = Orb::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

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
        credit_note: Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote | nil,
        description: String | nil,
        ending_balance: String,
        invoice: Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice | nil,
        starting_balance: String,
        type: Orb::Models::Customers::BalanceTransactionCreateResponse::Type
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
      row => Orb::Models::Customers::BalanceTransactionListResponse
    end

    assert_pattern do
      row => {
        id: String,
        action: Orb::Models::Customers::BalanceTransactionListResponse::Action,
        amount: String,
        created_at: Time,
        credit_note: Orb::Models::Customers::BalanceTransactionListResponse::CreditNote | nil,
        description: String | nil,
        ending_balance: String,
        invoice: Orb::Models::Customers::BalanceTransactionListResponse::Invoice | nil,
        starting_balance: String,
        type: Orb::Models::Customers::BalanceTransactionListResponse::Type
      }
    end
  end
end
