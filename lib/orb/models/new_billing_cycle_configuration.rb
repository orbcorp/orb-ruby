# frozen_string_literal: true

module Orb
  module Models
    class NewBillingCycleConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute duration
      #   The duration of the billing period.
      #
      #   @return [Integer]
      required :duration, Integer

      # @!attribute duration_unit
      #   The unit of billing period duration.
      #
      #   @return [Symbol, Orb::Models::NewBillingCycleConfiguration::DurationUnit]
      required :duration_unit, enum: -> { Orb::NewBillingCycleConfiguration::DurationUnit }

      # @!method initialize(duration:, duration_unit:)
      #   @param duration [Integer] The duration of the billing period.
      #
      #   @param duration_unit [Symbol, Orb::Models::NewBillingCycleConfiguration::DurationUnit] The unit of billing period duration.

      # The unit of billing period duration.
      #
      # @see Orb::Models::NewBillingCycleConfiguration#duration_unit
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
