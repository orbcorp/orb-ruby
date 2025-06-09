# typed: strong

module Orb
  module Models
    class BulkBPSConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::BulkBPSConfig, Orb::Internal::AnyHash) }

      # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
      # tier based on total volume
      sig { returns(T::Array[Orb::BulkBPSTier]) }
      attr_accessor :tiers

      sig do
        params(tiers: T::Array[Orb::BulkBPSTier::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
        # tier based on total volume
        tiers:
      )
      end

      sig { override.returns({ tiers: T::Array[Orb::BulkBPSTier] }) }
      def to_hash
      end
    end
  end
end
