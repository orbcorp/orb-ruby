# frozen_string_literal: true

module Orb
  module Models
    module Prices
      # @see Orb::Resources::Prices::ExternalPriceID#fetch
      class ExternalPriceIDFetchParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute external_price_id
        #
        #   @return [String]
        required :external_price_id, String

        # @!method initialize(external_price_id:, request_options: {})
        #   @param external_price_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
