# typed: strong

module Orb
  module Models
    class TieredConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::TieredConfig, Orb::Internal::AnyHash) }

      # Tiers for rating based on total usage quantities into the specified tier
      sig { returns(T::Array[Orb::Tier]) }
      attr_accessor :tiers

      # If true, subtotals from this price are prorated based on the service period
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :prorated

      sig { params(prorated: T::Boolean).void }
      attr_writer :prorated

      # Configuration for tiered pricing
      sig do
        params(
          tiers: T::Array[Orb::Tier::OrHash],
          prorated: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Tiers for rating based on total usage quantities into the specified tier
        tiers:,
        # If true, subtotals from this price are prorated based on the service period
        prorated: nil
      )
      end

      sig do
        override.returns({ tiers: T::Array[Orb::Tier], prorated: T::Boolean })
      end
      def to_hash
      end
    end
  end
end
