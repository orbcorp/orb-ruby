# frozen_string_literal: true

module Orb
  module Models
    class UnitConfigModel < Orb::BaseModel
      # @!attribute unit_amount
      #   Rate per unit of usage
      #
      #   @return [String]
      required :unit_amount, String

      # @!parse
      #   # @param unit_amount [String]
      #   #
      #   def initialize(unit_amount:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
