# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        #   credits within Orb.
        class LedgerListResponse < Orb::Union
          abstract!

          Variants = type_template(:out) do
            {
              fixed: T.any(
                Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry,
                Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry,
                Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry,
                Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry,
                Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry,
                Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry,
                Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry
              )
            }
          end

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

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock) }
            def credit_block
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock)
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer)
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

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
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
                credit_block: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer,
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

              Value = type_template(:out) { {fixed: Symbol} }

              COMMITTED = :committed
              PENDING = :pending
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

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock) }
            def credit_block
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock)
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer)
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

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
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
                credit_block: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer,
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

              Value = type_template(:out) { {fixed: Symbol} }

              COMMITTED = :committed
              PENDING = :pending
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

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock) }
            def credit_block
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock)
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer)
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

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
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
                credit_block: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer,
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

              Value = type_template(:out) { {fixed: Symbol} }

              COMMITTED = :committed
              PENDING = :pending
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

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock) }
            def credit_block
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock)
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer)
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

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
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
                credit_block: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer,
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

              Value = type_template(:out) { {fixed: Symbol} }

              COMMITTED = :committed
              PENDING = :pending
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

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock) }
            def credit_block
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock)
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer)
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

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
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
                credit_block: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer,
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

              Value = type_template(:out) { {fixed: Symbol} }

              COMMITTED = :committed
              PENDING = :pending
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

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock) }
            def credit_block
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock)
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer)
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

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
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
                credit_block: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer,
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

              Value = type_template(:out) { {fixed: Symbol} }

              COMMITTED = :committed
              PENDING = :pending
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

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock) }
            def credit_block
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock)
            end
            def credit_block=(_)
            end

            sig { returns(String) }
            def currency
            end

            sig { params(_: String).returns(String) }
            def currency=(_)
            end

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer) }
            def customer
            end

            sig do
              params(_: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer)
                .returns(Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer)
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

            # User specified key-value pairs for the resource. If not present, this defaults
            #   to an empty dictionary. Individual keys can be removed by setting the value to
            #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            #   `null`.
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
                credit_block: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock,
                currency: String,
                customer: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer,
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

              Value = type_template(:out) { {fixed: Symbol} }

              COMMITTED = :committed
              PENDING = :pending
            end
          end
        end
      end
    end
  end
end
