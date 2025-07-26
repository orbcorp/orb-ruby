# frozen_string_literal: true

module Orb
  module Models
    module DimensionalPriceGroups
      # @see Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID#update
      class ExternalDimensionalPriceGroupIDUpdateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute body_external_dimensional_price_group_id
        #   An optional user-defined ID for this dimensional price group resource, used
        #   throughout the system as an alias for this dimensional price group. Use this
        #   field to identify a dimensional price group by an existing identifier in your
        #   system.
        #
        #   @return [String, nil]
        optional :body_external_dimensional_price_group_id,
                 String,
                 api_name: :external_dimensional_price_group_id,
                 nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #   by setting the value to `null`, and the entire metadata mapping can be cleared
        #   by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!method initialize(body_external_dimensional_price_group_id: nil, metadata: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::DimensionalPriceGroups::ExternalDimensionalPriceGroupIDUpdateParams}
        #   for more details.
        #
        #   @param body_external_dimensional_price_group_id [String, nil] An optional user-defined ID for this dimensional price group resource, used thro
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
