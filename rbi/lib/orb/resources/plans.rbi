# typed: strong

module Orb
  module Resources
    class Plans
      sig { returns(Orb::Resources::Plans::ExternalPlanID) }
      attr_reader :external_plan_id

      sig do
        params(
          currency: String,
          name: String,
          prices: T::Array[Orb::Models::PlanCreateParams::Price::Variants],
          default_invoice_memo: T.nilable(String),
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          status: Symbol,
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Plan)
      end
      def create(
        currency:,
        name:,
        prices:,
        default_invoice_memo: nil,
        external_plan_id: nil,
        metadata: nil,
        net_terms: nil,
        status: nil,
        request_options: {}
      ); end

      sig do
        params(
          plan_id: String,
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Plan)
      end
      def update(plan_id, external_plan_id: nil, metadata: nil, request_options: {}); end

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          status: Symbol,
          request_options: Orb::RequestOpts
        ).returns(Orb::Page[Orb::Models::Plan])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        limit: nil,
        status: nil,
        request_options: {}
      ); end

      sig { params(plan_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Plan) }
      def fetch(plan_id, request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
