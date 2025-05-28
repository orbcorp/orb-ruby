# frozen_string_literal: true

module Orb
  module Resources
    class Plans
      class Versions
        # This API endpoint is in beta and its interface may change. It is recommended for
        # use only in test mode.
        #
        # This endpoint allows the creation of a new plan version for an existing plan.
        #
        # @overload create(plan_id, version:, add_adjustments: nil, add_prices: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, set_as_default: nil, request_options: {})
        #
        # @param plan_id [String]
        #
        # @param version [Integer] New version number.
        #
        # @param add_adjustments [Array<Orb::Models::Plans::VersionCreateParams::AddAdjustment>, nil] Additional adjustments to be added to the plan.
        #
        # @param add_prices [Array<Orb::Models::Plans::VersionCreateParams::AddPrice>, nil] Additional prices to be added to the plan.
        #
        # @param remove_adjustments [Array<Orb::Models::Plans::VersionCreateParams::RemoveAdjustment>, nil] Adjustments to be removed from the plan.
        #
        # @param remove_prices [Array<Orb::Models::Plans::VersionCreateParams::RemovePrice>, nil] Prices to be removed from the plan.
        #
        # @param replace_adjustments [Array<Orb::Models::Plans::VersionCreateParams::ReplaceAdjustment>, nil] Adjustments to be replaced with additional adjustments on the plan.
        #
        # @param replace_prices [Array<Orb::Models::Plans::VersionCreateParams::ReplacePrice>, nil] Prices to be replaced with additional prices on the plan.
        #
        # @param set_as_default [Boolean, nil] Set this new plan version as the default
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plans::VersionCreateResponse]
        #
        # @see Orb::Models::Plans::VersionCreateParams
        def create(plan_id, params)
          parsed, options = Orb::Plans::VersionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["plans/%1$s/versions", plan_id],
            body: parsed,
            model: Orb::Models::Plans::VersionCreateResponse,
            options: options
          )
        end

        # This API endpoint is in beta and its interface may change. It is recommended for
        # use only in test mode.
        #
        # This endpoint is used to fetch a plan version. It returns the phases, prices,
        # and adjustments present on this version of the plan.
        #
        # @overload retrieve(version, plan_id:, request_options: {})
        #
        # @param version [String]
        # @param plan_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plans::VersionRetrieveResponse]
        #
        # @see Orb::Models::Plans::VersionRetrieveParams
        def retrieve(version, params)
          parsed, options = Orb::Plans::VersionRetrieveParams.dump_request(params)
          plan_id =
            parsed.delete(:plan_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["plans/%1$s/versions/%2$s", plan_id, version],
            model: Orb::Models::Plans::VersionRetrieveResponse,
            options: options
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
