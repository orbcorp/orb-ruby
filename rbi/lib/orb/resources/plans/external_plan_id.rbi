# typed: strong

module Orb
  module Resources
    class Plans
      class ExternalPlanID
        sig do
          params(
            other_external_plan_id: String,
            external_plan_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Plan)
        end
        def update(other_external_plan_id, external_plan_id:, metadata:, request_options: {}); end

        sig { params(external_plan_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Plan) }
        def fetch(external_plan_id, request_options: {}); end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
