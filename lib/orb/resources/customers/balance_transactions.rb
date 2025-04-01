# frozen_string_literal: true

module Orb
  module Resources
    class Customers
      class BalanceTransactions
        # Creates an immutable balance transaction that updates the customer's balance and
        #   returns back the newly created transaction.
        #
        # @param customer_id [String]
        #
        # @param params [Orb::Models::Customers::BalanceTransactionCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :amount
        #
        #   @option params [Symbol, Orb::Models::Customers::BalanceTransactionCreateParams::Type] :type
        #
        #   @option params [String, nil] :description An optional description that can be specified around this entry.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::Customers::BalanceTransactionCreateResponse]
        #
        # @see Orb::Models::Customers::BalanceTransactionCreateParams
        def create(customer_id, params)
          parsed, options = Orb::Models::Customers::BalanceTransactionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["customers/%1$s/balance_transactions", customer_id],
            body: parsed,
            model: Orb::Models::Customers::BalanceTransactionCreateResponse,
            options: options
          )
        end

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
        #
        # @param customer_id [String]
        #
        # @param params [Orb::Models::Customers::BalanceTransactionListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
        #     from the initial request.
        #
        #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
        #
        #   @option params [Time, nil] :operation_time_gt
        #
        #   @option params [Time, nil] :operation_time_gte
        #
        #   @option params [Time, nil] :operation_time_lt
        #
        #   @option params [Time, nil] :operation_time_lte
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Page<Orb::Models::Customers::BalanceTransactionListResponse>]
        #
        # @see Orb::Models::Customers::BalanceTransactionListParams
        def list(customer_id, params = {})
          parsed, options = Orb::Models::Customers::BalanceTransactionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["customers/%1$s/balance_transactions", customer_id],
            query: parsed,
            page: Orb::Page,
            model: Orb::Models::Customers::BalanceTransactionListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
