# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Items#fetch
    class ItemFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute item_id
      #
      #   @return [String]
      required :item_id, String

      # @!method initialize(item_id:, request_options: {})
      #   @param item_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
