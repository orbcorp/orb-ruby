# frozen_string_literal: true

require_relative "../../test_helper"

class Orb::Test::Resources::Customers::CreditsTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.customers.credits.list("customer_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::CreditListResponse
    end

    assert_pattern do
      row => {
        id: String,
        balance: Float,
        credit_block_source: Orb::Models::Customers::CreditListResponse::CreditBlockSource,
        effective_date: Time | nil,
        expiry_date: Time | nil,
        filters: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Customers::CreditListResponse::Filter]),
        maximum_initial_balance: Float | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        per_unit_cost_basis: String | nil,
        status: Orb::Models::Customers::CreditListResponse::Status,
        credit_allocation: Orb::Models::Customers::CreditListResponse::CreditAllocation | nil,
        credit_commitment: Orb::Models::Customers::CreditListResponse::CreditCommitment | nil
      }
    end
  end

  def test_list_by_external_id
    response = @orb.customers.credits.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::CreditListByExternalIDResponse
    end

    assert_pattern do
      row => {
        id: String,
        balance: Float,
        credit_block_source: Orb::Models::Customers::CreditListByExternalIDResponse::CreditBlockSource,
        effective_date: Time | nil,
        expiry_date: Time | nil,
        filters: ^(Orb::Internal::Type::ArrayOf[Orb::Models::Customers::CreditListByExternalIDResponse::Filter]),
        maximum_initial_balance: Float | nil,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        per_unit_cost_basis: String | nil,
        status: Orb::Models::Customers::CreditListByExternalIDResponse::Status,
        credit_allocation: Orb::Models::Customers::CreditListByExternalIDResponse::CreditAllocation | nil,
        credit_commitment: Orb::Models::Customers::CreditListByExternalIDResponse::CreditCommitment | nil
      }
    end
  end
end
