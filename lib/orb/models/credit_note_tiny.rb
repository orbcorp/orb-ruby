# frozen_string_literal: true

module Orb
  module Models
    class CreditNoteTiny < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The id of the Credit note
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   @param id [String] The id of the Credit note
    end
  end
end
