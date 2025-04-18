# frozen_string_literal: true

module Orb
  module Models
    module Prices
      # @see Orb::Resources::Prices::ExternalPriceID#fetch
      class ExternalPriceIDFetchParams < Orb::Internal::Type::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
