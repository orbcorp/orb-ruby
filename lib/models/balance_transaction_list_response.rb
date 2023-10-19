require 'model'

module Models
    class BalanceTransactionListResponse < Model

            class CreditNote < Model

                    # @!attribute [rw] id
                    required :id, String

            end
            class Invoice < Model

                    # @!attribute [rw] id
                    required :id, String

            end
            # @!attribute [rw] id
            required :id, String
            # @!attribute [rw] action
            required :action, Enum.new([:"applied_to_invoice", :"prorated_refund", :"manual_adjustment"])
            # @!attribute [rw] amount
            required :amount, String
            # @!attribute [rw] created_at
            required :created_at, String
            # @!attribute [rw] credit_note
            required :credit_note, CreditNote
            # @!attribute [rw] description
            required :description, String
            # @!attribute [rw] ending_balance
            required :ending_balance, String
            # @!attribute [rw] invoice
            required :invoice, Invoice
            # @!attribute [rw] starting_balance
            required :starting_balance, String
            # @!attribute [rw] type
            required :type, Enum.new([:"increment", :"decrement"])

    end
end