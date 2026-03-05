# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::DimensionalPriceGroups#retrieve
    class DimensionalPriceGroupRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute dimensional_price_group_id
      #
      #   @return [String]
      required :dimensional_price_group_id, String

      # @!method initialize(dimensional_price_group_id:, request_options: {})
      #   @param dimensional_price_group_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
