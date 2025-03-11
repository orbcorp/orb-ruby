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
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Orb::Models::Plan)
        end
        def update(other_external_plan_id, external_plan_id: nil, metadata: nil, request_options: {})
        end

        sig do
          params(
              external_plan_id: String,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Orb::Models::Plan)
        end
        def fetch(external_plan_id, request_options: {})
        end

        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
