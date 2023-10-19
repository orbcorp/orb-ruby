require 'models/plan'
require 'model'

module Resources
    class PlansResource

            def initialize(client:)
                @client = client
            end
            def create(currency: nil, name: nil, prices: nil, default_invoice_memo: nil, external_plan_id: nil, metadata: nil, net_terms: nil)
                response = @client.request(method: :post, path: "/plans", body: {currency: currency, name: name, prices: prices, default_invoice_memo: default_invoice_memo, external_plan_id: external_plan_id, metadata: metadata, net_terms: net_terms})

                Models::Plan.convert(**response)
            end
            def update(plan_id, external_plan_id: nil, metadata: nil)
                response = @client.request(method: :put, path: "/plans/#{plan_id}", body: {external_plan_id: external_plan_id, metadata: metadata})

                Models::Plan.convert(**response)
            end
            def list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, status: nil)
                response = @client.request(method: :get, path: "/plans", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, limit: limit, status: status})

                Models::Plan.convert(**response)
            end
            def fetch(plan_id)
                response = @client.request(method: :get, path: "/plans/#{plan_id}", body: {})

                Models::Plan.convert(**response)
            end

    end
end