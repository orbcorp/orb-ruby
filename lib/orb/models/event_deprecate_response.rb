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

      # @!parse
      #   # @param deprecated [String]
      #   #
      #   def initialize(deprecated:, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
