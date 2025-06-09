# frozen_string_literal: true

module Orb
  module Models
    class UnitConfig < Orb::Internal::Type::BaseModel
      # @!attribute unit_amount
      #   Rate per unit of usage
      #
      #   @return [String]
      required :unit_amount, String

      # @!method initialize(unit_amount:)
      #   @param unit_amount [String] Rate per unit of usage
    end
  end
end
