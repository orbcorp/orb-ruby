# typed: strong

module Orb
  module Models
    module Plans
      class ExternalPlanIDUpdateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(T.nilable(String)) }
        def external_plan_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_plan_id=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        def metadata
        end

        sig do
          params(
            _: T.nilable(
              T::Hash[Symbol,
                      T.nilable(String)]
            )
          ).returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
        end
        def metadata=(_)
        end

        sig do
          params(
            external_plan_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(external_plan_id: nil, metadata: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              external_plan_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
