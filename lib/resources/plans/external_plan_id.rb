require 'models/plan'
require 'model'

module Resources
    module Plans
        class ExternalPlanIDResource

                def initialize(client:)
                    @client = client
                end
                def update(other_external_plan_id, external_plan_id: nil, metadata: nil)
                    response = @client.request(method: :put, path: "/plans/external_plan_id/#{other_external_plan_id}", body: {external_plan_id: external_plan_id, metadata: metadata})

                    Models::Plan.convert(**response)
                end
                def fetch(external_plan_id)
                    response = @client.request(method: :get, path: "/plans/external_plan_id/#{external_plan_id}", body: {})

                    Models::Plan.convert(**response)
                end

        end
    end
end