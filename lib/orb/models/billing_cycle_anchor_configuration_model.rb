# frozen_string_literal: true

module Orb
  module Models
    class BillingCycleAnchorConfigurationModel < Orb::BaseModel
      # @!attribute day
      #   The day of the month on which the billing cycle is anchored. If the maximum
      #     number of days in a month is greater than this value, the last day of the month
      #     is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
      #     period begins on the 30th.
      #
      #   @return [Integer]
      required :day, Integer

      # @!attribute month
      #   The month on which the billing cycle is anchored (e.g. a quarterly price
      #     anchored in February would have cycles starting February, May, August, and
      #     November).
      #
      #   @return [Integer, nil]
      optional :month, Integer, nil?: true

      # @!attribute year
      #   The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
      #     anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
      #
      #   @return [Integer, nil]
      optional :year, Integer, nil?: true

      # @!parse
      #   # @param day [Integer]
      #   # @param month [Integer, nil]
      #   # @param year [Integer, nil]
      #   #
      #   def initialize(day:, month: nil, year: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
