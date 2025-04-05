# frozen_string_literal: true

module Orb
  module Resources
    class Plans
      # @return [Orb::Resources::Plans::ExternalPlanID]
      attr_reader :external_plan_id

      # This endpoint allows creation of plans including their prices.
      #
      # @overload create(currency:, name:, prices:, default_invoice_memo: nil, external_plan_id: nil, metadata: nil, net_terms: nil, status: nil, request_options: {})
      #
      # @param currency [String]
      # @param name [String]
      # @param prices [Array<Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice, Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice, Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice, Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice, Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice, Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice, Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice, Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice, Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice, Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice, Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice, Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice, Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice, Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice, Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice, Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice, Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice, Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice, Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice, Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice, Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice>]
      # @param default_invoice_memo [String, nil]
      # @param external_plan_id [String, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param net_terms [Integer, nil]
      # @param status [Symbol, Orb::Models::PlanCreateParams::Status]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Plan]
      #
      # @see Orb::Models::PlanCreateParams
      def create(params)
        parsed, options = Orb::Models::PlanCreateParams.dump_request(params)
        @client.request(method: :post, path: "plans", body: parsed, model: Orb::Models::Plan, options: options)
      end

      # This endpoint can be used to update the `external_plan_id`, and `metadata` of an
      # existing plan.
      #
      # Other fields on a customer are currently immutable.
      #
      # @overload update(plan_id, external_plan_id: nil, metadata: nil, request_options: {})
      #
      # @param plan_id [String]
      # @param external_plan_id [String, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Plan]
      #
      # @see Orb::Models::PlanUpdateParams
      def update(plan_id, params = {})
        parsed, options = Orb::Models::PlanUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["plans/%1$s", plan_id],
          body: parsed,
          model: Orb::Models::Plan,
          options: options
        )
      end

      # This endpoint returns a list of all [plans](/core-concepts#plan-and-price) for
      # an account in a list format. The list of plans is ordered starting from the most
      # recently created plan. The response also includes
      # [`pagination_metadata`](/api-reference/pagination), which lets the caller
      # retrieve the next page of results if they exist.
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, status: nil, request_options: {})
      #
      # @param created_at_gt [Time, nil]
      # @param created_at_gte [Time, nil]
      # @param created_at_lt [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param cursor [String, nil]
      # @param limit [Integer]
      # @param status [Symbol, Orb::Models::PlanListParams::Status]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Plan>]
      #
      # @see Orb::Models::PlanListParams
      def list(params = {})
        parsed, options = Orb::Models::PlanListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "plans",
          query: parsed.transform_keys(
            created_at_gt: :"created_at[gt]",
            created_at_gte: :"created_at[gte]",
            created_at_lt: :"created_at[lt]",
            created_at_lte: :"created_at[lte]"
          ),
          page: Orb::Internal::Page,
          model: Orb::Models::Plan,
          options: options
        )
      end

      # This endpoint is used to fetch [plan](/core-concepts#plan-and-price) details
      # given a plan identifier. It returns information about the prices included in the
      # plan and their configuration, as well as the product that the plan is attached
      # to.
      #
      # ## Serialized prices
      #
      # Orb supports a few different pricing models out of the box. Each of these models
      # is serialized differently in a given [Price](/core-concepts#plan-and-price)
      # object. The `model_type` field determines the key for the configuration object
      # that is present. A detailed explanation of price types can be found in the
      # [Price schema](/core-concepts#plan-and-price).
      #
      # ## Phases
      #
      # Orb supports plan phases, also known as contract ramps. For plans with phases,
      # the serialized prices refer to all prices across all phases.
      #
      # @overload fetch(plan_id, request_options: {})
      #
      # @param plan_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Plan]
      #
      # @see Orb::Models::PlanFetchParams
      def fetch(plan_id, params = {})
        @client.request(
          method: :get,
          path: ["plans/%1$s", plan_id],
          model: Orb::Models::Plan,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @external_plan_id = Orb::Resources::Plans::ExternalPlanID.new(client: client)
      end
    end
  end
end
