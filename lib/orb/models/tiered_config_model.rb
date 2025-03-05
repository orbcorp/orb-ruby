# frozen_string_literal: true

module Orb
  module Models
    class TieredConfigModel < Orb::BaseModel
      # @!attribute tiers
      #   Tiers for rating based on total usage quantities into the specified tier
      #
      #   @return [Array<Orb::Models::TieredConfigModel::Tier>]
      required :tiers, -> { Orb::ArrayOf[Orb::Models::TieredConfigModel::Tier] }

      # @!parse
      #   # @param tiers [Array<Orb::Models::TieredConfigModel::Tier>]
      #   #
      #   def initialize(tiers:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Tier < Orb::BaseModel
        # @!attribute first_unit
        #   Inclusive tier starting value
        #
        #   @return [Float]
        required :first_unit, Float

        # @!attribute unit_amount
        #   Amount per unit
        #
        #   @return [String]
        required :unit_amount, String

        # @!attribute last_unit
        #   Exclusive tier ending value. If null, this is treated as the last tier
        #
        #   @return [Float, nil]
        optional :last_unit, Float, nil?: true

        # @!parse
        #   # @param first_unit [Float]
        #   # @param unit_amount [String]
        #   # @param last_unit [Float, nil]
        #   #
        #   def initialize(first_unit:, unit_amount:, last_unit: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
