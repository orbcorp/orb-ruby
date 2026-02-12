# frozen_string_literal: true

require_relative "../test_helper"

class Orb::Test::Resources::CreditBlocksTest < Orb::Test::ResourceTest
  def test_retrieve
    response = @orb.credit_blocks.retrieve("block_id")

    assert_pattern do
      response => Orb::Models::CreditBlockRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        balance: Float,
        effective_date: Time | nil,
        expiry_date: Time | nil,
        filters: ^(Orb::Internal::Type::ArrayOf[Orb::Models::CreditBlockRetrieveResponse::Filter]),
        maximum_initial_balance: Float | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        per_unit_cost_basis: String | nil,
        status: Orb::Models::CreditBlockRetrieveResponse::Status
      }
    end
  end

  def test_delete
    response = @orb.credit_blocks.delete("block_id")

    assert_pattern do
      response => nil
    end
  end

  def test_list_invoices
    response = @orb.credit_blocks.list_invoices("block_id")

    assert_pattern do
      response => Orb::Models::CreditBlockListInvoicesResponse
    end

    assert_pattern do
      response => {
        block: Orb::Models::CreditBlockListInvoicesResponse::Block,
        invoices: ^(Orb::Internal::Type::ArrayOf[Orb::Models::CreditBlockListInvoicesResponse::Invoice])
      }
    end
  end
end
