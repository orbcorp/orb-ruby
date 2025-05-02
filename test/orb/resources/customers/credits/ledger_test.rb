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
      in Orb::Models::Customers::Credits::LedgerListResponse::Increment
      in Orb::Models::Customers::Credits::LedgerListResponse::Decrement
      in Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChange
      in Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiry
      in Orb::Models::Customers::Credits::LedgerListResponse::Void
      in Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiated
      in Orb::Models::Customers::Credits::LedgerListResponse::Amendment
      end
    end

    assert_pattern do
      case row
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::Increment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::Increment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::Increment::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::Decrement::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::Decrement::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::Decrement::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChange::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChange::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChange::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::Void::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::Void::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::Void::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiated::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiated::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiated::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListResponse::Amendment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListResponse::Amendment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListResponse::Amendment::EntryStatus,
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
        entry_type: :expiration_change,
        expiry_date: "2019-12-27T18:11:19.117Z",
        target_expiry_date: "2019-12-27"
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryResponse
    end

    assert_pattern do
      case response
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Increment
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Decrement
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChange
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiry
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Void
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiated
      in Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Amendment
      end
    end

    assert_pattern do
      case response
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Increment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Increment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Increment::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Decrement::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Decrement::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Decrement::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChange::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChange::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChange::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Void::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Void::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Void::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiated::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiated::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiated::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Amendment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Amendment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Amendment::EntryStatus,
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
        entry_type: :expiration_change,
        expiry_date: "2019-12-27T18:11:19.117Z",
        target_expiry_date: "2019-12-27"
      )

    assert_pattern do
      response => Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse
    end

    assert_pattern do
      case response
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Increment
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Decrement
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChange
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiry
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Void
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiated
      in Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Amendment
      end
    end

    assert_pattern do
      case response
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Increment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Increment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Increment::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Decrement::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Decrement::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Decrement::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChange::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChange::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChange::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Void::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Void::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Void::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiated::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiated::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiated::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Amendment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Amendment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Amendment::EntryStatus,
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
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated
      in Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment
      end
    end

    assert_pattern do
      case row
      in {
        entry_type: :increment,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :decrement,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      in {
        entry_type: :void,
        id: String,
        amount: Float,
        created_at: Time,
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus,
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
        credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock,
        currency: String,
        customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer,
        description: String | nil,
        ending_balance: Float,
        entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus,
        ledger_sequence_number: Integer,
        metadata: ^(Orb::Internal::Type::HashOf[String]),
        starting_balance: Float
      }
      end
    end
  end
end
