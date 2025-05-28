# frozen_string_literal: true

module Orb
  module Resources
    class Beta
      # @return [Orb::Resources::Beta::ExternalPlanID]
      attr_reader :external_plan_id

      # This API endpoint is in beta and its interface may change. It is recommended for
      # use only in test mode.
      #
      # This endpoint allows the creation of a new plan version for an existing plan.
      #
      # @overload create_plan_version(plan_id, version:, add_adjustments: nil, add_prices: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, set_as_default: nil, request_options: {})
      #
      # @param plan_id [String]
      #
      # @param version [Integer] New version number.
      #
      # @param add_adjustments [Array<Orb::Models::BetaCreatePlanVersionParams::AddAdjustment>, nil] Additional adjustments to be added to the plan.
      #
      # @param add_prices [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice>, nil] Additional prices to be added to the plan.
      #
      # @param remove_adjustments [Array<Orb::Models::BetaCreatePlanVersionParams::RemoveAdjustment>, nil] Adjustments to be removed from the plan.
      #
      # @param remove_prices [Array<Orb::Models::BetaCreatePlanVersionParams::RemovePrice>, nil] Prices to be removed from the plan.
      #
      # @param replace_adjustments [Array<Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment>, nil] Adjustments to be replaced with additional adjustments on the plan.
      #
      # @param replace_prices [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice>, nil] Prices to be replaced with additional prices on the plan.
      #
      # @param set_as_default [Boolean, nil] Set this new plan version as the default
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::PlanVersion]
      #
      # @see Orb::Models::BetaCreatePlanVersionParams
      def create_plan_version(plan_id, params)
        parsed, options = Orb::BetaCreatePlanVersionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["plans/%1$s/versions", plan_id],
          body: parsed,
          model: Orb::PlanVersion,
          options: options
        )
      end

      # This API endpoint is in beta and its interface may change. It is recommended for
      # use only in test mode.
      #
      # This endpoint is used to fetch a plan version. It returns the phases, prices,
      # and adjustments present on this version of the plan.
      #
      # @overload fetch_plan_version(version, plan_id:, request_options: {})
      #
      # @param version [String]
      # @param plan_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::PlanVersion]
      #
      # @see Orb::Models::BetaFetchPlanVersionParams
      def fetch_plan_version(version, params)
        parsed, options = Orb::BetaFetchPlanVersionParams.dump_request(params)
        plan_id =
          parsed.delete(:plan_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["plans/%1$s/versions/%2$s", plan_id, version],
          model: Orb::PlanVersion,
          options: options
        )
      end

      # This API endpoint is in beta and its interface may change. It is recommended for
      # use only in test mode.
      #
      # This endpoint allows setting the default version of a plan.
      #
      # @overload set_default_plan_version(plan_id, version:, request_options: {})
      #
      # @param plan_id [String]
      #
      # @param version [Integer] Plan version to set as the default.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Plan]
      #
      # @see Orb::Models::BetaSetDefaultPlanVersionParams
      def set_default_plan_version(plan_id, params)
        parsed, options = Orb::BetaSetDefaultPlanVersionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["plans/%1$s/set_default_version", plan_id],
          body: parsed,
          model: Orb::Plan,
          options: options
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @external_plan_id = Orb::Resources::Beta::ExternalPlanID.new(client: client)
      end
    end
  end
end
