# frozen_string_literal: true

module Orb
  module Models
    class UnitConversionRateConfig < Orb::Internal::Type::BaseModel
      # @!attribute conversion_rate_type
      #
      #   @return [Symbol, Orb::Models::UnitConversionRateConfig::ConversionRateType]
      required :conversion_rate_type, enum: -> { Orb::UnitConversionRateConfig::ConversionRateType }

      # @!attribute unit_config
      #
      #   @return [Orb::Models::ConversionRateUnitConfig]
      required :unit_config, -> { Orb::ConversionRateUnitConfig }

      # @!method initialize(conversion_rate_type:, unit_config:)
      #   @param conversion_rate_type [Symbol, Orb::Models::UnitConversionRateConfig::ConversionRateType]
      #   @param unit_config [Orb::Models::ConversionRateUnitConfig]

      # @see Orb::Models::UnitConversionRateConfig#conversion_rate_type
      module ConversionRateType
        extend Orb::Internal::Type::Enum

        UNIT = :unit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
