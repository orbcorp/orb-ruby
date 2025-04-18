# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::TopLevel#ping
    class TopLevelPingResponse < Orb::Internal::Type::BaseModel
      # @!attribute response
      #
      #   @return [String]
      required :response, String

      # @!method initialize(response:)
      #   @param response [String]
    end
  end
end
