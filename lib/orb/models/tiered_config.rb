# frozen_string_literal: true

module Orb
  module Models
    class TieredConfig < Orb::Internal::Type::BaseModel
      # @!attribute tiers
      #   Tiers for rating based on total usage quantities into the specified tier
      #
      #   @return [Array<Orb::Models::Tier>]
      required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Tier] }

      # @!attribute prorated
      #   If true, subtotals from this price are prorated based on the service period
      #
      #   @return [Boolean, nil]
      optional :prorated, Orb::Internal::Type::Boolean

      # @!method initialize(tiers:, prorated: nil)
      #   Configuration for tiered pricing
      #
      #   @param tiers [Array<Orb::Models::Tier>] Tiers for rating based on total usage quantities into the specified tier
      #
      #   @param prorated [Boolean] If true, subtotals from this price are prorated based on the service period
    end
  end
end
