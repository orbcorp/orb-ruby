# frozen_string_literal: true

module Orb
  module Resources
    class DimensionalPriceGroups
      class ExternalDimensionalPriceGroupID
        # Fetch dimensional price group by external ID
        #
        # @param external_dimensional_price_group_id [String]
        #
        # @param params [Orb::Models::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::DimensionalPriceGroupModel]
        #
        def retrieve(external_dimensional_price_group_id, params = {})
          @client.request(
            method: :get,
            path: [
              "dimensional_price_groups/external_dimensional_price_group_id/%0s",
              external_dimensional_price_group_id
            ],
            model: Orb::Models::DimensionalPriceGroupModel,
            options: params[:request_options]
          )
        end

        # @param client [Orb::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
