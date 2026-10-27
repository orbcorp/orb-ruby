# typed: strong

module Orb
  module Models
    module Customers
      class CreditFetchBalanceByExternalIDResponse < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Models::Customers::CreditFetchBalanceByExternalIDResponse,
              Orb::Internal::AnyHash
            )
          end

        # The customer's available credit balance: the sum of `balance` across their
        # `active` credit blocks.
        sig { returns(Float) }
        attr_accessor :balance

        # The currency or custom pricing unit the balances are denominated in. Null when
        # no `currency` is passed and the customer has no credit ledger, in which case
        # every balance is `0`.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # The balance that expires on `next_expiry_date`. Null if `next_expiry_date` is
        # null.
        sig { returns(T.nilable(Float)) }
        attr_accessor :next_expiry_balance

        # The earliest `expiry_date` among active credit blocks. Null if none of them
        # expire.
        sig { returns(T.nilable(Time)) }
        attr_accessor :next_expiry_date

        # The total balance of credit blocks in `pending_payment` status. Not included in
        # `balance` until the invoice that funds them is paid.
        sig { returns(Float) }
        attr_accessor :pending_payment_balance

        sig do
          params(
            balance: Float,
            currency: T.nilable(String),
            next_expiry_balance: T.nilable(Float),
            next_expiry_date: T.nilable(Time),
            pending_payment_balance: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The customer's available credit balance: the sum of `balance` across their
          # `active` credit blocks.
          balance:,
          # The currency or custom pricing unit the balances are denominated in. Null when
          # no `currency` is passed and the customer has no credit ledger, in which case
          # every balance is `0`.
          currency:,
          # The balance that expires on `next_expiry_date`. Null if `next_expiry_date` is
          # null.
          next_expiry_balance:,
          # The earliest `expiry_date` among active credit blocks. Null if none of them
          # expire.
          next_expiry_date:,
          # The total balance of credit blocks in `pending_payment` status. Not included in
          # `balance` until the invoice that funds them is paid.
          pending_payment_balance:
        )
        end

        sig do
          override.returns(
            {
              balance: Float,
              currency: T.nilable(String),
              next_expiry_balance: T.nilable(Float),
              next_expiry_date: T.nilable(Time),
              pending_payment_balance: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
