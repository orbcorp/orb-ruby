# frozen_string_literal: true

module Orb
  module Models
    module DimensionalPriceGroups
      # @see Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID#retrieve
      class ExternalDimensionalPriceGroupIDRetrieveParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute external_dimensional_price_group_id
        #
        #   @return [String]
        required :external_dimensional_price_group_id, String

        # @!method initialize(external_dimensional_price_group_id:, request_options: {})
        #   @param external_dimensional_price_group_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
