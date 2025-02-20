# frozen_string_literal: true

module Orb
  module Models
    class EventUpdateResponse < Orb::BaseModel
      # @!attribute amended
      #   event_id of the amended event, if successfully ingested
      #
      #   @return [String]
      required :amended, String

      # @!parse
      #   # @param amended [String]
      #   #
      #   def initialize(amended:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
