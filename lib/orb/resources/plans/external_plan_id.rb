# frozen_string_literal: true

module Orb
  module Resources
    class Plans
      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      class ExternalPlanID
        # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
        # subscribed to by a customer. Plans define the billing behavior of the
        # subscription. You can see more about how to configure prices in the
        # [Price resource](/reference/price).
        # @return [Orb::Resources::Plans::ExternalPlanID::Draft]
        attr_reader :draft

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Plans::ExternalPlanIDUpdateParams} for more details.
        #
        # This endpoint can be used to update the `name`, `external_plan_id`,
        # `description`, and `metadata` of an existing plan. A plan's `name` cannot be
        # empty.
        #
        # Other fields on a plan are currently immutable.
        #
        # @overload update(other_external_plan_id, description: nil, external_plan_id: nil, metadata: nil, name: nil, request_options: {})
        #
        # @param other_external_plan_id [String]
        #
        # @param description [String, nil] An optional user-defined description of the plan.
        #
        # @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #
        # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
        #
        # @param name [String, nil] The name of the plan.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plan]
        #
        # @see Orb::Models::Plans::ExternalPlanIDUpdateParams
        def update(other_external_plan_id, params = {})
          parsed, options = Orb::Plans::ExternalPlanIDUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["plans/external_plan_id/%1$s", other_external_plan_id],
            body: parsed,
            model: Orb::Plan,
            options: options
          )
        end

        # This endpoint allows the creation of a new plan version for an existing plan.
        #
        # @overload create_plan_version(external_plan_id, version:, add_adjustments: nil, add_prices: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, set_as_default: nil, request_options: {})
        #
        # @param external_plan_id [String]
        #
        # @param version [Integer] New version number.
        #
        # @param add_adjustments [Array<Orb::Models::Plans::ExternalPlanIDCreatePlanVersionParams::AddAdjustment>, nil] Additional adjustments to be added to the plan.
        #
        # @param add_prices [Array<Orb::Models::Plans::ExternalPlanIDCreatePlanVersionParams::AddPrice>, nil] Additional prices to be added to the plan.
        #
        # @param remove_adjustments [Array<Orb::Models::Plans::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment>, nil] Adjustments to be removed from the plan.
        #
        # @param remove_prices [Array<Orb::Models::Plans::ExternalPlanIDCreatePlanVersionParams::RemovePrice>, nil] Prices to be removed from the plan.
        #
        # @param replace_adjustments [Array<Orb::Models::Plans::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment>, nil] Adjustments to be replaced with additional adjustments on the plan.
        #
        # @param replace_prices [Array<Orb::Models::Plans::ExternalPlanIDCreatePlanVersionParams::ReplacePrice>, nil] Prices to be replaced with additional prices on the plan.
        #
        # @param set_as_default [Boolean, nil] Set this new plan version as the default
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::PlanVersion]
        #
        # @see Orb::Models::Plans::ExternalPlanIDCreatePlanVersionParams
        def create_plan_version(external_plan_id, params)
          parsed, options = Orb::Plans::ExternalPlanIDCreatePlanVersionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["plans/external_plan_id/%1$s/versions", external_plan_id],
            body: parsed,
            model: Orb::PlanVersion,
            options: options
          )
        end

        # This endpoint is used to fetch [plan](/core-concepts##plan-and-price) details
        # given an external_plan_id identifier. It returns information about the prices
        # included in the plan and their configuration, as well as the product that the
        # plan is attached to.
        #
        # If multiple plans are found to contain the specified external_plan_id, the
        # active plans will take priority over archived ones, and among those, the
        # endpoint will return the most recently created plan.
        #
        # ## Serialized prices
        #
        # Orb supports a few different pricing models out of the box. Each of these models
        # is serialized differently in a given [Price](/core-concepts#plan-and-price)
        # object. The `model_type` field determines the key for the configuration object
        # that is present. A detailed explanation of price types can be found in the
        # [Price schema](/core-concepts#plan-and-price). "
        #
        # @overload fetch(external_plan_id, request_options: {})
        #
        # @param external_plan_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plan]
        #
        # @see Orb::Models::Plans::ExternalPlanIDFetchParams
        def fetch(external_plan_id, params = {})
          @client.request(
            method: :get,
            path: ["plans/external_plan_id/%1$s", external_plan_id],
            model: Orb::Plan,
            options: params[:request_options]
          )
        end

        # This endpoint is used to fetch a plan version. It returns the phases, prices,
        # and adjustments present on this version of the plan.
        #
        # @overload fetch_plan_version(version, external_plan_id:, request_options: {})
        #
        # @param version [String]
        # @param external_plan_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::PlanVersion]
        #
        # @see Orb::Models::Plans::ExternalPlanIDFetchPlanVersionParams
        def fetch_plan_version(version, params)
          parsed, options = Orb::Plans::ExternalPlanIDFetchPlanVersionParams.dump_request(params)
          external_plan_id =
            parsed.delete(:external_plan_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["plans/external_plan_id/%1$s/versions/%2$s", external_plan_id, version],
            model: Orb::PlanVersion,
            options: options
          )
        end

        # This endpoint allows setting the default version of a plan.
        #
        # @overload set_default_plan_version(external_plan_id, version:, request_options: {})
        #
        # @param external_plan_id [String]
        #
        # @param version [Integer] Plan version to set as the default.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plan]
        #
        # @see Orb::Models::Plans::ExternalPlanIDSetDefaultPlanVersionParams
        def set_default_plan_version(external_plan_id, params)
          parsed, options = Orb::Plans::ExternalPlanIDSetDefaultPlanVersionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["plans/external_plan_id/%1$s/set_default_version", external_plan_id],
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
          @draft = Orb::Resources::Plans::ExternalPlanID::Draft.new(client: client)
        end
      end
    end
  end
end
