# typed: strong

module Orb
  module Models
    class CreditLedgerEntryModel < Orb::Union
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

        sig { returns(Orb::Models::AffectedBlockModel) }
        def credit_block
        end

        sig { params(_: Orb::Models::AffectedBlockModel).returns(Orb::Models::AffectedBlockModel) }
        def credit_block=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(Orb::Models::CustomerMinifiedModel) }
        def customer
        end

        sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
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
            credit_block: Orb::Models::AffectedBlockModel,
            currency: String,
            customer: Orb::Models::CustomerMinifiedModel,
            description: T.nilable(String),
            ending_balance: Float,
            entry_status: Symbol,
            ledger_sequence_number: Integer,
            metadata: T::Hash[Symbol, String],
            starting_balance: Float,
            entry_type: Symbol
          )
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::AffectedBlockModel,
                currency: String,
                customer: Orb::Models::CustomerMinifiedModel,
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

        class EntryStatus < Orb::Enum
          abstract!

          COMMITTED = :committed
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(Orb::Models::AffectedBlockModel) }
        def credit_block
        end

        sig { params(_: Orb::Models::AffectedBlockModel).returns(Orb::Models::AffectedBlockModel) }
        def credit_block=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(Orb::Models::CustomerMinifiedModel) }
        def customer
        end

        sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
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
            credit_block: Orb::Models::AffectedBlockModel,
            currency: String,
            customer: Orb::Models::CustomerMinifiedModel,
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
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::AffectedBlockModel,
                currency: String,
                customer: Orb::Models::CustomerMinifiedModel,
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

        class EntryStatus < Orb::Enum
          abstract!

          COMMITTED = :committed
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(Orb::Models::AffectedBlockModel) }
        def credit_block
        end

        sig { params(_: Orb::Models::AffectedBlockModel).returns(Orb::Models::AffectedBlockModel) }
        def credit_block=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(Orb::Models::CustomerMinifiedModel) }
        def customer
        end

        sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
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
            credit_block: Orb::Models::AffectedBlockModel,
            currency: String,
            customer: Orb::Models::CustomerMinifiedModel,
            description: T.nilable(String),
            ending_balance: Float,
            entry_status: Symbol,
            ledger_sequence_number: Integer,
            metadata: T::Hash[Symbol, String],
            new_block_expiry_date: T.nilable(Time),
            starting_balance: Float,
            entry_type: Symbol
          )
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::AffectedBlockModel,
                currency: String,
                customer: Orb::Models::CustomerMinifiedModel,
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

        class EntryStatus < Orb::Enum
          abstract!

          COMMITTED = :committed
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(Orb::Models::AffectedBlockModel) }
        def credit_block
        end

        sig { params(_: Orb::Models::AffectedBlockModel).returns(Orb::Models::AffectedBlockModel) }
        def credit_block=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(Orb::Models::CustomerMinifiedModel) }
        def customer
        end

        sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
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
            credit_block: Orb::Models::AffectedBlockModel,
            currency: String,
            customer: Orb::Models::CustomerMinifiedModel,
            description: T.nilable(String),
            ending_balance: Float,
            entry_status: Symbol,
            ledger_sequence_number: Integer,
            metadata: T::Hash[Symbol, String],
            starting_balance: Float,
            entry_type: Symbol
          )
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::AffectedBlockModel,
                currency: String,
                customer: Orb::Models::CustomerMinifiedModel,
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

        class EntryStatus < Orb::Enum
          abstract!

          COMMITTED = :committed
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(Orb::Models::AffectedBlockModel) }
        def credit_block
        end

        sig { params(_: Orb::Models::AffectedBlockModel).returns(Orb::Models::AffectedBlockModel) }
        def credit_block=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(Orb::Models::CustomerMinifiedModel) }
        def customer
        end

        sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
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
            credit_block: Orb::Models::AffectedBlockModel,
            currency: String,
            customer: Orb::Models::CustomerMinifiedModel,
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
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::AffectedBlockModel,
                currency: String,
                customer: Orb::Models::CustomerMinifiedModel,
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

        class EntryStatus < Orb::Enum
          abstract!

          COMMITTED = :committed
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(Orb::Models::AffectedBlockModel) }
        def credit_block
        end

        sig { params(_: Orb::Models::AffectedBlockModel).returns(Orb::Models::AffectedBlockModel) }
        def credit_block=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(Orb::Models::CustomerMinifiedModel) }
        def customer
        end

        sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
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
            credit_block: Orb::Models::AffectedBlockModel,
            currency: String,
            customer: Orb::Models::CustomerMinifiedModel,
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
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::AffectedBlockModel,
                currency: String,
                customer: Orb::Models::CustomerMinifiedModel,
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

        class EntryStatus < Orb::Enum
          abstract!

          COMMITTED = :committed
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(Orb::Models::AffectedBlockModel) }
        def credit_block
        end

        sig { params(_: Orb::Models::AffectedBlockModel).returns(Orb::Models::AffectedBlockModel) }
        def credit_block=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig { returns(Orb::Models::CustomerMinifiedModel) }
        def customer
        end

        sig { params(_: Orb::Models::CustomerMinifiedModel).returns(Orb::Models::CustomerMinifiedModel) }
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
            credit_block: Orb::Models::AffectedBlockModel,
            currency: String,
            customer: Orb::Models::CustomerMinifiedModel,
            description: T.nilable(String),
            ending_balance: Float,
            entry_status: Symbol,
            ledger_sequence_number: Integer,
            metadata: T::Hash[Symbol, String],
            starting_balance: Float,
            entry_type: Symbol
          )
            .void
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
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Models::AffectedBlockModel,
                currency: String,
                customer: Orb::Models::CustomerMinifiedModel,
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

        class EntryStatus < Orb::Enum
          abstract!

          COMMITTED = :committed
          PENDING = :pending

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      sig do
        override
          .returns(
            [[Symbol, Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry], [Symbol, Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry], [Symbol, Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry], [Symbol, Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry], [Symbol, Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry], [Symbol, Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry], [Symbol, Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
