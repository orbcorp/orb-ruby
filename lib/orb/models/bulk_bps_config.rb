# frozen_string_literal: true

module Orb
  module Models
    class BulkBPSConfig < Orb::Internal::Type::BaseModel
      # @!attribute tiers
      #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
      #   tier based on total volume
      #
      #   @return [Array<Orb::Models::BulkBPSTier>]
      required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::BulkBPSTier] }

      # @!method initialize(tiers:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::BulkBPSConfig} for more details.
      #
      #   @param tiers [Array<Orb::Models::BulkBPSTier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie
    end
  end
end
