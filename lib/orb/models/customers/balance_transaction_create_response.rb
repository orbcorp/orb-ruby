# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::BalanceTransactions#create
      class BalanceTransactionCreateResponse < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   A unique id for this transaction.
        #
        #   @return [String]
        required :id, String

        # @!attribute action
        #
        #   @return [Symbol, Orb::Models::Customers::BalanceTransactionCreateResponse::Action]
        required :action, enum: -> { Orb::Models::Customers::BalanceTransactionCreateResponse::Action }

        # @!attribute amount
        #   The value of the amount changed in the transaction.
        #
        #   @return [String]
        required :amount, String

        # @!attribute created_at
        #   The creation time of this transaction.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_note
        #
        #   @return [Orb::Models::CreditNoteTiny, nil]
        required :credit_note, -> { Orb::CreditNoteTiny }, nil?: true

        # @!attribute description
        #   An optional description provided for manual customer balance adjustments.
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute ending_balance
        #   The new value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        #
        #   @return [String]
        required :ending_balance, String

        # @!attribute invoice
        #
        #   @return [Orb::Models::InvoiceTiny, nil]
        required :invoice, -> { Orb::InvoiceTiny }, nil?: true

        # @!attribute starting_balance
        #   The original value of the customer's balance prior to the transaction, in the
        #   customer's currency.
        #
        #   @return [String]
        required :starting_balance, String

        # @!attribute type
        #
        #   @return [Symbol, Orb::Models::Customers::BalanceTransactionCreateResponse::Type]
        required :type, enum: -> { Orb::Models::Customers::BalanceTransactionCreateResponse::Type }

        # @!method initialize(id:, action:, amount:, created_at:, credit_note:, description:, ending_balance:, invoice:, starting_balance:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::BalanceTransactionCreateResponse} for more details.
        #
        #   @param id [String] A unique id for this transaction.
        #
        #   @param action [Symbol, Orb::Models::Customers::BalanceTransactionCreateResponse::Action]
        #
        #   @param amount [String] The value of the amount changed in the transaction.
        #
        #   @param created_at [Time] The creation time of this transaction.
        #
        #   @param credit_note [Orb::Models::CreditNoteTiny, nil]
        #
        #   @param description [String, nil] An optional description provided for manual customer balance adjustments.
        #
        #   @param ending_balance [String] The new value of the customer's balance prior to the transaction, in the custome
        #
        #   @param invoice [Orb::Models::InvoiceTiny, nil]
        #
        #   @param starting_balance [String] The original value of the customer's balance prior to the transaction, in the cu
        #
        #   @param type [Symbol, Orb::Models::Customers::BalanceTransactionCreateResponse::Type]

        # @see Orb::Models::Customers::BalanceTransactionCreateResponse#action
        module Action
          extend Orb::Internal::Type::Enum

          APPLIED_TO_INVOICE = :applied_to_invoice
          MANUAL_ADJUSTMENT = :manual_adjustment
          PRORATED_REFUND = :prorated_refund
          REVERT_PRORATED_REFUND = :revert_prorated_refund
          RETURN_FROM_VOIDING = :return_from_voiding
          CREDIT_NOTE_APPLIED = :credit_note_applied
          CREDIT_NOTE_VOIDED = :credit_note_voided
          OVERPAYMENT_REFUND = :overpayment_refund
          EXTERNAL_PAYMENT = :external_payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Customers::BalanceTransactionCreateResponse#type
        module Type
          extend Orb::Internal::Type::Enum

          INCREMENT = :increment
          DECREMENT = :decrement

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
