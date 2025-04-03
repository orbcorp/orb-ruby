# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        #   credits within Orb.
        module LedgerListByExternalIDResponse
          extend Orb::Union

          class IncrementLedgerEntry < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
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
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus::OrSymbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol,
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
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values
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

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
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
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus::OrSymbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol,
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
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
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
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::OrSymbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol,
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
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
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
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::OrSymbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol,
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
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values
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

            sig { returns(Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::CreditBlock) }
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
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
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus::OrSymbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol,
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
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values
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

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
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
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::OrSymbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol,
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
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values
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

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
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
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
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
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
                  Orb::Internal::Util::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::Customer,
                  Orb::Internal::Util::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::OrSymbol,
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
                    credit_block: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
                    currency: String,
                    customer: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::Customer,
                    description: T.nilable(String),
                    ending_balance: Float,
                    entry_status: Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol,
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
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus)
                end
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                  )
                end

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values
              end
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry, Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry]
              )
          end
          def self.variants
          end
        end
      end
    end
  end
end
