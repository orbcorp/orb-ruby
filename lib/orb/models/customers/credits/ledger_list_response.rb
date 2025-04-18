# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        #
        # @see Orb::Resources::Customers::Credits::Ledger#list
        module LedgerListResponse
          extend Orb::Internal::Type::Union

          discriminator :entry_type

          variant :increment, -> { Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry }

          variant :decrement, -> { Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry }

          variant :expiration_change,
                  -> { Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry }

          variant :credit_block_expiry,
                  -> { Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry }

          variant :void, -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry }

          variant :void_initiated,
                  -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry }

          variant :amendment, -> { Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry }

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
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::EntryStatus }

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
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [Time]
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock]
            #   @param currency [String]
            #   @param customer [Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer]
            #   @param description [String, nil]
            #   @param ending_balance [Float]
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::EntryStatus]
            #   @param ledger_sequence_number [Integer]
            #   @param metadata [Hash{Symbol=>String}]
            #   @param starting_balance [Float]
            #   @param entry_type [Symbol, :increment]

            # @see Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry#entry_status
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
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::EntryStatus }

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
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [Time]
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock]
            #   @param currency [String]
            #   @param customer [Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer]
            #   @param description [String, nil]
            #   @param ending_balance [Float]
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::EntryStatus]
            #   @param ledger_sequence_number [Integer]
            #   @param metadata [Hash{Symbol=>String}]
            #   @param starting_balance [Float]
            #   @param event_id [String, nil]
            #   @param invoice_id [String, nil]
            #   @param price_id [String, nil]
            #   @param entry_type [Symbol, :decrement]

            # @see Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry#entry_status
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
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::EntryStatus }

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
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [Time]
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock]
            #   @param currency [String]
            #   @param customer [Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer]
            #   @param description [String, nil]
            #   @param ending_balance [Float]
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::EntryStatus]
            #   @param ledger_sequence_number [Integer]
            #   @param metadata [Hash{Symbol=>String}]
            #   @param new_block_expiry_date [Time, nil]
            #   @param starting_balance [Float]
            #   @param entry_type [Symbol, :expiration_change]

            # @see Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry#entry_status
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
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::EntryStatus }

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
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [Time]
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock]
            #   @param currency [String]
            #   @param customer [Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer]
            #   @param description [String, nil]
            #   @param ending_balance [Float]
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::EntryStatus]
            #   @param ledger_sequence_number [Integer]
            #   @param metadata [Hash{Symbol=>String}]
            #   @param starting_balance [Float]
            #   @param entry_type [Symbol, :credit_block_expiry]

            # @see Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry#entry_status
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
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer]
            required :customer, -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::EntryStatus }

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
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [Time]
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock]
            #   @param currency [String]
            #   @param customer [Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer]
            #   @param description [String, nil]
            #   @param ending_balance [Float]
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::EntryStatus]
            #   @param ledger_sequence_number [Integer]
            #   @param metadata [Hash{Symbol=>String}]
            #   @param starting_balance [Float]
            #   @param void_amount [Float]
            #   @param void_reason [String, nil]
            #   @param entry_type [Symbol, :void]

            # @see Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry#entry_status
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
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::EntryStatus }

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
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [Time]
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock]
            #   @param currency [String]
            #   @param customer [Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer]
            #   @param description [String, nil]
            #   @param ending_balance [Float]
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::EntryStatus]
            #   @param ledger_sequence_number [Integer]
            #   @param metadata [Hash{Symbol=>String}]
            #   @param new_block_expiry_date [Time]
            #   @param starting_balance [Float]
            #   @param void_amount [Float]
            #   @param void_reason [String, nil]
            #   @param entry_type [Symbol, :void_initiated]

            # @see Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry#entry_status
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
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::EntryStatus }

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
            #   @param id [String]
            #   @param amount [Float]
            #   @param created_at [Time]
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock]
            #   @param currency [String]
            #   @param customer [Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer]
            #   @param description [String, nil]
            #   @param ending_balance [Float]
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::EntryStatus]
            #   @param ledger_sequence_number [Integer]
            #   @param metadata [Hash{Symbol=>String}]
            #   @param starting_balance [Float]
            #   @param entry_type [Symbol, :amendment]

            # @see Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry, Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry, Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry, Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry, Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry, Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry, Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry)]
        end
      end
    end
  end
end
