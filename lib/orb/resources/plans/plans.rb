require 'orb/model'
require 'orb/models/plan'
require 'orb/pagination'
require 'orb/resources/plans/external_plan_id'
module Orb
    module Resources
        class PlanPage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::Plan)

        end

        class PlansResource

                attr_reader :external_plan_id
                def initialize(client:)
                    @client = client
                    @external_plan_id = Orb::Resources::Plans::ExternalPlanIDResource.new(client: client)
                end
                def create(currency: Orb::NotGiven.instance, name: Orb::NotGiven.instance, prices: Orb::NotGiven.instance, default_invoice_memo: Orb::NotGiven.instance, external_plan_id: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance, net_terms: Orb::NotGiven.instance)
                    request = {method: :post, path: "/plans", body: {currency: currency, name: name, prices: prices, default_invoice_memo: default_invoice_memo, external_plan_id: external_plan_id, metadata: metadata, net_terms: net_terms, }, query: nil, }

                    @client.request(model: Orb::Models::Plan, **request)
                end
                def update(plan_id, external_plan_id: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance)
                    request = {method: :put, path: "/plans/#{plan_id}", body: {external_plan_id: external_plan_id, metadata: metadata, }, query: nil, }

                    @client.request(model: Orb::Models::Plan, **request)
                end
                def list(created_at_gt: Orb::NotGiven.instance, created_at_gte: Orb::NotGiven.instance, created_at_lt: Orb::NotGiven.instance, created_at_lte: Orb::NotGiven.instance, cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, status: Orb::NotGiven.instance)
                    request = {method: :get, path: "/plans", query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, limit: limit, status: status, }, }

                    @client.request(page: PlanPage, **request)
                end
                def fetch(plan_id)
                    request = {method: :get, path: "/plans/#{plan_id}", query: nil, }

                    @client.request(model: Orb::Models::Plan, **request)
                end

        end
    end
end