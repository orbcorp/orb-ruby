# frozen_string_literal: true

module Orb
  module Models
    class BulkBpsConfigModel < Orb::BaseModel
      # @!attribute tiers
      #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
      #     tier based on total volume
      #
      #   @return [Array<Orb::Models::BulkBpsConfigModel::Tier>]
      required :tiers, -> { Orb::ArrayOf[Orb::Models::BulkBpsConfigModel::Tier] }

      # @!parse
      #   # @param tiers [Array<Orb::Models::BulkBpsConfigModel::Tier>]
      #   #
      #   def initialize(tiers:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Tier < Orb::BaseModel
        # @!attribute bps
        #   Basis points to rate on
        #
        #   @return [Float]
        required :bps, Float

        # @!attribute maximum_amount
        #   Upper bound for tier
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute per_unit_maximum
        #   The maximum amount to charge for any one event
        #
        #   @return [String, nil]
        optional :per_unit_maximum, String, nil?: true

        # @!parse
        #   # @param bps [Float]
        #   # @param maximum_amount [String, nil]
        #   # @param per_unit_maximum [String, nil]
        #   #
        #   def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
