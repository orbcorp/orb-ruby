# frozen_string_literal: true

module Orb
  module Resources
    class Plans
      class ExternalPlanID
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Plans::ExternalPlanIDUpdateParams} for more details.
        #
        # This endpoint can be used to update the `external_plan_id`, and `metadata` of an
        # existing plan.
        #
        # Other fields on a customer are currently immutable.
        #
        # @overload update(other_external_plan_id, external_plan_id: nil, metadata: nil, request_options: {})
        #
        # @param other_external_plan_id [String]
        #
        # @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        # ...
        #
        # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
        # ...
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plan]
        #
        # @see Orb::Models::Plans::ExternalPlanIDUpdateParams
        def update(other_external_plan_id, params = {})
          parsed, options = Orb::Models::Plans::ExternalPlanIDUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["plans/external_plan_id/%1$s", other_external_plan_id],
            body: parsed,
            model: Orb::Models::Plan,
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
            model: Orb::Models::Plan,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
