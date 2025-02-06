# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # top_level_ping_response => {
    #   response: String
    # }
    # ```
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
