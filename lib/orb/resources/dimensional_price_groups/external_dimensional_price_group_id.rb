# frozen_string_literal: true

module Orb
  module Resources
    class DimensionalPriceGroups
      class ExternalDimensionalPriceGroupID
        # Fetch dimensional price group by external ID
        #
        # @overload retrieve(external_dimensional_price_group_id, request_options: {})
        #
        # @param external_dimensional_price_group_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::DimensionalPriceGroup]
        #
        # @see Orb::Models::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDRetrieveParams
        def retrieve(external_dimensional_price_group_id, params = {})
          @client.request(
            method: :get,
            path: [
              "dimensional_price_groups/external_dimensional_price_group_id/%1$s",
              external_dimensional_price_group_id
            ],
            model: Orb::DimensionalPriceGroup,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDUpdateParams}
        # for more details.
        #
        # This endpoint can be used to update the `external_dimensional_price_group_id`
        # and `metadata` of an existing dimensional price group. Other fields on a
        # dimensional price group are currently immutable.
        #
        # @overload update(path_external_dimensional_price_group_id, body_external_dimensional_price_group_id: nil, metadata: nil, request_options: {})
        #
        # @param path_external_dimensional_price_group_id [String]
        #
        # @param body_external_dimensional_price_group_id [String, nil] An optional user-defined ID for this dimensional price group resource, used thro
        #
        # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::DimensionalPriceGroup]
        #
        # @see Orb::Models::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDUpdateParams
        def update(path_external_dimensional_price_group_id, params = {})
          parsed, options =
            Orb::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: [
              "dimensional_price_groups/external_dimensional_price_group_id/%1$s",
              path_external_dimensional_price_group_id
            ],
            body: parsed,
            model: Orb::DimensionalPriceGroup,
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
