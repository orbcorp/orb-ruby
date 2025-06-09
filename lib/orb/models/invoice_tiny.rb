# frozen_string_literal: true

module Orb
  module Models
    class InvoiceTiny < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The Invoice id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   @param id [String] The Invoice id
    end
  end
end
