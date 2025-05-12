# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        module LedgerListByExternalIDResponse
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment,
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement,
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange,
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry,
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void,
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated,
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment
              )
            end

          class Increment < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock::OrHash
              ).void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer::OrHash
              ).void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus::TaggedSymbol
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
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock::OrHash,
                currency: String,
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer::OrHash,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                entry_type: Symbol
              ).returns(T.attached_class)
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
              # User specified key-value pairs for the resource. If not present, this defaults
              # to an empty dictionary. Individual keys can be removed by setting the value to
              # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
              # `null`.
              metadata:,
              starting_balance:,
              entry_type: :increment
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: Time,
                  credit_block:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock,
                  currency: String,
                  customer:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer,
                  description: T.nilable(String),
                  ending_balance: Float,
                  entry_status:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus::TaggedSymbol,
                  entry_type: Symbol,
                  ledger_sequence_number: Integer,
                  metadata: T::Hash[Symbol, String],
                  starting_balance: Float
                }
              )
            end
            def to_hash
            end

            class CreditBlock < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::CreditBlock,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(
                  id: String,
                  expiry_date: T.nilable(Time),
                  per_unit_cost_basis: T.nilable(String)
                ).returns(T.attached_class)
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

            class Customer < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::Customer,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig do
                params(
                  id: String,
                  external_customer_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(id:, external_customer_id:)
              end

              sig do
                override.returns(
                  { id: String, external_customer_id: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Increment::EntryStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Decrement < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock::OrHash
              ).void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer::OrHash
              ).void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus::TaggedSymbol
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
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock::OrHash,
                currency: String,
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer::OrHash,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                event_id: T.nilable(String),
                invoice_id: T.nilable(String),
                price_id: T.nilable(String),
                entry_type: Symbol
              ).returns(T.attached_class)
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
              # User specified key-value pairs for the resource. If not present, this defaults
              # to an empty dictionary. Individual keys can be removed by setting the value to
              # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
              # `null`.
              metadata:,
              starting_balance:,
              event_id: nil,
              invoice_id: nil,
              price_id: nil,
              entry_type: :decrement
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: Time,
                  credit_block:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock,
                  currency: String,
                  customer:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer,
                  description: T.nilable(String),
                  ending_balance: Float,
                  entry_status:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus::TaggedSymbol,
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

            class CreditBlock < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::CreditBlock,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(
                  id: String,
                  expiry_date: T.nilable(Time),
                  per_unit_cost_basis: T.nilable(String)
                ).returns(T.attached_class)
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

            class Customer < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::Customer,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig do
                params(
                  id: String,
                  external_customer_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(id:, external_customer_id:)
              end

              sig do
                override.returns(
                  { id: String, external_customer_id: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Decrement::EntryStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class ExpirationChange < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock::OrHash
              ).void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer::OrHash
              ).void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus::TaggedSymbol
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
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock::OrHash,
                currency: String,
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer::OrHash,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                new_block_expiry_date: T.nilable(Time),
                starting_balance: Float,
                entry_type: Symbol
              ).returns(T.attached_class)
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
              # User specified key-value pairs for the resource. If not present, this defaults
              # to an empty dictionary. Individual keys can be removed by setting the value to
              # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
              # `null`.
              metadata:,
              new_block_expiry_date:,
              starting_balance:,
              entry_type: :expiration_change
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: Time,
                  credit_block:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock,
                  currency: String,
                  customer:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer,
                  description: T.nilable(String),
                  ending_balance: Float,
                  entry_status:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus::TaggedSymbol,
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

            class CreditBlock < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::CreditBlock,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(
                  id: String,
                  expiry_date: T.nilable(Time),
                  per_unit_cost_basis: T.nilable(String)
                ).returns(T.attached_class)
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

            class Customer < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::Customer,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig do
                params(
                  id: String,
                  external_customer_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(id:, external_customer_id:)
              end

              sig do
                override.returns(
                  { id: String, external_customer_id: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChange::EntryStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CreditBlockExpiry < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock::OrHash
              ).void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer::OrHash
              ).void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus::TaggedSymbol
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
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock::OrHash,
                currency: String,
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer::OrHash,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                entry_type: Symbol
              ).returns(T.attached_class)
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
              # User specified key-value pairs for the resource. If not present, this defaults
              # to an empty dictionary. Individual keys can be removed by setting the value to
              # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
              # `null`.
              metadata:,
              starting_balance:,
              entry_type: :credit_block_expiry
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: Time,
                  credit_block:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock,
                  currency: String,
                  customer:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer,
                  description: T.nilable(String),
                  ending_balance: Float,
                  entry_status:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus::TaggedSymbol,
                  entry_type: Symbol,
                  ledger_sequence_number: Integer,
                  metadata: T::Hash[Symbol, String],
                  starting_balance: Float
                }
              )
            end
            def to_hash
            end

            class CreditBlock < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::CreditBlock,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(
                  id: String,
                  expiry_date: T.nilable(Time),
                  per_unit_cost_basis: T.nilable(String)
                ).returns(T.attached_class)
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

            class Customer < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::Customer,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig do
                params(
                  id: String,
                  external_customer_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(id:, external_customer_id:)
              end

              sig do
                override.returns(
                  { id: String, external_customer_id: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiry::EntryStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Void < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock::OrHash
              ).void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer::OrHash
              ).void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus::TaggedSymbol
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
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock::OrHash,
                currency: String,
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer::OrHash,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                void_amount: Float,
                void_reason: T.nilable(String),
                entry_type: Symbol
              ).returns(T.attached_class)
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
              # User specified key-value pairs for the resource. If not present, this defaults
              # to an empty dictionary. Individual keys can be removed by setting the value to
              # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
              # `null`.
              metadata:,
              starting_balance:,
              void_amount:,
              void_reason:,
              entry_type: :void
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: Time,
                  credit_block:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock,
                  currency: String,
                  customer:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer,
                  description: T.nilable(String),
                  ending_balance: Float,
                  entry_status:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus::TaggedSymbol,
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

            class CreditBlock < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::CreditBlock,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(
                  id: String,
                  expiry_date: T.nilable(Time),
                  per_unit_cost_basis: T.nilable(String)
                ).returns(T.attached_class)
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

            class Customer < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::Customer,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig do
                params(
                  id: String,
                  external_customer_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(id:, external_customer_id:)
              end

              sig do
                override.returns(
                  { id: String, external_customer_id: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Void::EntryStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class VoidInitiated < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock::OrHash
              ).void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer::OrHash
              ).void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus::TaggedSymbol
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
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock::OrHash,
                currency: String,
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer::OrHash,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                new_block_expiry_date: Time,
                starting_balance: Float,
                void_amount: Float,
                void_reason: T.nilable(String),
                entry_type: Symbol
              ).returns(T.attached_class)
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
              # User specified key-value pairs for the resource. If not present, this defaults
              # to an empty dictionary. Individual keys can be removed by setting the value to
              # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
              # `null`.
              metadata:,
              new_block_expiry_date:,
              starting_balance:,
              void_amount:,
              void_reason:,
              entry_type: :void_initiated
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: Time,
                  credit_block:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock,
                  currency: String,
                  customer:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer,
                  description: T.nilable(String),
                  ending_balance: Float,
                  entry_status:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus::TaggedSymbol,
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

            class CreditBlock < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::CreditBlock,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(
                  id: String,
                  expiry_date: T.nilable(Time),
                  per_unit_cost_basis: T.nilable(String)
                ).returns(T.attached_class)
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

            class Customer < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::Customer,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig do
                params(
                  id: String,
                  external_customer_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(id:, external_customer_id:)
              end

              sig do
                override.returns(
                  { id: String, external_customer_id: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiated::EntryStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Amendment < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Float) }
            attr_accessor :amount

            sig { returns(Time) }
            attr_accessor :created_at

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock
              )
            end
            attr_reader :credit_block

            sig do
              params(
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock::OrHash
              ).void
            end
            attr_writer :credit_block

            sig { returns(String) }
            attr_accessor :currency

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer
              )
            end
            attr_reader :customer

            sig do
              params(
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer::OrHash
              ).void
            end
            attr_writer :customer

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(Float) }
            attr_accessor :ending_balance

            sig do
              returns(
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus::TaggedSymbol
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
                credit_block:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock::OrHash,
                currency: String,
                customer:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer::OrHash,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus::OrSymbol,
                ledger_sequence_number: Integer,
                metadata: T::Hash[Symbol, String],
                starting_balance: Float,
                entry_type: Symbol
              ).returns(T.attached_class)
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
              # User specified key-value pairs for the resource. If not present, this defaults
              # to an empty dictionary. Individual keys can be removed by setting the value to
              # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
              # `null`.
              metadata:,
              starting_balance:,
              entry_type: :amendment
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  amount: Float,
                  created_at: Time,
                  credit_block:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock,
                  currency: String,
                  customer:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer,
                  description: T.nilable(String),
                  ending_balance: Float,
                  entry_status:
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus::TaggedSymbol,
                  entry_type: Symbol,
                  ledger_sequence_number: Integer,
                  metadata: T::Hash[Symbol, String],
                  starting_balance: Float
                }
              )
            end
            def to_hash
            end

            class CreditBlock < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::CreditBlock,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_cost_basis

              sig do
                params(
                  id: String,
                  expiry_date: T.nilable(Time),
                  per_unit_cost_basis: T.nilable(String)
                ).returns(T.attached_class)
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

            class Customer < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::Customer,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(T.nilable(String)) }
              attr_accessor :external_customer_id

              sig do
                params(
                  id: String,
                  external_customer_id: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(id:, external_customer_id:)
              end

              sig do
                override.returns(
                  { id: String, external_customer_id: T.nilable(String) }
                )
              end
              def to_hash
              end
            end

            module EntryStatus
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMMITTED =
                T.let(
                  :committed,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus::TaggedSymbol
                )
              PENDING =
                T.let(
                  :pending,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Amendment::EntryStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
