# frozen_string_literal: true

module Orb
  module Models
    class MaximumIntervalModel < Orb::BaseModel
      # @!attribute applies_to_price_ids
      #   The price ids that this maximum interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this maximum interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::ArrayOf[String]

      # @!attribute end_date
      #   The end date of the maximum interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute maximum_amount
      #   The maximum amount to charge in a given billing period for the price intervals
      #     this transform applies to.
      #
      #   @return [String]
      required :maximum_amount, String

      # @!attribute start_date
      #   The start date of the maximum interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param applies_to_price_interval_ids [Array<String>]
      #   # @param end_date [Time, nil]
      #   # @param maximum_amount [String]
      #   # @param start_date [Time]
      #   #
      #   def initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, maximum_amount:, start_date:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
