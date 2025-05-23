# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::Customers::BalanceTransactionCreateResponse,
              Orb::Internal::AnyHash
            )
          end

        # A unique id for this transaction.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
          )
        end
        attr_accessor :action

        # The value of the amount changed in the transaction.
        sig { returns(String) }
        attr_accessor :amount

        # The creation time of this transaction.
        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(
              Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote
            )
          )
        end
        attr_reader :credit_note

        sig do
          params(
            credit_note:
              T.nilable(
                Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote::OrHash
              )
          ).void
        end
        attr_writer :credit_note

        # An optional description provided for manual customer balance adjustments.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The new value of the customer's balance prior to the transaction, in the
        # customer's currency.
        sig { returns(String) }
        attr_accessor :ending_balance

        sig do
          returns(
            T.nilable(
              Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice
            )
          )
        end
        attr_reader :invoice

        sig do
          params(
            invoice:
              T.nilable(
                Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice::OrHash
              )
          ).void
        end
        attr_writer :invoice

        # The original value of the customer's balance prior to the transaction, in the
        # customer's currency.
        sig { returns(String) }
        attr_accessor :starting_balance

        sig do
          returns(
            Orb::Models::Customers::BalanceTransactionCreateResponse::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            id: String,
            action:
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::OrSymbol,
            amount: String,
            created_at: Time,
            credit_note:
              T.nilable(
                Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote::OrHash
              ),
            description: T.nilable(String),
            ending_balance: String,
            invoice:
              T.nilable(
                Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice::OrHash
              ),
            starting_balance: String,
            type:
              Orb::Models::Customers::BalanceTransactionCreateResponse::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # A unique id for this transaction.
          id:,
          action:,
          # The value of the amount changed in the transaction.
          amount:,
          # The creation time of this transaction.
          created_at:,
          credit_note:,
          # An optional description provided for manual customer balance adjustments.
          description:,
          # The new value of the customer's balance prior to the transaction, in the
          # customer's currency.
          ending_balance:,
          invoice:,
          # The original value of the customer's balance prior to the transaction, in the
          # customer's currency.
          starting_balance:,
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action:
                Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol,
              amount: String,
              created_at: Time,
              credit_note:
                T.nilable(
                  Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote
                ),
              description: T.nilable(String),
              ending_balance: String,
              invoice:
                T.nilable(
                  Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice
                ),
              starting_balance: String,
              type:
                Orb::Models::Customers::BalanceTransactionCreateResponse::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Action
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::Customers::BalanceTransactionCreateResponse::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLIED_TO_INVOICE =
            T.let(
              :applied_to_invoice,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          MANUAL_ADJUSTMENT =
            T.let(
              :manual_adjustment,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          PRORATED_REFUND =
            T.let(
              :prorated_refund,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          REVERT_PRORATED_REFUND =
            T.let(
              :revert_prorated_refund,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          RETURN_FROM_VOIDING =
            T.let(
              :return_from_voiding,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          CREDIT_NOTE_APPLIED =
            T.let(
              :credit_note_applied,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          CREDIT_NOTE_VOIDED =
            T.let(
              :credit_note_voided,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          OVERPAYMENT_REFUND =
            T.let(
              :overpayment_refund,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )
          EXTERNAL_PAYMENT =
            T.let(
              :external_payment,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::Customers::BalanceTransactionCreateResponse::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CreditNote < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote,
                Orb::Internal::AnyHash
              )
            end

          # The id of the Credit note
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The id of the Credit note
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class Invoice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice,
                Orb::Internal::AnyHash
              )
            end

          # The Invoice id
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The Invoice id
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Models::Customers::BalanceTransactionCreateResponse::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCREMENT =
            T.let(
              :increment,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Type::TaggedSymbol
            )
          DECREMENT =
            T.let(
              :decrement,
              Orb::Models::Customers::BalanceTransactionCreateResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Models::Customers::BalanceTransactionCreateResponse::Type::TaggedSymbol
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
