# frozen_string_literal: true

module Orb
  module Models
    class ItemSlim < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The Orb-assigned unique identifier for the item.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   The name of the item.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(id:, name:)
      #   A minimal representation of an Item containing only the essential identifying
      #   information.
      #
      #   @param id [String] The Orb-assigned unique identifier for the item.
      #
      #   @param name [String] The name of the item.
    end
  end
end
