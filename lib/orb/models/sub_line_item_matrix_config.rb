# frozen_string_literal: true

module Orb
  module Models
    class SubLineItemMatrixConfig < Orb::Internal::Type::BaseModel
      # @!attribute dimension_values
      #   The ordered dimension values for this line item.
      #
      #   @return [Array<String, nil>]
      required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

      # @!method initialize(dimension_values:)
      #   @param dimension_values [Array<String, nil>] The ordered dimension values for this line item.
    end
  end
end
