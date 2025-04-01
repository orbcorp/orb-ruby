# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::TopLevel#ping
    class TopLevelPingResponse < Orb::BaseModel
      # @!attribute response
      #
      #   @return [String]
      required :response, String

      # @!parse
      #   # @param response [String]
      #   #
      #   def initialize(response:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
