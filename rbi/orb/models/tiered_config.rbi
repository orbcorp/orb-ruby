# typed: strong

module Orb
  module Models
    class TieredConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::TieredConfig, Orb::Internal::AnyHash) }

      # Tiers for rating based on total usage quantities into the specified tier
      sig { returns(T::Array[Orb::Tier]) }
      attr_accessor :tiers

      sig do
        params(tiers: T::Array[Orb::Tier::OrHash]).returns(T.attached_class)
      end
      def self.new(
        # Tiers for rating based on total usage quantities into the specified tier
        tiers:
      )
      end

      sig { override.returns({ tiers: T::Array[Orb::Tier] }) }
      def to_hash
      end
    end
  end
end
