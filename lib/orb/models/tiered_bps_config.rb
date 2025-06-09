# frozen_string_literal: true

module Orb
  module Models
    class TieredBPSConfig < Orb::Internal::Type::BaseModel
      # @!attribute tiers
      #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
      #   tiers
      #
      #   @return [Array<Orb::Models::BPSTier>]
      required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::BPSTier] }

      # @!method initialize(tiers:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::TieredBPSConfig} for more details.
      #
      #   @param tiers [Array<Orb::Models::BPSTier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
    end
  end
end
