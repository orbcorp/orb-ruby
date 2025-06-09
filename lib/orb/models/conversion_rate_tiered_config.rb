# frozen_string_literal: true

module Orb
  module Models
    class ConversionRateTieredConfig < Orb::Internal::Type::BaseModel
      # @!attribute tiers
      #   Tiers for rating based on total usage quantities into the specified tier
      #
      #   @return [Array<Orb::Models::ConversionRateTier>]
      required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::ConversionRateTier] }

      # @!method initialize(tiers:)
      #   @param tiers [Array<Orb::Models::ConversionRateTier>] Tiers for rating based on total usage quantities into the specified tier
    end
  end
end
