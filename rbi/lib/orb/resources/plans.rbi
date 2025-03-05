# typed: strong

module Orb
  module Resources
    class Plans
      sig { returns(Orb::Resources::Plans::ExternalPlanID) }
      def external_plan_id
      end

      sig do
        params(
          currency: String,
          name: String,
          prices: T::Array[
          T.any(
            Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice
          )
          ],
          default_invoice_memo: T.nilable(String),
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          status: Symbol,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Plan)
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
      )
      end

      sig do
        params(
          plan_id: String,
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Plan)
      end
      def update(plan_id, external_plan_id: nil, metadata: nil, request_options: {})
      end

      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          status: Symbol,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Page[Orb::Models::Plan])
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
      )
      end

      sig do
        params(
          plan_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::Plan)
      end
      def fetch(plan_id, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
