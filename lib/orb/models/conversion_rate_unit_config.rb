# frozen_string_literal: true

module Orb
  module Models
    class ConversionRateUnitConfig < Orb::Internal::Type::BaseModel
      # @!attribute unit_amount
      #   Amount per unit of overage
      #
      #   @return [String]
      required :unit_amount, String

      # @!method initialize(unit_amount:)
      #   @param unit_amount [String] Amount per unit of overage
    end
  end
end
