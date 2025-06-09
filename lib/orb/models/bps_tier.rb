# frozen_string_literal: true

module Orb
  module Models
    class BPSTier < Orb::Internal::Type::BaseModel
      # @!attribute bps
      #   Per-event basis point rate
      #
      #   @return [Float]
      required :bps, Float

      # @!attribute minimum_amount
      #   Exclusive tier starting value
      #
      #   @return [String]
      required :minimum_amount, String

      # @!attribute maximum_amount
      #   Inclusive tier ending value
      #
      #   @return [String, nil]
      optional :maximum_amount, String, nil?: true

      # @!attribute per_unit_maximum
      #   Per unit maximum to charge
      #
      #   @return [String, nil]
      optional :per_unit_maximum, String, nil?: true

      # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
      #   @param bps [Float] Per-event basis point rate
      #
      #   @param minimum_amount [String] Exclusive tier starting value
      #
      #   @param maximum_amount [String, nil] Inclusive tier ending value
      #
      #   @param per_unit_maximum [String, nil] Per unit maximum to charge
    end
  end
end
