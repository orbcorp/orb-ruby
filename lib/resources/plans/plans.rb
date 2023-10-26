require 'models/plan'
require 'pagination'
require 'model'

module Resources
    class PlanPage < Page
      required :data, ArrayOf.new(Models::Plan)

    end

    class PlansResource

            def initialize(client:)
                @client = client
            end
            def create(currency: nil, name: nil, prices: nil, default_invoice_memo: nil, external_plan_id: nil, metadata: nil, net_terms: nil)
                request = {method: :post, path: "/plans", body: {currency: currency, name: name, prices: prices, default_invoice_memo: default_invoice_memo, external_plan_id: external_plan_id, metadata: metadata, net_terms: net_terms, }, query: nil, }

                @client.request(model: Models::Plan, **request)
            end
            def update(plan_id, external_plan_id: nil, metadata: nil)
                request = {method: :put, path: "/plans/#{plan_id}", body: {external_plan_id: external_plan_id, metadata: metadata, }, query: nil, }

                @client.request(model: Models::Plan, **request)
            end
            def list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, status: nil)
                request = {method: :get, path: "/plans", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, limit: limit, status: status, }, }

                @client.request(page: PlanPage, **request)
            end
            def fetch(plan_id)
                request = {method: :get, path: "/plans/#{plan_id}", body: {}, query: nil, }

                @client.request(model: Models::Plan, **request)
            end

    end
end