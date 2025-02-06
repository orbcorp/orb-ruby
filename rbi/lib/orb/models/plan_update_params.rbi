# typed: strong

module Orb
  module Models
    class PlanUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(external_plan_id: nil, metadata: nil, request_options: {}); end

      sig do
        override.returns(
          {
            external_plan_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end
    end
  end
end
