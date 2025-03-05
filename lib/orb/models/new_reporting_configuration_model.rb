# frozen_string_literal: true

module Orb
  module Models
    class NewReportingConfigurationModel < Orb::BaseModel
      # @!attribute exempt
      #
      #   @return [Boolean]
      required :exempt, Orb::BooleanModel

      # @!parse
      #   # @param exempt [Boolean]
      #   #
      #   def initialize(exempt:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
