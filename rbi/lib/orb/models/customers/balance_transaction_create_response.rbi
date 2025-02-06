# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateResponse < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Symbol) }
        attr_accessor :action

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote)) }
        attr_accessor :credit_note

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(String) }
        attr_accessor :ending_balance

        sig { returns(T.nilable(Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice)) }
        attr_accessor :invoice

        sig { returns(String) }
        attr_accessor :starting_balance

        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          params(
            id: String,
            action: Symbol,
            amount: String,
            created_at: Time,
            credit_note: T.nilable(Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote),
            description: T.nilable(String),
            ending_balance: String,
            invoice: T.nilable(Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice),
            starting_balance: String,
            type: Symbol
          ).void
        end
        def initialize(
          id:,
          action:,
          amount:,
          created_at:,
          credit_note:,
          description:,
          ending_balance:,
          invoice:,
          starting_balance:,
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action: Symbol,
              amount: String,
              created_at: Time,
              credit_note: T.nilable(Orb::Models::Customers::BalanceTransactionCreateResponse::CreditNote),
              description: T.nilable(String),
              ending_balance: String,
              invoice: T.nilable(Orb::Models::Customers::BalanceTransactionCreateResponse::Invoice),
              starting_balance: String,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        class Action < Orb::Enum
          abstract!

          APPLIED_TO_INVOICE = :applied_to_invoice
          MANUAL_ADJUSTMENT = :manual_adjustment
          PRORATED_REFUND = :prorated_refund
          REVERT_PRORATED_REFUND = :revert_prorated_refund
          RETURN_FROM_VOIDING = :return_from_voiding
          CREDIT_NOTE_APPLIED = :credit_note_applied
          CREDIT_NOTE_VOIDED = :credit_note_voided
          OVERPAYMENT_REFUND = :overpayment_refund

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditNote < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Invoice < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Type < Orb::Enum
          abstract!

          INCREMENT = :increment
          DECREMENT = :decrement

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
