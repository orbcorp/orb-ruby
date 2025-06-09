# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionChangeMinified < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   @param id [String]
    end
  end
end
