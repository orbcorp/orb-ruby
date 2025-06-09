# frozen_string_literal: true

module Orb
  module Models
    class MaximumInterval < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this maximum interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute end_date
      #   The end date of the maximum interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute filters
      #   The filters that determine which prices this maximum interval applies to.
      #
      #   @return [Array<Orb::Models::TransformPriceFilter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] }

      # @!attribute maximum_amount
      #   The maximum amount to charge in a given billing period for the price intervals
      #   this transform applies to.
      #
      #   @return [String]
      required :maximum_amount, String

      # @!attribute start_date
      #   The start date of the maximum interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(applies_to_price_interval_ids:, end_date:, filters:, maximum_amount:, start_date:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MaximumInterval} for more details.
      #
      #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this maximum interval applies to.
      #
      #   @param end_date [Time, nil] The end date of the maximum interval.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices this maximum interval applies to.
      #
      #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the price intervals t
      #
      #   @param start_date [Time] The start date of the maximum interval.
    end
  end
end
