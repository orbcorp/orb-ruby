# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerListResponse < Orb::Union
          abstract!

          class IncrementLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry::Customer)
            end
            attr_accessor :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig { returns(Symbol) }
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

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
              ).void
            end
            def initialize(
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
            ); end

            sig do
              override.returns(
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
            def to_hash; end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void
              end
              def initialize(id:, expiry_date:, per_unit_cost_basis:); end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash; end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class DecrementLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry::Customer)
            end
            attr_accessor :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig { returns(Symbol) }
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

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
              ).void
            end
            def initialize(
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
            ); end

            sig do
              override.returns(
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
            def to_hash; end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void
              end
              def initialize(id:, expiry_date:, per_unit_cost_basis:); end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash; end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
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
              returns(Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry::Customer)
            end
            attr_accessor :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig { returns(Symbol) }
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

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
              ).void
            end
            def initialize(
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
            ); end

            sig do
              override.returns(
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
            def to_hash; end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void
              end
              def initialize(id:, expiry_date:, per_unit_cost_basis:); end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash; end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
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
              returns(Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry::Customer)
            end
            attr_accessor :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig { returns(Symbol) }
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

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
              ).void
            end
            def initialize(
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
            ); end

            sig do
              override.returns(
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
            def to_hash; end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void
              end
              def initialize(id:, expiry_date:, per_unit_cost_basis:); end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash; end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class VoidLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::CreditBlock) }
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry::Customer) }
            attr_accessor :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig { returns(Symbol) }
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

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
              ).void
            end
            def initialize(
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
            ); end

            sig do
              override.returns(
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
            def to_hash; end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void
              end
              def initialize(id:, expiry_date:, per_unit_cost_basis:); end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash; end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class VoidInitiatedLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry::Customer)
            end
            attr_accessor :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig { returns(Symbol) }
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

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
              ).void
            end
            def initialize(
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
            ); end

            sig do
              override.returns(
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
            def to_hash; end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void
              end
              def initialize(id:, expiry_date:, per_unit_cost_basis:); end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash; end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          class AmendmentLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry::Customer)
            end
            attr_accessor :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig { returns(Symbol) }
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            sig { returns(T::Hash[Symbol, String]) }
            attr_accessor :metadata

            sig { returns(Float) }
            attr_accessor :starting_balance

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
              ).void
            end
            def initialize(
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
            ); end

            sig do
              override.returns(
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
            def to_hash; end

            class CreditBlock < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void
              end
              def initialize(id:, expiry_date:, per_unit_cost_basis:); end

              sig do
                override.returns(
                  {
                    id: String,
                    expiry_date: T.nilable(Time),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash; end
            end

            class Customer < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            class EntryStatus < Orb::Enum
              abstract!

              COMMITTED = :committed
              PENDING = :pending

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end
          end

          sig do
            override.returns(
              [
                [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry],
                [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry],
                [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry],
                [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry],
                [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry],
                [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry],
                [Symbol, Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end
    end
  end
end
