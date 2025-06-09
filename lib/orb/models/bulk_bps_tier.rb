# frozen_string_literal: true

module Orb
  module Models
    class BulkBPSTier < Orb::Internal::Type::BaseModel
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

      # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
      #   @param bps [Float] Basis points to rate on
      #
      #   @param maximum_amount [String, nil] Upper bound for tier
      #
      #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
    end
  end
end
