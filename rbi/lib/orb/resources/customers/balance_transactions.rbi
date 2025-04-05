# typed: strong

module Orb
  module Resources
    class Customers
      class BalanceTransactions
        # Creates an immutable balance transaction that updates the customer's balance and
        #   returns back the newly created transaction.
        sig do
          params(
            customer_id: String,
            amount: String,
            type: Orb::Models::Customers::BalanceTransactionCreateParams::Type::OrSymbol,
            description: T.nilable(String),
            request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
          )
            .returns(Orb::Models::Customers::BalanceTransactionCreateResponse)
        end
        def create(
          customer_id,
          amount:,
          type:,
          # An optional description that can be specified around this entry.
          description: nil,
          request_options: {}
        ); end
        # ## The customer balance
        #
        #   The customer balance is an amount in the customer's currency, which Orb
        #   automatically applies to subsequent invoices. This balance can be adjusted
        #   manually via Orb's webapp on the customer details page. You can use this balance
        #   to provide a fixed mid-period credit to the customer. Commonly, this is done due
        #   to system downtime/SLA violation, or an adhoc adjustment discussed with the
        #   customer.
        #
        #   If the balance is a positive value at the time of invoicing, it represents that
        #   the customer has credit that should be used to offset the amount due on the next
        #   issued invoice. In this case, Orb will automatically reduce the next invoice by
        #   the balance amount, and roll over any remaining balance if the invoice is fully
        #   discounted.
        #
        #   If the balance is a negative value at the time of invoicing, Orb will increase
        #   the invoice's amount due with a positive adjustment, and reset the balance to 0.
        #
        #   This endpoint retrieves all customer balance transactions in reverse
        #   chronological order for a single customer, providing a complete audit trail of
        #   all adjustments and invoice applications.
        #
        #   ## Eligibility
        #
        #   The customer balance can only be applied to invoices or adjusted manually if
        #   invoices are not synced to a separate invoicing provider. If a payment gateway
        #   such as Stripe is used, the balance will be applied to the invoice before
        #   forwarding payment to the gateway.
        sig do
          params(
            customer_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            operation_time_gt: T.nilable(Time),
            operation_time_gte: T.nilable(Time),
            operation_time_lt: T.nilable(Time),
            operation_time_lte: T.nilable(Time),
            request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
          )
            .returns(Orb::Internal::Page[Orb::Models::Customers::BalanceTransactionListResponse])
        end
        def list(
          customer_id,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          #   from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          operation_time_gt: nil,
          operation_time_gte: nil,
          operation_time_lt: nil,
          operation_time_lte: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
