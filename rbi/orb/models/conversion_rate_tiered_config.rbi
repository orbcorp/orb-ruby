# typed: strong

module Orb
  module Models
    class ConversionRateTieredConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::ConversionRateTieredConfig, Orb::Internal::AnyHash)
        end

      # Tiers for rating based on total usage quantities into the specified tier
      sig { returns(T::Array[Orb::ConversionRateTier]) }
      attr_accessor :tiers

      sig do
        params(tiers: T::Array[Orb::ConversionRateTier::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # Tiers for rating based on total usage quantities into the specified tier
        tiers:
      )
      end

      sig { override.returns({ tiers: T::Array[Orb::ConversionRateTier] }) }
      def to_hash
      end
    end
  end
end
