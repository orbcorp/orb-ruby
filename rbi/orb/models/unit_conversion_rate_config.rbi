# typed: strong

module Orb
  module Models
    class UnitConversionRateConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::UnitConversionRateConfig, Orb::Internal::AnyHash)
        end

      sig do
        returns(Orb::UnitConversionRateConfig::ConversionRateType::OrSymbol)
      end
      attr_accessor :conversion_rate_type

      sig { returns(Orb::ConversionRateUnitConfig) }
      attr_reader :unit_config

      sig { params(unit_config: Orb::ConversionRateUnitConfig::OrHash).void }
      attr_writer :unit_config

      sig do
        params(
          conversion_rate_type:
            Orb::UnitConversionRateConfig::ConversionRateType::OrSymbol,
          unit_config: Orb::ConversionRateUnitConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(conversion_rate_type:, unit_config:)
      end

      sig do
        override.returns(
          {
            conversion_rate_type:
              Orb::UnitConversionRateConfig::ConversionRateType::OrSymbol,
            unit_config: Orb::ConversionRateUnitConfig
          }
        )
      end
      def to_hash
      end

      module ConversionRateType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::UnitConversionRateConfig::ConversionRateType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNIT =
          T.let(
            :unit,
            Orb::UnitConversionRateConfig::ConversionRateType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::UnitConversionRateConfig::ConversionRateType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
