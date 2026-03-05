# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#deprecate
    class EventDeprecateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute event_id
      #
      #   @return [String]
      required :event_id, String

      # @!method initialize(event_id:, request_options: {})
      #   @param event_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
