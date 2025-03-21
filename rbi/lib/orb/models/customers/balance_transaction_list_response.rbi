# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionListResponse < Orb::BaseModel
        # A unique id for this transaction.
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol) }
        attr_accessor :action

        # The value of the amount changed in the transaction.
        sig { returns(String) }
        attr_accessor :amount

        # The creation time of this transaction.
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Customers::BalanceTransactionListResponse::CreditNote)) }
        attr_reader :credit_note

        sig do
          params(
            credit_note: T.nilable(T.any(Orb::Models::Customers::BalanceTransactionListResponse::CreditNote, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :credit_note

        # An optional description provided for manual customer balance adjustments.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The new value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        sig { returns(String) }
        attr_accessor :ending_balance

        sig { returns(T.nilable(Orb::Models::Customers::BalanceTransactionListResponse::Invoice)) }
        attr_reader :invoice

        sig do
          params(
            invoice: T.nilable(T.any(Orb::Models::Customers::BalanceTransactionListResponse::Invoice, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoice

        # The original value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        sig { returns(String) }
        attr_accessor :starting_balance

        sig { returns(Orb::Models::Customers::BalanceTransactionListResponse::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            id: String,
            action: Orb::Models::Customers::BalanceTransactionListResponse::Action::OrSymbol,
            amount: String,
            created_at: Time,
            credit_note: T.nilable(T.any(Orb::Models::Customers::BalanceTransactionListResponse::CreditNote, Orb::Util::AnyHash)),
            description: T.nilable(String),
            ending_balance: String,
            invoice: T.nilable(T.any(Orb::Models::Customers::BalanceTransactionListResponse::Invoice, Orb::Util::AnyHash)),
            starting_balance: String,
            type: Orb::Models::Customers::BalanceTransactionListResponse::Type::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                action: Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol,
                amount: String,
                created_at: Time,
                credit_note: T.nilable(Orb::Models::Customers::BalanceTransactionListResponse::CreditNote),
                description: T.nilable(String),
                ending_balance: String,
                invoice: T.nilable(Orb::Models::Customers::BalanceTransactionListResponse::Invoice),
                starting_balance: String,
                type: Orb::Models::Customers::BalanceTransactionListResponse::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        module Action
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Customers::BalanceTransactionListResponse::Action) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol) }

          APPLIED_TO_INVOICE =
            T.let(:applied_to_invoice, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)
          MANUAL_ADJUSTMENT =
            T.let(:manual_adjustment, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)
          PRORATED_REFUND =
            T.let(:prorated_refund, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)
          REVERT_PRORATED_REFUND =
            T.let(
              :revert_prorated_refund,
              Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol
            )
          RETURN_FROM_VOIDING =
            T.let(:return_from_voiding, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)
          CREDIT_NOTE_APPLIED =
            T.let(:credit_note_applied, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)
          CREDIT_NOTE_VOIDED =
            T.let(:credit_note_voided, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)
          OVERPAYMENT_REFUND =
            T.let(:overpayment_refund, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)
          EXTERNAL_PAYMENT =
            T.let(:external_payment, Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Customers::BalanceTransactionListResponse::Action::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditNote < Orb::BaseModel
          # The id of the Credit note
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class Invoice < Orb::BaseModel
          # The Invoice id
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        module Type
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Customers::BalanceTransactionListResponse::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Orb::Models::Customers::BalanceTransactionListResponse::Type::TaggedSymbol) }

          INCREMENT = T.let(:increment, Orb::Models::Customers::BalanceTransactionListResponse::Type::TaggedSymbol)
          DECREMENT = T.let(:decrement, Orb::Models::Customers::BalanceTransactionListResponse::Type::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Customers::BalanceTransactionListResponse::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
