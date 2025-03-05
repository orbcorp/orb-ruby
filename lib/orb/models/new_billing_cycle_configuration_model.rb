# frozen_string_literal: true

module Orb
  module Models
    class NewBillingCycleConfigurationModel < Orb::BaseModel
      # @!attribute duration
      #   The duration of the billing period.
      #
      #   @return [Integer]
      required :duration, Integer

      # @!attribute duration_unit
      #   The unit of billing period duration.
      #
      #   @return [Symbol, Orb::Models::NewBillingCycleConfigurationModel::DurationUnit]
      required :duration_unit, enum: -> { Orb::Models::NewBillingCycleConfigurationModel::DurationUnit }

      # @!parse
      #   # @param duration [Integer]
      #   # @param duration_unit [Symbol, Orb::Models::NewBillingCycleConfigurationModel::DurationUnit]
      #   #
      #   def initialize(duration:, duration_unit:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # The unit of billing period duration.
      #
      # @example
      # ```ruby
      # case duration_unit
      # in :day
      #   # ...
      # in :month
      #   # ...
      # end
      # ```
      class DurationUnit < Orb::Enum
        DAY = :day
        MONTH = :month

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
