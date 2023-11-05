require "orb/model"
module Orb
  module Models
    class BalanceTransactionCreateResponse < Orb::Model
      class CreditNote < Orb::Model
        # @!attribute [rw] id
        required :id, String
      end
      class Invoice < Orb::Model
        # @!attribute [rw] id
        required :id, String
      end
      # @!attribute [rw] id
      required :id, String
      # @!attribute [rw] action
      required :action,
               Orb::Enum.new(
                 [
                   :"applied_to_invoice",
                   :"manual_adjustment",
                   :"prorated_refund",
                   :"revert_prorated_refund",
                   :"return_from_voiding",
                   :"credit_note_applied",
                   :"credit_note_voided",
                   :"overpayment_refund"
                 ]
               )
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
      required :type, Orb::Enum.new([:"increment", :"decrement"])
    end
  end
end
