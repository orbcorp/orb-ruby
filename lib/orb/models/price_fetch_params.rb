# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#fetch
    class PriceFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute price_id
      #
      #   @return [String]
      required :price_id, String

      # @!method initialize(price_id:, request_options: {})
      #   @param price_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
