require "orb/model"
require "orb/models/plan"
module Orb
  module Resources
    module Plans
      class ExternalPlanIDResource
        attr_reader
        def initialize(client:)
          @client = client
        end
        def update(
          other_external_plan_id,
          external_plan_id: Orb::NotGiven.instance,
          metadata: Orb::NotGiven.instance
        )
          request = {
            method: :put,
            path: "/plans/external_plan_id/#{other_external_plan_id}",
            body: {
              external_plan_id: external_plan_id,
              metadata: metadata
            },
            query: nil
          }

          @client.request(model: Orb::Models::Plan, **request)
        end
        def fetch(external_plan_id)
          request = {
            method: :get,
            path: "/plans/external_plan_id/#{external_plan_id}",
            query: nil
          }

          @client.request(model: Orb::Models::Plan, **request)
        end
      end
    end
  end
end
