# frozen_string_literal: true

require_relative "../../../test_helper"

class Orb::Test::Resources::Customers::Credits::LedgerTest < Orb::Test::ResourceTest
  def test_list
    response = @orb.customers.credits.ledger.list("customer_id")

    assert_pattern do
      response => Orb::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::Credits::LedgerListResponse
    end

    assert_pattern do
      case row
      in Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case row
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end

  def test_create_entry_required_params
    response =
      @orb.customers.credits.ledger.create_entry(
        "customer_id",
        entry_type: :expiration_change,
        expiry_date: "2019-12-27T18:11:19.117Z",
        target_expiry_date: "2019-12-27"
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryResponse
    end

    assert_pattern do
      case response
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case response
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end

  def test_create_entry_by_external_id_required_params
    response =
      @orb.customers.credits.ledger.create_entry_by_external_id(
        "external_customer_id",
        entry_type: :expiration_change,
        expiry_date: "2019-12-27T18:11:19.117Z",
        target_expiry_date: "2019-12-27"
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse
    end

    assert_pattern do
      case response
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case response
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end

  def test_list_by_external_id
    response = @orb.customers.credits.ledger.list_by_external_id("external_customer_id")

    assert_pattern do
      response => Orb::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Orb::Models::Customers::Credits::LedgerListByExternalIDResponse
    end

    assert_pattern do
      case row
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry
      end
    end

    assert_pattern do
      case row
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        new_block_expiry_date: Time | nil,
        starting_balance: Float
      }
      in {
        entry_type: :credit_block_expiry,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float,
        void_amount: Float,
        void_reason: String | nil
      }
      in {
        entry_type: :void_initiated,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
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
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end
end
