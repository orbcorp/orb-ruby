# typed: strong

module Orb
  module Models
    class TieredBPSConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::TieredBPSConfig, Orb::Internal::AnyHash) }

      # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
      # tiers
      sig { returns(T::Array[Orb::BPSTier]) }
      attr_accessor :tiers

      sig do
        params(tiers: T::Array[Orb::BPSTier::OrHash]).returns(T.attached_class)
      end
      def self.new(
        # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
        # tiers
        tiers:
      )
      end

      sig { override.returns({ tiers: T::Array[Orb::BPSTier] }) }
      def to_hash
      end
    end
  end
end
