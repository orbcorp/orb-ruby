# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#deprecate
    class EventDeprecateResponse < Orb::Internal::Type::BaseModel
      # @!attribute deprecated
      #   event_id of the deprecated event, if successfully updated
      #
      #   @return [String]
      required :deprecated, String

      # @!method initialize(deprecated:)
      #   @param deprecated [String] event_id of the deprecated event, if successfully updated
    end
  end
end
