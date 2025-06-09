# typed: strong

module Orb
  module Models
    class BulkConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::BulkConfig, Orb::Internal::AnyHash) }

      # Bulk tiers for rating based on total usage volume
      sig { returns(T::Array[Orb::BulkTier]) }
      attr_accessor :tiers

      sig do
        params(tiers: T::Array[Orb::BulkTier::OrHash]).returns(T.attached_class)
      end
      def self.new(
        # Bulk tiers for rating based on total usage volume
        tiers:
      )
      end

      sig { override.returns({ tiers: T::Array[Orb::BulkTier] }) }
      def to_hash
      end
    end
  end
end
