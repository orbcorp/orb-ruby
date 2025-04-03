# frozen_string_literal: true

module Orb
  module Models
    module Prices
      # @see Orb::Resources::Prices::ExternalPriceID#fetch
      class ExternalPriceIDFetchParams < Orb::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!parse
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
