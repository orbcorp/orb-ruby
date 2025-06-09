# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class DecrementLedgerEntry < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::DecrementLedgerEntry,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Orb::Customers::Credits::AffectedBlock) }
          attr_reader :credit_block

          sig do
            params(
              credit_block: Orb::Customers::Credits::AffectedBlock::OrHash
            ).void
          end
          attr_writer :credit_block

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Orb::CustomerMinified) }
          attr_reader :customer

          sig { params(customer: Orb::CustomerMinified::OrHash).void }
          attr_writer :customer

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(Float) }
          attr_accessor :ending_balance

          sig do
            returns(
              Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus::TaggedSymbol
            )
          end
          attr_accessor :entry_status

          sig do
            returns(
              Orb::Customers::Credits::DecrementLedgerEntry::EntryType::TaggedSymbol
            )
          end
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
              credit_block: Orb::Customers::Credits::AffectedBlock::OrHash,
              currency: String,
              customer: Orb::CustomerMinified::OrHash,
              description: T.nilable(String),
              ending_balance: Float,
              entry_status:
                Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus::OrSymbol,
              entry_type:
                Orb::Customers::Credits::DecrementLedgerEntry::EntryType::OrSymbol,
              ledger_sequence_number: Integer,
              metadata: T::Hash[Symbol, String],
              starting_balance: Float,
              event_id: T.nilable(String),
              invoice_id: T.nilable(String),
              price_id: T.nilable(String)
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
            entry_type:,
            ledger_sequence_number:,
            # User specified key-value pairs for the resource. If not present, this defaults
            # to an empty dictionary. Individual keys can be removed by setting the value to
            # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
            # `null`.
            metadata:,
            starting_balance:,
            event_id: nil,
            invoice_id: nil,
            price_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: Float,
                created_at: Time,
                credit_block: Orb::Customers::Credits::AffectedBlock,
                currency: String,
                customer: Orb::CustomerMinified,
                description: T.nilable(String),
                ending_balance: Float,
                entry_status:
                  Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus::TaggedSymbol,
                entry_type:
                  Orb::Customers::Credits::DecrementLedgerEntry::EntryType::TaggedSymbol,
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

          module EntryStatus
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMMITTED =
              T.let(
                :committed,
                Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module EntryType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Customers::Credits::DecrementLedgerEntry::EntryType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DECREMENT =
              T.let(
                :decrement,
                Orb::Customers::Credits::DecrementLedgerEntry::EntryType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Customers::Credits::DecrementLedgerEntry::EntryType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
