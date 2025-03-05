# frozen_string_literal: true

module Orb
  module Models
    class TieredBpsConfigModel < Orb::BaseModel
      # @!attribute tiers
      #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
      #     tiers
      #
      #   @return [Array<Orb::Models::TieredBpsConfigModel::Tier>]
      required :tiers, -> { Orb::ArrayOf[Orb::Models::TieredBpsConfigModel::Tier] }

      # @!parse
      #   # @param tiers [Array<Orb::Models::TieredBpsConfigModel::Tier>]
      #   #
      #   def initialize(tiers:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Tier < Orb::BaseModel
        # @!attribute bps
        #   Per-event basis point rate
        #
        #   @return [Float]
        required :bps, Float

        # @!attribute minimum_amount
        #   Inclusive tier starting value
        #
        #   @return [String]
        required :minimum_amount, String

        # @!attribute maximum_amount
        #   Exclusive tier ending value
        #
        #   @return [String, nil]
        optional :maximum_amount, String, nil?: true

        # @!attribute per_unit_maximum
        #   Per unit maximum to charge
        #
        #   @return [String, nil]
        optional :per_unit_maximum, String, nil?: true

        # @!parse
        #   # @param bps [Float]
        #   # @param minimum_amount [String]
        #   # @param maximum_amount [String, nil]
        #   # @param per_unit_maximum [String, nil]
        #   #
        #   def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
