# frozen_string_literal: true

module Orb
  module Models
    class NewReportingConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute exempt
      #
      #   @return [Boolean]
      required :exempt, Orb::Internal::Type::Boolean

      # @!method initialize(exempt:)
      #   @param exempt [Boolean]
    end
  end
end
