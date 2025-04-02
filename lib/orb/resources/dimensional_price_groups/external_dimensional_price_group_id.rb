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
            model: Orb::Models::DimensionalPriceGroup,
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
