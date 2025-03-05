# frozen_string_literal: true

module Orb
  module Models
    class BpsConfigModel < Orb::BaseModel
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

      # @!parse
      #   # @param bps [Float]
      #   # @param per_unit_maximum [String, nil]
      #   #
      #   def initialize(bps:, per_unit_maximum: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
