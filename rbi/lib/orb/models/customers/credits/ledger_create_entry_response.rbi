# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        #   credits within Orb.
        module LedgerCreateEntryResponse
          extend Orb::Union

          Variants =
            type_template(:out) do
              {
                fixed: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry
                )
              }
            end

          class IncrementLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock) }
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer,
                  Orb::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                entry_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              amount:,
              created_at:,
              credit_block:,
              currency:,
              customer:,
              description:,
              ending_balance:,
              entry_status:,
              ledger_sequence_number:,
              metadata:,
              starting_balance:,
              entry_type: :increment
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    amount: Float,
                    created_at: Time,
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float
                  }
                )
            end
            def to_hash
            end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String))
                  .returns(T.attached_class)
              end
              def self.new(id:, expiry_date:, per_unit_cost_basis:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end

          class DecrementLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock) }
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

            sig { returns(T.nilable(String)) }
            attr_accessor :event_id

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_id

            sig { returns(T.nilable(String)) }
            attr_accessor :price_id

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer,
                  Orb::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                event_id: T.nilable(String),
                invoice_id: T.nilable(String),
                price_id: T.nilable(String),
                entry_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              amount:,
              created_at:,
              credit_block:,
              currency:,
              customer:,
              description:,
              ending_balance:,
              entry_status:,
              ledger_sequence_number:,
              metadata:,
              starting_balance:,
              event_id: nil,
              invoice_id: nil,
              price_id: nil,
              entry_type: :decrement
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    amount: Float,
                    created_at: Time,
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float,
                    event_id: T.nilable(String),
                    invoice_id: T.nilable(String),
                    price_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String))
                  .returns(T.attached_class)
              end
              def self.new(id:, expiry_date:, per_unit_cost_basis:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end

          class ExpirationChangeLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(T.nilable(Time)) }
            attr_accessor :new_block_expiry_date

            sig { returns(Float) }
            attr_accessor :starting_balance

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer,
                  Orb::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                new_block_expiry_date: T.nilable(Time),
                starting_balance: Float,
                entry_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              amount:,
              created_at:,
              credit_block:,
              currency:,
              customer:,
              description:,
              ending_balance:,
              entry_status:,
              ledger_sequence_number:,
              metadata:,
              new_block_expiry_date:,
              starting_balance:,
              entry_type: :expiration_change
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    amount: Float,
                    created_at: Time,
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    new_block_expiry_date: T.nilable(Time),
                    starting_balance: Float
                  }
                )
            end
            def to_hash
            end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String))
                  .returns(T.attached_class)
              end
              def self.new(id:, expiry_date:, per_unit_cost_basis:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end

          class CreditBlockExpiryLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer,
                  Orb::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                entry_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              amount:,
              created_at:,
              credit_block:,
              currency:,
              customer:,
              description:,
              ending_balance:,
              entry_status:,
              ledger_sequence_number:,
              metadata:,
              starting_balance:,
              entry_type: :credit_block_expiry
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    amount: Float,
                    created_at: Time,
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float
                  }
                )
            end
            def to_hash
            end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String))
                  .returns(T.attached_class)
              end
              def self.new(id:, expiry_date:, per_unit_cost_basis:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end

          class VoidLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock) }
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

            sig { returns(Float) }
            attr_accessor :void_amount

            sig { returns(T.nilable(String)) }
            attr_accessor :void_reason

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer,
                  Orb::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                void_amount: Float,
                void_reason: T.nilable(String),
                entry_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              amount:,
              created_at:,
              credit_block:,
              currency:,
              customer:,
              description:,
              ending_balance:,
              entry_status:,
              ledger_sequence_number:,
              metadata:,
              starting_balance:,
              void_amount:,
              void_reason:,
              entry_type: :void
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    amount: Float,
                    created_at: Time,
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float,
                    void_amount: Float,
                    void_reason: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String))
                  .returns(T.attached_class)
              end
              def self.new(id:, expiry_date:, per_unit_cost_basis:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol]
                    )
                end
                def values
                end
              end
            end
          end

          class VoidInitiatedLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock) }
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Time) }
            attr_accessor :new_block_expiry_date

            sig { returns(Float) }
            attr_accessor :starting_balance

            sig { returns(Float) }
            attr_accessor :void_amount

            sig { returns(T.nilable(String)) }
            attr_accessor :void_reason

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer,
                  Orb::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                new_block_expiry_date: Time,
                starting_balance: Float,
                void_amount: Float,
                void_reason: T.nilable(String),
                entry_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              amount:,
              created_at:,
              credit_block:,
              currency:,
              customer:,
              description:,
              ending_balance:,
              entry_status:,
              ledger_sequence_number:,
              metadata:,
              new_block_expiry_date:,
              starting_balance:,
              void_amount:,
              void_reason:,
              entry_type: :void_initiated
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    amount: Float,
                    created_at: Time,
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    new_block_expiry_date: Time,
                    starting_balance: Float,
                    void_amount: Float,
                    void_reason: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String))
                  .returns(T.attached_class)
              end
              def self.new(id:, expiry_date:, per_unit_cost_basis:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end

          class AmendmentLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock) }
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer,
                  Orb::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock,
                  Orb::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer,
                  Orb::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                entry_type: Symbol
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              amount:,
              created_at:,
              credit_block:,
              currency:,
              customer:,
              description:,
              ending_balance:,
              entry_status:,
              ledger_sequence_number:,
              metadata:,
              starting_balance:,
              entry_type: :amendment
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    amount: Float,
                    created_at: Time,
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float
                  }
                )
            end
            def to_hash
            end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String))
                  .returns(T.attached_class)
              end
              def self.new(id:, expiry_date:, per_unit_cost_basis:)
              end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                )

              class << self
                sig do
                  override
                    .returns(
                      T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                      ]
                    )
                end
                def values
                end
              end
            end
          end

          class << self
            sig do
              override
                .returns(
                  [Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry]
                )
            end
            def variants
            end
          end
        end
      end
    end
  end
end
