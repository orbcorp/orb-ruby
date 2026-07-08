# frozen_string_literal: true

module Orb
  module Models
    module ConversionRateConfig
      extend Orb::Internal::Type::Union

      discriminator :conversion_rate_type

      variant :unit, -> { Orb::UnitConversionRateConfig }

      variant :tiered, -> { Orb::TieredConversionRateConfig }

      # @!method self.variants
      #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
    end
  end
end
