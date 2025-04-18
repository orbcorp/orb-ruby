# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        module LedgerCreateEntryByExternalIDResponse
          extend Orb::Internal::Type::Union

          class IncrementLedgerEntry < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer,
                  Orb::Internal::AnyHash
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
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
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
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::Customer,
                  Orb::Internal::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus::OrSymbol,
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
            ); end
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
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float
                  }
                )
            end
            def to_hash; end

            class CreditBlock < Orb::Internal::Type::BaseModel
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
              def self.new(id:, expiry_date:, per_unit_cost_basis:); end

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

            class Customer < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          class DecrementLedgerEntry < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer,
                  Orb::Internal::AnyHash
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
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
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
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::Customer,
                  Orb::Internal::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus::OrSymbol,
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
            ); end
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
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol,
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

            class CreditBlock < Orb::Internal::Type::BaseModel
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
              def self.new(id:, expiry_date:, per_unit_cost_basis:); end

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

            class Customer < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          class ExpirationChangeLedgerEntry < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
                  Orb::Internal::AnyHash
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
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
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
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::Customer,
                  Orb::Internal::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::OrSymbol,
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
            ); end
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
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    new_block_expiry_date: T.nilable(Time),
                    starting_balance: Float
                  }
                )
            end
            def to_hash; end

            class CreditBlock < Orb::Internal::Type::BaseModel
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
              def self.new(id:, expiry_date:, per_unit_cost_basis:); end

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

            class Customer < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          class CreditBlockExpiryLedgerEntry < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
                  Orb::Internal::AnyHash
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
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
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
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::Customer,
                  Orb::Internal::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::OrSymbol,
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
            ); end
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
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float
                  }
                )
            end
            def to_hash; end

            class CreditBlock < Orb::Internal::Type::BaseModel
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
              def self.new(id:, expiry_date:, per_unit_cost_basis:); end

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

            class Customer < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          class VoidLedgerEntry < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig { returns(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer) }
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer,
                  Orb::Internal::AnyHash
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
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
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
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::Customer,
                  Orb::Internal::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus::OrSymbol,
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
            ); end
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
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol,
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

            class CreditBlock < Orb::Internal::Type::BaseModel
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
              def self.new(id:, expiry_date:, per_unit_cost_basis:); end

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

            class Customer < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          class VoidInitiatedLedgerEntry < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
                  Orb::Internal::AnyHash
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
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
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
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::Customer,
                  Orb::Internal::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::OrSymbol,
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
            ); end
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
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol,
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

            class CreditBlock < Orb::Internal::Type::BaseModel
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
              def self.new(id:, expiry_date:, per_unit_cost_basis:); end

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

            class Customer < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          class AmendmentLedgerEntry < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer,
                  Orb::Internal::AnyHash
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
                Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
              )
            end
            attr_accessor :entry_status

            sig { returns(Symbol) }
            attr_accessor :entry_type

            sig { returns(Integer) }
            attr_accessor :ledger_sequence_number

            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
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
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::CreditBlock,
                  Orb::Internal::AnyHash
                ),
                currency: String,
                customer: T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::Customer,
                  Orb::Internal::AnyHash
                ),
                description: T.nilable(String),
                ending_balance: Float,
                entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::OrSymbol,
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
            ); end
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
                    entry_status: Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol,
                    entry_type: Symbol,
                    ledger_sequence_number: Integer,
                    metadata: T::Hash[Symbol, String],
                    starting_balance: Float
                  }
                )
            end
            def to_hash; end

            class CreditBlock < Orb::Internal::Type::BaseModel
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
              def self.new(id:, expiry_date:, per_unit_cost_basis:); end

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

            class Customer < Orb::Internal::Type::BaseModel
              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
              def self.new(id:, external_customer_id:); end

              sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
              def to_hash; end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus)
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[
                      Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry::EntryStatus::TaggedSymbol
                    ]
                  )
              end
              def self.values; end
            end
          end

          sig do
            override
              .returns(
                [Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry, Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry]
              )
          end
          def self.variants; end
        end
      end
    end
  end
end
