# frozen_string_literal: true

module Orb
  module Models
    class CustomExpiration < Orb::Internal::Type::BaseModel
      # @!attribute duration
      #
      #   @return [Integer]
      required :duration, Integer

      # @!attribute duration_unit
      #
      #   @return [Symbol, Orb::Models::CustomExpiration::DurationUnit]
      required :duration_unit, enum: -> { Orb::CustomExpiration::DurationUnit }

      # @!method initialize(duration:, duration_unit:)
      #   @param duration [Integer]
      #   @param duration_unit [Symbol, Orb::Models::CustomExpiration::DurationUnit]

      # @see Orb::Models::CustomExpiration#duration_unit
      module DurationUnit
        extend Orb::Internal::Type::Enum

        DAY = :day
        MONTH = :month

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
