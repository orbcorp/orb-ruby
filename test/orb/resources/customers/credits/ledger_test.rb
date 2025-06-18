# frozen_string_literal: true

require_relative "../../../test_helper"

class Orb::Test::Resources::Customers::Credits::LedgerTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.customers.credits.ledger.list("customer_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::Credits::LedgerListResponse
    end

    assert_pattern do
      case row
      in Orb::Customers::Credits::IncrementLedgerEntry
      in Orb::Customers::Credits::DecrementLedgerEntry
      in Orb::Customers::Credits::ExpirationChangeLedgerEntry
      in Orb::Customers::Credits::CreditBlockExpiryLedgerEntry
      in Orb::Customers::Credits::VoidLedgerEntry
      in Orb::Customers::Credits::VoidInitiatedLedgerEntry
      in Orb::Customers::Credits::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case row
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        created_invoices: ^(Orb::Internal::Type::ArrayOf[Orb::Invoice]) | nil
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        event_id: String | nil,
        invoice_id: String | nil,
        price_id: String | nil
      }
      in {
        entry_type: :expiration_change,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time,
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :amendment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end

  def test_create_entry_required_params
    response =
      @orb.customers.credits.ledger.create_entry(
        "customer_id",
        amount: 0,
        block_id: "block_id",
        entry_type: :void
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryResponse
    end

    assert_pattern do
      case response
      in Orb::Customers::Credits::IncrementLedgerEntry
      in Orb::Customers::Credits::DecrementLedgerEntry
      in Orb::Customers::Credits::ExpirationChangeLedgerEntry
      in Orb::Customers::Credits::CreditBlockExpiryLedgerEntry
      in Orb::Customers::Credits::VoidLedgerEntry
      in Orb::Customers::Credits::VoidInitiatedLedgerEntry
      in Orb::Customers::Credits::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case response
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        created_invoices: ^(Orb::Internal::Type::ArrayOf[Orb::Invoice]) | nil
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        event_id: String | nil,
        invoice_id: String | nil,
        price_id: String | nil
      }
      in {
        entry_type: :expiration_change,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time,
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :amendment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end

  def test_create_entry_by_external_id_required_params
    response =
      @orb.customers.credits.ledger.create_entry_by_external_id(
        "external_customer_id",
        amount: 0,
        block_id: "block_id",
        entry_type: :void
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse
    end

    assert_pattern do
      case response
      in Orb::Customers::Credits::IncrementLedgerEntry
      in Orb::Customers::Credits::DecrementLedgerEntry
      in Orb::Customers::Credits::ExpirationChangeLedgerEntry
      in Orb::Customers::Credits::CreditBlockExpiryLedgerEntry
      in Orb::Customers::Credits::VoidLedgerEntry
      in Orb::Customers::Credits::VoidInitiatedLedgerEntry
      in Orb::Customers::Credits::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case response
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        created_invoices: ^(Orb::Internal::Type::ArrayOf[Orb::Invoice]) | nil
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        event_id: String | nil,
        invoice_id: String | nil,
        price_id: String | nil
      }
      in {
        entry_type: :expiration_change,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time,
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :amendment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end

  def test_list_by_external_id
    response = @orb.customers.credits.ledger.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::Credits::LedgerListByExternalIDResponse
    end

    assert_pattern do
      case row
      in Orb::Customers::Credits::IncrementLedgerEntry
      in Orb::Customers::Credits::DecrementLedgerEntry
      in Orb::Customers::Credits::ExpirationChangeLedgerEntry
      in Orb::Customers::Credits::CreditBlockExpiryLedgerEntry
      in Orb::Customers::Credits::VoidLedgerEntry
      in Orb::Customers::Credits::VoidInitiatedLedgerEntry
      in Orb::Customers::Credits::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case row
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        created_invoices: ^(Orb::Internal::Type::ArrayOf[Orb::Invoice]) | nil
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        event_id: String | nil,
        invoice_id: String | nil,
        price_id: String | nil
      }
      in {
        entry_type: :expiration_change,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        new_block_expiry_date: Time,
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :amendment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Customers::Credits::AffectedBlock,
        currency: String,
        customer: Orb::CustomerMinified,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Customers::Credits::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end
end
