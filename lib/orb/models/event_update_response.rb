# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Events#update
    class EventUpdateResponse < Orb::Internal::Type::BaseModel
      # @!attribute amended
      #   event_id of the amended event, if successfully ingested
      #
      #   @return [String]
      required :amended, String

      # @!parse
      #   # @param amended [String]
      #   #
      #   def initialize(amended:, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
