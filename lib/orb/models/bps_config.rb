# frozen_string_literal: true

module Orb
  module Models
    class BPSConfig < Orb::Internal::Type::BaseModel
      # @!attribute bps
      #   Basis point take rate per event
      #
      #   @return [Float]
      required :bps, Float

      # @!attribute per_unit_maximum
      #   Optional currency amount maximum to cap spend per event
      #
      #   @return [String, nil]
      optional :per_unit_maximum, String, nil?: true

      # @!method initialize(bps:, per_unit_maximum: nil)
      #   @param bps [Float] Basis point take rate per event
      #
      #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
    end
  end
end
