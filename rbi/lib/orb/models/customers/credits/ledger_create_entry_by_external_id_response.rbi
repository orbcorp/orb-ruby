# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryByExternalIDResponse < Orb::Union
          abstract!

          Variants = T.type_alias do
            T.any(
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry,
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry,
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry,
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry,
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry,
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry,
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry
            )
          end

          class IncrementLedgerEntry < Orb::BaseModel
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer)
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
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Shape)
            end
            def to_h; end

            class CreditBlock < Orb::BaseModel
              Shape = T.type_alias do
                {id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)}
              end

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
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock::Shape)
              end
              def to_h; end
            end

            class Customer < Orb::BaseModel
              Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig do
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer::Shape)
              end
              def to_h; end
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
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer)
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
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Shape)
            end
            def to_h; end

            class CreditBlock < Orb::BaseModel
              Shape = T.type_alias do
                {id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)}
              end

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
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock::Shape)
              end
              def to_h; end
            end

            class Customer < Orb::BaseModel
              Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig do
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer::Shape)
              end
              def to_h; end
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
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer)
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
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Shape)
            end
            def to_h; end

            class CreditBlock < Orb::BaseModel
              Shape = T.type_alias do
                {id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)}
              end

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
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock::Shape)
              end
              def to_h; end
            end

            class Customer < Orb::BaseModel
              Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig do
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer::Shape)
              end
              def to_h; end
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
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer)
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
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Shape)
            end
            def to_h; end

            class CreditBlock < Orb::BaseModel
              Shape = T.type_alias do
                {id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)}
              end

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
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock::Shape)
              end
              def to_h; end
            end

            class Customer < Orb::BaseModel
              Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig do
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer::Shape)
              end
              def to_h; end
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
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer)
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

            sig { returns(Float) }
            attr_accessor :void_amount

            sig { returns(T.nilable(String)) }
            attr_accessor :void_reason

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
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Shape)
            end
            def to_h; end

            class CreditBlock < Orb::BaseModel
              Shape = T.type_alias do
                {id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)}
              end

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
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock::Shape)
              end
              def to_h; end
            end

            class Customer < Orb::BaseModel
              Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig do
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer::Shape)
              end
              def to_h; end
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
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer)
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
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Shape)
            end
            def to_h; end

            class CreditBlock < Orb::BaseModel
              Shape = T.type_alias do
                {id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)}
              end

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
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock::Shape)
              end
              def to_h; end
            end

            class Customer < Orb::BaseModel
              Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig do
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer::Shape)
              end
              def to_h; end
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
            Shape = T.type_alias do
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
            end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock)
            end
            attr_accessor :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer)
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
              returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Shape)
            end
            def to_h; end

            class CreditBlock < Orb::BaseModel
              Shape = T.type_alias do
                {id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)}
              end

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
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock::Shape)
              end
              def to_h; end
            end

            class Customer < Orb::BaseModel
              Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).void }
              def initialize(id:, external_customer_id:); end

              sig do
                returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer::Shape)
              end
              def to_h; end
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
                [
                  Symbol,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry
                ],
                [
                  Symbol,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry
                ],
                [
                  Symbol,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry
                ],
                [
                  Symbol,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry
                ],
                [
                  Symbol,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry
                ],
                [
                  Symbol,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry
                ],
                [
                  Symbol,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry
                ]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end
    end
  end
end
