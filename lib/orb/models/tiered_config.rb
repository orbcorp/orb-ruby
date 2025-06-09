# frozen_string_literal: true

module Orb
  module Models
    class TieredConfig < Orb::Internal::Type::BaseModel
      # @!attribute tiers
      #   Tiers for rating based on total usage quantities into the specified tier
      #
      #   @return [Array<Orb::Models::Tier>]
      required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Tier] }

      # @!method initialize(tiers:)
      #   @param tiers [Array<Orb::Models::Tier>] Tiers for rating based on total usage quantities into the specified tier
    end
  end
end
