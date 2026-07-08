# typed: strong

module Orb
  module Models
    module ConversionRateConfig
      extend Orb::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Orb::UnitConversionRateConfig, Orb::TieredConversionRateConfig)
        end

      sig { override.returns(T::Array[Orb::ConversionRateConfig::Variants]) }
      def self.variants
      end
    end
  end
end
