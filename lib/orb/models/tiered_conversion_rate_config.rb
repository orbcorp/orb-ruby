# frozen_string_literal: true

module Orb
  module Models
    class TieredConversionRateConfig < Orb::Internal::Type::BaseModel
      # @!attribute conversion_rate_type
      #
      #   @return [Symbol, Orb::Models::TieredConversionRateConfig::ConversionRateType]
      required :conversion_rate_type, enum: -> { Orb::TieredConversionRateConfig::ConversionRateType }

      # @!attribute tiered_config
      #
      #   @return [Orb::Models::ConversionRateTieredConfig]
      required :tiered_config, -> { Orb::ConversionRateTieredConfig }

      # @!method initialize(conversion_rate_type:, tiered_config:)
      #   @param conversion_rate_type [Symbol, Orb::Models::TieredConversionRateConfig::ConversionRateType]
      #   @param tiered_config [Orb::Models::ConversionRateTieredConfig]

      # @see Orb::Models::TieredConversionRateConfig#conversion_rate_type
      module ConversionRateType
        extend Orb::Internal::Type::Enum

        TIERED = :tiered

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
