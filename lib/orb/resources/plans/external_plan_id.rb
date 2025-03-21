# frozen_string_literal: true

module Orb
  module Resources
    class Plans
      class ExternalPlanID
        # This endpoint can be used to update the `external_plan_id`, and `metadata` of an
        #   existing plan.
        #
        #   Other fields on a customer are currently immutable.
        #
        # @param other_external_plan_id [String]
        #
        # @param params [Orb::Models::Plans::ExternalPlanIDUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :external_plan_id An optional user-defined ID for this plan resource, used throughout the system
        #     as an alias for this Plan. Use this field to identify a plan by an existing
        #     identifier in your system.
        #
        #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::Plan]
        def update(other_external_plan_id, params = {})
          parsed, options = Orb::Models::Plans::ExternalPlanIDUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["plans/external_plan_id/%0s", other_external_plan_id],
            body: parsed,
            model: Orb::Models::Plan,
            options: options
          )
        end

        # This endpoint is used to fetch [plan](/core-concepts##plan-and-price) details
        #   given an external_plan_id identifier. It returns information about the prices
        #   included in the plan and their configuration, as well as the product that the
        #   plan is attached to.
        #
        #   If multiple plans are found to contain the specified external_plan_id, the
        #   active plans will take priority over archived ones, and among those, the
        #   endpoint will return the most recently created plan.
        #
        #   ## Serialized prices
        #
        #   Orb supports a few different pricing models out of the box. Each of these models
        #   is serialized differently in a given [Price](/core-concepts#plan-and-price)
        #   object. The `model_type` field determines the key for the configuration object
        #   that is present. A detailed explanation of price types can be found in the
        #   [Price schema](/core-concepts#plan-and-price). "
        #
        # @param external_plan_id [String]
        #
        # @param params [Orb::Models::Plans::ExternalPlanIDFetchParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::Plan]
        def fetch(external_plan_id, params = {})
          @client.request(
            method: :get,
            path: ["plans/external_plan_id/%0s", external_plan_id],
            model: Orb::Models::Plan,
            options: params[:request_options]
          )
        end

        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
