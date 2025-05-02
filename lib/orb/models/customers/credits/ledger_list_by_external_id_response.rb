# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        #
        # @see Orb::Resources::Customers::Credits::Ledger#list_by_external_id
        module LedgerListByExternalIDResponse
          extend Orb::Internal::Type::Union

          discriminator :entry_type

          variant :increment, -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment }

          variant :decrement, -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement }

          variant :expiration_change,
                  -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange }

          variant :credit_block_expiry,
                  -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry }

          variant :void, -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void }

          variant :void_initiated,
                  -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated }

          variant :amendment, -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment }

          class Increment < Orb::Internal::Type::BaseModel
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
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus }

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
            #   {Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param entry_type [Symbol, :increment]

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Decrement < Orb::Internal::Type::BaseModel
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
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus }

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
            #   {Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus]
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class ExpirationChange < Orb::Internal::Type::BaseModel
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
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus }

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
            #   {Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus]
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CreditBlockExpiry < Orb::Internal::Type::BaseModel
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
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus }

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
            #   {Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param entry_type [Symbol, :credit_block_expiry]

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Void < Orb::Internal::Type::BaseModel
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
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer]
            required :customer, -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus }

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
            #   {Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus]
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class VoidInitiated < Orb::Internal::Type::BaseModel
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
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus }

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
            #   {Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus]
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Amendment < Orb::Internal::Type::BaseModel
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
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock]
            required :credit_block,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock }

            # @!attribute currency
            #
            #   @return [String]
            required :currency, String

            # @!attribute customer
            #
            #   @return [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer]
            required :customer,
                     -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer }

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
            #   @return [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus]
            required :entry_status,
                     enum: -> { Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus }

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
            #   {Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param amount [Float]
            #
            #   @param created_at [Time]
            #
            #   @param credit_block [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock]
            #
            #   @param currency [String]
            #
            #   @param customer [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer]
            #
            #   @param description [String, nil]
            #
            #   @param ending_balance [Float]
            #
            #   @param entry_status [Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus]
            #
            #   @param ledger_sequence_number [Integer]
            #
            #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
            #   ...
            #
            #   @param starting_balance [Float]
            #
            #   @param entry_type [Symbol, :amendment]

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment#credit_block
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment#customer
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

            # @see Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment#entry_status
            module EntryStatus
              extend Orb::Internal::Type::Enum

              COMMITTED = :committed
              PENDING = :pending

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment)]
        end
      end
    end
  end
end
