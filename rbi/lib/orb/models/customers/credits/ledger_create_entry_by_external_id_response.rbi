# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryByExternalIDResponse < Orb::Union
          abstract!

          class IncrementLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock
              )
            end
            def credit_block
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock
                )
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer
              )
            end
            def customer
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer
                )
            end
            def customer=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(Float) }
            def ending_balance
            end

            sig { params(_: Float).returns(Float) }
            def ending_balance=(_)
            end

            sig { returns(Symbol) }
            def entry_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_status=(_)
            end

            sig { returns(Symbol) }
            def entry_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_type=(_)
            end

            sig { returns(Integer) }
            def ledger_sequence_number
            end

            sig { params(_: Integer).returns(Integer) }
            def ledger_sequence_number=(_)
            end

            sig { returns(T::Hash[Symbol, String]) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(Float) }
            def starting_balance
            end

            sig { params(_: Float).returns(Float) }
            def starting_balance=(_)
            end

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Symbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Symbol,
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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def expiry_date
              end

              sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
              def expiry_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_cost_basis
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_cost_basis=(_)
              end

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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(String)) }
              def external_customer_id
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def external_customer_id=(_)
              end

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class DecrementLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock
              )
            end
            def credit_block
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock
                )
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer
              )
            end
            def customer
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer
                )
            end
            def customer=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(Float) }
            def ending_balance
            end

            sig { params(_: Float).returns(Float) }
            def ending_balance=(_)
            end

            sig { returns(Symbol) }
            def entry_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_status=(_)
            end

            sig { returns(Symbol) }
            def entry_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_type=(_)
            end

            sig { returns(Integer) }
            def ledger_sequence_number
            end

            sig { params(_: Integer).returns(Integer) }
            def ledger_sequence_number=(_)
            end

            sig { returns(T::Hash[Symbol, String]) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(Float) }
            def starting_balance
            end

            sig { params(_: Float).returns(Float) }
            def starting_balance=(_)
            end

            sig { returns(T.nilable(String)) }
            def event_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def event_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def price_id=(_)
            end

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Symbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Symbol,
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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def expiry_date
              end

              sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
              def expiry_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_cost_basis
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_cost_basis=(_)
              end

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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(String)) }
              def external_customer_id
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def external_customer_id=(_)
              end

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class ExpirationChangeLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock
              )
            end
            def credit_block
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock
                )
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer
              )
            end
            def customer
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer
                )
            end
            def customer=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(Float) }
            def ending_balance
            end

            sig { params(_: Float).returns(Float) }
            def ending_balance=(_)
            end

            sig { returns(Symbol) }
            def entry_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_status=(_)
            end

            sig { returns(Symbol) }
            def entry_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_type=(_)
            end

            sig { returns(Integer) }
            def ledger_sequence_number
            end

            sig { params(_: Integer).returns(Integer) }
            def ledger_sequence_number=(_)
            end

            sig { returns(T::Hash[Symbol, String]) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(T.nilable(Time)) }
            def new_block_expiry_date
            end

            sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
            def new_block_expiry_date=(_)
            end

            sig { returns(Float) }
            def starting_balance
            end

            sig { params(_: Float).returns(Float) }
            def starting_balance=(_)
            end

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Symbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Symbol,
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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def expiry_date
              end

              sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
              def expiry_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_cost_basis
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_cost_basis=(_)
              end

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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(String)) }
              def external_customer_id
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def external_customer_id=(_)
              end

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class CreditBlockExpiryLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock
              )
            end
            def credit_block
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock
                )
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer
              )
            end
            def customer
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer
                )
            end
            def customer=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(Float) }
            def ending_balance
            end

            sig { params(_: Float).returns(Float) }
            def ending_balance=(_)
            end

            sig { returns(Symbol) }
            def entry_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_status=(_)
            end

            sig { returns(Symbol) }
            def entry_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_type=(_)
            end

            sig { returns(Integer) }
            def ledger_sequence_number
            end

            sig { params(_: Integer).returns(Integer) }
            def ledger_sequence_number=(_)
            end

            sig { returns(T::Hash[Symbol, String]) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(Float) }
            def starting_balance
            end

            sig { params(_: Float).returns(Float) }
            def starting_balance=(_)
            end

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Symbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Symbol,
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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def expiry_date
              end

              sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
              def expiry_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_cost_basis
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_cost_basis=(_)
              end

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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(String)) }
              def external_customer_id
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def external_customer_id=(_)
              end

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class VoidLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock
              )
            end
            def credit_block
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock
                )
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer
              )
                .returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer)
            end
            def customer=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(Float) }
            def ending_balance
            end

            sig { params(_: Float).returns(Float) }
            def ending_balance=(_)
            end

            sig { returns(Symbol) }
            def entry_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_status=(_)
            end

            sig { returns(Symbol) }
            def entry_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_type=(_)
            end

            sig { returns(Integer) }
            def ledger_sequence_number
            end

            sig { params(_: Integer).returns(Integer) }
            def ledger_sequence_number=(_)
            end

            sig { returns(T::Hash[Symbol, String]) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(Float) }
            def starting_balance
            end

            sig { params(_: Float).returns(Float) }
            def starting_balance=(_)
            end

            sig { returns(Float) }
            def void_amount
            end

            sig { params(_: Float).returns(Float) }
            def void_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def void_reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def void_reason=(_)
            end

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Symbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Symbol,
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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def expiry_date
              end

              sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
              def expiry_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_cost_basis
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_cost_basis=(_)
              end

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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(String)) }
              def external_customer_id
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def external_customer_id=(_)
              end

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class VoidInitiatedLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock
              )
            end
            def credit_block
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock
                )
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer
              )
            end
            def customer
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer
                )
            end
            def customer=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(Float) }
            def ending_balance
            end

            sig { params(_: Float).returns(Float) }
            def ending_balance=(_)
            end

            sig { returns(Symbol) }
            def entry_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_status=(_)
            end

            sig { returns(Symbol) }
            def entry_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_type=(_)
            end

            sig { returns(Integer) }
            def ledger_sequence_number
            end

            sig { params(_: Integer).returns(Integer) }
            def ledger_sequence_number=(_)
            end

            sig { returns(T::Hash[Symbol, String]) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(Time) }
            def new_block_expiry_date
            end

            sig { params(_: Time).returns(Time) }
            def new_block_expiry_date=(_)
            end

            sig { returns(Float) }
            def starting_balance
            end

            sig { params(_: Float).returns(Float) }
            def starting_balance=(_)
            end

            sig { returns(Float) }
            def void_amount
            end

            sig { params(_: Float).returns(Float) }
            def void_amount=(_)
            end

            sig { returns(T.nilable(String)) }
            def void_reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def void_reason=(_)
            end

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Symbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Symbol,
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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def expiry_date
              end

              sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
              def expiry_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_cost_basis
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_cost_basis=(_)
              end

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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(String)) }
              def external_customer_id
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def external_customer_id=(_)
              end

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class AmendmentLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def amount
            end

            sig { params(_: Float).returns(Float) }
            def amount=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock
              )
            end
            def credit_block
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock
                )
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer
              )
            end
            def customer
            end

            sig do
              params(
                _: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer
              )
                .returns(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer
                )
            end
            def customer=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(Float) }
            def ending_balance
            end

            sig { params(_: Float).returns(Float) }
            def ending_balance=(_)
            end

            sig { returns(Symbol) }
            def entry_status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_status=(_)
            end

            sig { returns(Symbol) }
            def entry_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def entry_type=(_)
            end

            sig { returns(Integer) }
            def ledger_sequence_number
            end

            sig { params(_: Integer).returns(Integer) }
            def ledger_sequence_number=(_)
            end

            sig { returns(T::Hash[Symbol, String]) }
            def metadata
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def metadata=(_)
            end

            sig { returns(Float) }
            def starting_balance
            end

            sig { params(_: Float).returns(Float) }
            def starting_balance=(_)
            end

            sig do
              params(
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Symbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Symbol,
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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(Time)) }
              def expiry_date
              end

              sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
              def expiry_date=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_cost_basis
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_cost_basis=(_)
              end

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
              def id
              end

              sig { params(_: String).returns(String) }
              def id=(_)
              end

              sig { returns(T.nilable(String)) }
              def external_customer_id
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def external_customer_id=(_)
              end

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:)
              end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash
              end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class << self
            sig do
              override
                .returns(
                  [[Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry], [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry], [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry], [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry], [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry], [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry], [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry]]
                )
            end
            private def variants
            end
          end
        end
      end
    end
  end
end
