require 'models/balance_transaction_create_response'
require 'models/balance_transaction_list_response'
require 'model'

module Resources
    module Customers
        class BalanceTransactionsResource

                def initialize(client:)
                    @client = client
                end
                def create(customer_id, amount: nil, type: nil, description: nil)
                    response = @client.request(method: :post, path: "/customers/#{customer_id}/balance_transactions", body: {amount: amount, type: type, description: description})

                    Models::BalanceTransactionCreateResponse.convert(**response)
                end
                def list(customer_id, cursor: nil, limit: nil, operation_time_gt: nil, operation_time_gte: nil, operation_time_lt: nil, operation_time_lte: nil)
                    response = @client.request(method: :get, path: "/customers/#{customer_id}/balance_transactions", body: {}, query: {cursor: cursor, limit: limit, operation_time[gt]: operation_time_gt, operation_time[gte]: operation_time_gte, operation_time[lt]: operation_time_lt, operation_time[lte]: operation_time_lte})

                    Models::BalanceTransactionListResponse.convert(**response)
                end

        end
    end
end