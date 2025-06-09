# frozen_string_literal: true

module Orb
  module Models
    class BulkConfig < Orb::Internal::Type::BaseModel
      # @!attribute tiers
      #   Bulk tiers for rating based on total usage volume
      #
      #   @return [Array<Orb::Models::BulkTier>]
      required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::BulkTier] }

      # @!method initialize(tiers:)
      #   @param tiers [Array<Orb::Models::BulkTier>] Bulk tiers for rating based on total usage volume
    end
  end
end
