# typed: strong

module Orb
  module Models
    class TieredConversionRateConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::TieredConversionRateConfig, Orb::Internal::AnyHash)
        end

      sig do
        returns(Orb::TieredConversionRateConfig::ConversionRateType::OrSymbol)
      end
      attr_accessor :conversion_rate_type

      sig { returns(Orb::ConversionRateTieredConfig) }
      attr_reader :tiered_config

      sig do
        params(tiered_config: Orb::ConversionRateTieredConfig::OrHash).void
      end
      attr_writer :tiered_config

      sig do
        params(
          conversion_rate_type:
            Orb::TieredConversionRateConfig::ConversionRateType::OrSymbol,
          tiered_config: Orb::ConversionRateTieredConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(conversion_rate_type:, tiered_config:)
      end

      sig do
        override.returns(
          {
            conversion_rate_type:
              Orb::TieredConversionRateConfig::ConversionRateType::OrSymbol,
            tiered_config: Orb::ConversionRateTieredConfig
          }
        )
      end
      def to_hash
      end

      module ConversionRateType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::TieredConversionRateConfig::ConversionRateType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIERED =
          T.let(
            :tiered,
            Orb::TieredConversionRateConfig::ConversionRateType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::TieredConversionRateConfig::ConversionRateType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
