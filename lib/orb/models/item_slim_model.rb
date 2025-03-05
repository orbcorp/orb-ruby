# frozen_string_literal: true

module Orb
  module Models
    class ItemSlimModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param id [String]
      #   # @param name [String]
      #   #
      #   def initialize(id:, name:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
