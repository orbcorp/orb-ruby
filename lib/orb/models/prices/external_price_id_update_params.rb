# frozen_string_literal: true

module Orb
  module Models
    module Prices
      # @see Orb::Resources::Prices::ExternalPriceID#update
      class ExternalPriceIDUpdateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #   by setting the value to `null`, and the entire metadata mapping can be cleared
        #   by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

        # @!method initialize(metadata: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Prices::ExternalPriceIDUpdateParams} for more details.
        #
        #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
