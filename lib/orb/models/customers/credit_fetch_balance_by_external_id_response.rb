# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#fetch_balance_by_external_id
      class CreditFetchBalanceByExternalIDResponse < Orb::Internal::Type::BaseModel
        # @!attribute balance
        #   The customer's available credit balance: the sum of `balance` across their
        #   `active` credit blocks.
        #
        #   @return [Float]
        required :balance, Float

        # @!attribute currency
        #   The currency or custom pricing unit the balances are denominated in. Null when
        #   no `currency` is passed and the customer has no credit ledger, in which case
        #   every balance is `0`.
        #
        #   @return [String, nil]
        required :currency, String, nil?: true

        # @!attribute next_expiry_balance
        #   The balance that expires on `next_expiry_date`. Null if `next_expiry_date` is
        #   null.
        #
        #   @return [Float, nil]
        required :next_expiry_balance, Float, nil?: true

        # @!attribute next_expiry_date
        #   The earliest `expiry_date` among active credit blocks. Null if none of them
        #   expire.
        #
        #   @return [Time, nil]
        required :next_expiry_date, Time, nil?: true

        # @!attribute pending_payment_balance
        #   The total balance of credit blocks in `pending_payment` status. Not included in
        #   `balance` until the invoice that funds them is paid.
        #
        #   @return [Float]
        required :pending_payment_balance, Float

        # @!method initialize(balance:, currency:, next_expiry_balance:, next_expiry_date:, pending_payment_balance:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::CreditFetchBalanceByExternalIDResponse} for more
        #   details.
        #
        #   @param balance [Float] The customer's available credit balance: the sum of `balance` across their `acti
        #
        #   @param currency [String, nil] The currency or custom pricing unit the balances are denominated in. Null when n
        #
        #   @param next_expiry_balance [Float, nil] The balance that expires on `next_expiry_date`. Null if `next_expiry_date` is nu
        #
        #   @param next_expiry_date [Time, nil] The earliest `expiry_date` among active credit blocks. Null if none of them expi
        #
        #   @param pending_payment_balance [Float] The total balance of credit blocks in `pending_payment` status. Not included in
      end
    end
  end
end
