# frozen_string_literal: true

module Orb
  module Models
    class BillingCycleConfigurationModel < Orb::BaseModel
      # @!attribute duration
      #
      #   @return [Integer]
      required :duration, Integer

      # @!attribute duration_unit
      #
      #   @return [Symbol, Orb::Models::BillingCycleConfigurationModel::DurationUnit]
      required :duration_unit, enum: -> { Orb::Models::BillingCycleConfigurationModel::DurationUnit }

      # @!parse
      #   # @param duration [Integer]
      #   # @param duration_unit [Symbol, Orb::Models::BillingCycleConfigurationModel::DurationUnit]
      #   #
      #   def initialize(duration:, duration_unit:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
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
