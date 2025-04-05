# typed: strong

module Orb
  module Resources
    class Plans
      sig { returns(Orb::Resources::Plans::ExternalPlanID) }
      attr_reader :external_plan_id

      # This endpoint allows creation of plans including their prices.
      sig do
        params(
          currency: String,
          name: String,
          prices: T::Array[
            T.any(
              Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice,
              Orb::Internal::AnyHash,
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
          status: Orb::Models::PlanCreateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::Plan)
      end
      def create(
        # An ISO 4217 currency string for invoices generated by subscriptions on this
        # plan.
        currency:,
        name:,
        # Prices for this plan. If the plan has phases, this includes prices across all
        # phases of the plan.
        prices:,
        # Free-form text which is available on the invoice PDF and the Orb invoice portal.
        default_invoice_memo: nil,
        external_plan_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # The net terms determines the difference between the invoice date and the issue
        # date for the invoice. If you intend the invoice to be due on issue, set this
        # to 0.
        net_terms: nil,
        # The status of the plan to create (either active or draft). If not specified,
        # this defaults to active.
        status: nil,
        request_options: {}
      ); end
      # This endpoint can be used to update the `external_plan_id`, and `metadata` of an
      # existing plan.
      #
      # Other fields on a customer are currently immutable.
      sig do
        params(
          plan_id: String,
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::Plan)
      end
      def update(
        plan_id,
        # An optional user-defined ID for this plan resource, used throughout the system
        # as an alias for this Plan. Use this field to identify a plan by an existing
        # identifier in your system.
        external_plan_id: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      ); end
      # This endpoint returns a list of all [plans](/core-concepts#plan-and-price) for
      # an account in a list format. The list of plans is ordered starting from the most
      # recently created plan. The response also includes
      # [`pagination_metadata`](/api-reference/pagination), which lets the caller
      # retrieve the next page of results if they exist.
      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          status: Orb::Models::PlanListParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Internal::Page[Orb::Models::Plan])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        # The plan status to filter to ('active', 'archived', or 'draft').
        status: nil,
        request_options: {}
      ); end
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
      sig do
        params(
          plan_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::Plan)
      end
      def fetch(plan_id, request_options: {}); end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
