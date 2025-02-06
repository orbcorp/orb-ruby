# typed: strong

module Orb
  module Models
    module Plans
      class ExternalPlanIDUpdateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        Shape = T.type_alias do
          T.all(
            {external_plan_id: T.nilable(String), metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])},
            Orb::RequestParameters::Shape
          )
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        attr_accessor :metadata

        sig do
          params(
            external_plan_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOpts
          ).void
        end
        def initialize(external_plan_id: nil, metadata: nil, request_options: {}); end

        sig { returns(Orb::Models::Plans::ExternalPlanIDUpdateParams::Shape) }
        def to_h; end
      end
    end
  end
end
