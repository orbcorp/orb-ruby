# typed: strong

module Orb
  module Models
    class CustomerBalanceTransactionModel < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def action
      end

      sig { params(_: Symbol).returns(Symbol) }
      def action=(_)
      end

      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Orb::Models::CustomerBalanceTransactionModel::CreditNote)) }
      def credit_note
      end

      sig do
        params(_: T.nilable(Orb::Models::CustomerBalanceTransactionModel::CreditNote))
          .returns(T.nilable(Orb::Models::CustomerBalanceTransactionModel::CreditNote))
      end
      def credit_note=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(String) }
      def ending_balance
      end

      sig { params(_: String).returns(String) }
      def ending_balance=(_)
      end

      sig { returns(T.nilable(Orb::Models::CustomerBalanceTransactionModel::Invoice)) }
      def invoice
      end

      sig do
        params(_: T.nilable(Orb::Models::CustomerBalanceTransactionModel::Invoice))
          .returns(T.nilable(Orb::Models::CustomerBalanceTransactionModel::Invoice))
      end
      def invoice=(_)
      end

      sig { returns(String) }
      def starting_balance
      end

      sig { params(_: String).returns(String) }
      def starting_balance=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          action: Symbol,
          amount: String,
          created_at: Time,
          credit_note: T.nilable(Orb::Models::CustomerBalanceTransactionModel::CreditNote),
          description: T.nilable(String),
          ending_balance: String,
          invoice: T.nilable(Orb::Models::CustomerBalanceTransactionModel::Invoice),
          starting_balance: String,
          type: Symbol
        )
          .void
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
        override
          .returns(
            {
              id: String,
              action: Symbol,
              amount: String,
              created_at: Time,
              credit_note: T.nilable(Orb::Models::CustomerBalanceTransactionModel::CreditNote),
              description: T.nilable(String),
              ending_balance: String,
              invoice: T.nilable(Orb::Models::CustomerBalanceTransactionModel::Invoice),
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
        EXTERNAL_PAYMENT = :external_payment

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class CreditNote < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end

      class Invoice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

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
