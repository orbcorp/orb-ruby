# frozen_string_literal: true

module Orb
  module Models
    class MinimumIntervalModel < Orb::BaseModel
      # @!attribute applies_to_price_ids
      #   The price ids that this minimum interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this minimum interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::ArrayOf[String]

      # @!attribute end_date
      #   The end date of the minimum interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute minimum_amount
      #   The minimum amount to charge in a given billing period for the price intervals
      #     this minimum applies to.
      #
      #   @return [String]
      required :minimum_amount, String

      # @!attribute start_date
      #   The start date of the minimum interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param applies_to_price_interval_ids [Array<String>]
      #   # @param end_date [Time, nil]
      #   # @param minimum_amount [String]
      #   # @param start_date [Time]
      #   #
      #   def initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, minimum_amount:, start_date:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
