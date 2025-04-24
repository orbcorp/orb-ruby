# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        #
        # @see Orb::Resources::Customers::Credits::Ledger#create_entry
        module LedgerCreateEntryResponse
          extend Orb::Internal::Type::Union

          discriminator :entry_type

          variant :increment,
                  -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry }

          variant :decrement,
                  -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry }

          variant :expiration_change,
                  -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry }

          variant :credit_block_expiry,
                  -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry }

          variant :void, -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry }

          variant :void_initiated,
                  -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry }

          variant :amendment,
                  -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry }

          class IncrementLedgerEntry < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_block
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer }

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #
            #   @return [Float]
            required :ending_balance, Float

            # @!attribute entry_status
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus }

            # @!attribute entry_type
            #
            #   @return [Symbol, :increment]
            required :entry_type, const: :increment

            # @!attribute ledger_sequence_number
            #
            #   @return [Integer]
            required :ledger_sequence_number, Integer

            # @!attribute metadata
            #   User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Orb::Internal::Type::HashOf[String]

            # @!attribute starting_balance
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, ledger_sequence_number:, metadata:, starting_balance:, entry_type: :increment)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param entry_type [Symbol, :increment]

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry#credit_block
            class CreditBlock < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute expiry_date
              #
              #   @return [Time, nil]
              required :expiry_date, Time, nil?: true

              # @!attribute per_unit_cost_basis
              #
              #   @return [String, nil]
              required :per_unit_cost_basis, String, nil?: true

              # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
              #   @param id [String]
              #   @param expiry_date [Time, nil]
              #   @param per_unit_cost_basis [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry#customer
            class Customer < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute external_customer_id
              #
              #   @return [String, nil]
              required :external_customer_id, String, nil?: true

              # @!method initialize(id:, external_customer_id:)
              #   @param id [String]
              #   @param external_customer_id [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class DecrementLedgerEntry < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_block
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer }

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #
            #   @return [Float]
            required :ending_balance, Float

            # @!attribute entry_status
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus }

            # @!attribute entry_type
            #
            #   @return [Symbol, :decrement]
            required :entry_type, const: :decrement

            # @!attribute ledger_sequence_number
            #
            #   @return [Integer]
            required :ledger_sequence_number, Integer

            # @!attribute metadata
            #   User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Orb::Internal::Type::HashOf[String]

            # @!attribute starting_balance
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!attribute event_id
            #
            #   @return [String, nil]
            optional :event_id, String, nil?: true

            # @!attribute invoice_id
            #
            #   @return [String, nil]
            optional :invoice_id, String, nil?: true

            # @!attribute price_id
            #
            #   @return [String, nil]
            optional :price_id, String, nil?: true

            # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, ledger_sequence_number:, metadata:, starting_balance:, event_id: nil, invoice_id: nil, price_id: nil, entry_type: :decrement)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param event_id [String, nil]
            #
            #   @param invoice_id [String, nil]
            #
            #   @param price_id [String, nil]
            #
            #   @param entry_type [Symbol, :decrement]

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry#credit_block
            class CreditBlock < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute expiry_date
              #
              #   @return [Time, nil]
              required :expiry_date, Time, nil?: true

              # @!attribute per_unit_cost_basis
              #
              #   @return [String, nil]
              required :per_unit_cost_basis, String, nil?: true

              # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
              #   @param id [String]
              #   @param expiry_date [Time, nil]
              #   @param per_unit_cost_basis [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry#customer
            class Customer < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute external_customer_id
              #
              #   @return [String, nil]
              required :external_customer_id, String, nil?: true

              # @!method initialize(id:, external_customer_id:)
              #   @param id [String]
              #   @param external_customer_id [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class ExpirationChangeLedgerEntry < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_block
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer }

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #
            #   @return [Float]
            required :ending_balance, Float

            # @!attribute entry_status
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus }

            # @!attribute entry_type
            #
            #   @return [Symbol, :expiration_change]
            required :entry_type, const: :expiration_change

            # @!attribute ledger_sequence_number
            #
            #   @return [Integer]
            required :ledger_sequence_number, Integer

            # @!attribute metadata
            #   User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Orb::Internal::Type::HashOf[String]

            # @!attribute new_block_expiry_date
            #
            #   @return [Time, nil]
            required :new_block_expiry_date, Time, nil?: true

            # @!attribute starting_balance
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, ledger_sequence_number:, metadata:, new_block_expiry_date:, starting_balance:, entry_type: :expiration_change)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param new_block_expiry_date [Time, nil]
            #
            #   @param starting_balance [Float]
            #
            #   @param entry_type [Symbol, :expiration_change]

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry#credit_block
            class CreditBlock < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute expiry_date
              #
              #   @return [Time, nil]
              required :expiry_date, Time, nil?: true

              # @!attribute per_unit_cost_basis
              #
              #   @return [String, nil]
              required :per_unit_cost_basis, String, nil?: true

              # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
              #   @param id [String]
              #   @param expiry_date [Time, nil]
              #   @param per_unit_cost_basis [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry#customer
            class Customer < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute external_customer_id
              #
              #   @return [String, nil]
              required :external_customer_id, String, nil?: true

              # @!method initialize(id:, external_customer_id:)
              #   @param id [String]
              #   @param external_customer_id [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditBlockExpiryLedgerEntry < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_block
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer }

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #
            #   @return [Float]
            required :ending_balance, Float

            # @!attribute entry_status
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus }

            # @!attribute entry_type
            #
            #   @return [Symbol, :credit_block_expiry]
            required :entry_type, const: :credit_block_expiry

            # @!attribute ledger_sequence_number
            #
            #   @return [Integer]
            required :ledger_sequence_number, Integer

            # @!attribute metadata
            #   User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Orb::Internal::Type::HashOf[String]

            # @!attribute starting_balance
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, ledger_sequence_number:, metadata:, starting_balance:, entry_type: :credit_block_expiry)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param entry_type [Symbol, :credit_block_expiry]

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry#credit_block
            class CreditBlock < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute expiry_date
              #
              #   @return [Time, nil]
              required :expiry_date, Time, nil?: true

              # @!attribute per_unit_cost_basis
              #
              #   @return [String, nil]
              required :per_unit_cost_basis, String, nil?: true

              # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
              #   @param id [String]
              #   @param expiry_date [Time, nil]
              #   @param per_unit_cost_basis [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry#customer
            class Customer < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute external_customer_id
              #
              #   @return [String, nil]
              required :external_customer_id, String, nil?: true

              # @!method initialize(id:, external_customer_id:)
              #   @param id [String]
              #   @param external_customer_id [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class VoidLedgerEntry < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_block
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer }

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #
            #   @return [Float]
            required :ending_balance, Float

            # @!attribute entry_status
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus }

            # @!attribute entry_type
            #
            #   @return [Symbol, :void]
            required :entry_type, const: :void

            # @!attribute ledger_sequence_number
            #
            #   @return [Integer]
            required :ledger_sequence_number, Integer

            # @!attribute metadata
            #   User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Orb::Internal::Type::HashOf[String]

            # @!attribute starting_balance
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!attribute void_amount
            #
            #   @return [Float]
            required :void_amount, Float

            # @!attribute void_reason
            #
            #   @return [String, nil]
            required :void_reason, String, nil?: true

            # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, ledger_sequence_number:, metadata:, starting_balance:, void_amount:, void_reason:, entry_type: :void)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param void_amount [Float]
            #
            #   @param void_reason [String, nil]
            #
            #   @param entry_type [Symbol, :void]

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry#credit_block
            class CreditBlock < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute expiry_date
              #
              #   @return [Time, nil]
              required :expiry_date, Time, nil?: true

              # @!attribute per_unit_cost_basis
              #
              #   @return [String, nil]
              required :per_unit_cost_basis, String, nil?: true

              # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
              #   @param id [String]
              #   @param expiry_date [Time, nil]
              #   @param per_unit_cost_basis [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry#customer
            class Customer < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute external_customer_id
              #
              #   @return [String, nil]
              required :external_customer_id, String, nil?: true

              # @!method initialize(id:, external_customer_id:)
              #   @param id [String]
              #   @param external_customer_id [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class VoidInitiatedLedgerEntry < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_block
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer }

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #
            #   @return [Float]
            required :ending_balance, Float

            # @!attribute entry_status
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus }

            # @!attribute entry_type
            #
            #   @return [Symbol, :void_initiated]
            required :entry_type, const: :void_initiated

            # @!attribute ledger_sequence_number
            #
            #   @return [Integer]
            required :ledger_sequence_number, Integer

            # @!attribute metadata
            #   User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Orb::Internal::Type::HashOf[String]

            # @!attribute new_block_expiry_date
            #
            #   @return [Time]
            required :new_block_expiry_date, Time

            # @!attribute starting_balance
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!attribute void_amount
            #
            #   @return [Float]
            required :void_amount, Float

            # @!attribute void_reason
            #
            #   @return [String, nil]
            required :void_reason, String, nil?: true

            # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, ledger_sequence_number:, metadata:, new_block_expiry_date:, starting_balance:, void_amount:, void_reason:, entry_type: :void_initiated)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param new_block_expiry_date [Time]
            #
            #   @param starting_balance [Float]
            #
            #   @param void_amount [Float]
            #
            #   @param void_reason [String, nil]
            #
            #   @param entry_type [Symbol, :void_initiated]

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry#credit_block
            class CreditBlock < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute expiry_date
              #
              #   @return [Time, nil]
              required :expiry_date, Time, nil?: true

              # @!attribute per_unit_cost_basis
              #
              #   @return [String, nil]
              required :per_unit_cost_basis, String, nil?: true

              # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
              #   @param id [String]
              #   @param expiry_date [Time, nil]
              #   @param per_unit_cost_basis [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry#customer
            class Customer < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute external_customer_id
              #
              #   @return [String, nil]
              required :external_customer_id, String, nil?: true

              # @!method initialize(id:, external_customer_id:)
              #   @param id [String]
              #   @param external_customer_id [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class AmendmentLedgerEntry < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute amount
            #
            #   @return [Float]
            required :amount, Float

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_block
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer }

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #
            #   @return [Float]
            required :ending_balance, Float

            # @!attribute entry_status
            #
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus }

            # @!attribute entry_type
            #
            #   @return [Symbol, :amendment]
            required :entry_type, const: :amendment

            # @!attribute ledger_sequence_number
            #
            #   @return [Integer]
            required :ledger_sequence_number, Integer

            # @!attribute metadata
            #   User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            #
            #   @return [Hash{Symbol=>String}]
            required :metadata, Orb::Internal::Type::HashOf[String]

            # @!attribute starting_balance
            #
            #   @return [Float]
            required :starting_balance, Float

            # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, ledger_sequence_number:, metadata:, starting_balance:, entry_type: :amendment)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param entry_type [Symbol, :amendment]

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry#credit_block
            class CreditBlock < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute expiry_date
              #
              #   @return [Time, nil]
              required :expiry_date, Time, nil?: true

              # @!attribute per_unit_cost_basis
              #
              #   @return [String, nil]
              required :per_unit_cost_basis, String, nil?: true

              # @!method initialize(id:, expiry_date:, per_unit_cost_basis:)
              #   @param id [String]
              #   @param expiry_date [Time, nil]
              #   @param per_unit_cost_basis [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry#customer
            class Customer < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute external_customer_id
              #
              #   @return [String, nil]
              required :external_customer_id, String, nil?: true

              # @!method initialize(id:, external_customer_id:)
              #   @param id [String]
              #   @param external_customer_id [String, nil]
            end

            # @see Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry)]
        end
      end
    end
  end
end
