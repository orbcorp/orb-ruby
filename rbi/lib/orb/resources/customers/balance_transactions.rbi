# typed: strong

module Orb
  module Resources
    class Customers
      class BalanceTransactions
        sig do
          params(
            customer_id: String,
            amount: String,
            type: Symbol,
            description: T.nilable(String),
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Customers::BalanceTransactionCreateResponse)
        end
        def create(customer_id, amount:, type:, description: nil, request_options: {}); end

        sig do
          params(
            customer_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            operation_time_gt: T.nilable(Time),
            operation_time_gte: T.nilable(Time),
            operation_time_lt: T.nilable(Time),
            operation_time_lte: T.nilable(Time),
            request_options: Orb::RequestOpts
          ).returns(Orb::Page[Orb::Models::Customers::BalanceTransactionListResponse])
        end
        def list(
          customer_id,
          cursor: nil,
          limit: nil,
          operation_time_gt: nil,
          operation_time_gte: nil,
          operation_time_lt: nil,
          operation_time_lte: nil,
          request_options: {}
        ); end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
