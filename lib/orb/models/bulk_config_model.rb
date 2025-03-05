# frozen_string_literal: true

module Orb
  module Models
    class BulkConfigModel < Orb::BaseModel
      # @!attribute tiers
      #   Bulk tiers for rating based on total usage volume
      #
      #   @return [Array<Orb::Models::BulkConfigModel::Tier>]
      required :tiers, -> { Orb::ArrayOf[Orb::Models::BulkConfigModel::Tier] }

      # @!parse
      #   # @param tiers [Array<Orb::Models::BulkConfigModel::Tier>]
      #   #
      #   def initialize(tiers:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Tier < Orb::BaseModel
        # @!attribute unit_amount
        #   Amount per unit
        #
        #   @return [String]
        required :unit_amount, String

        # @!attribute maximum_units
        #   Upper bound for this tier
        #
        #   @return [Float, nil]
        optional :maximum_units, Float, nil?: true

        # @!parse
        #   # @param unit_amount [String]
        #   # @param maximum_units [Float, nil]
        #   #
        #   def initialize(unit_amount:, maximum_units: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
