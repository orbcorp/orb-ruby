# frozen_string_literal: true

module Orb
  module Models
    class PriceInterval < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute billing_cycle_day
      #   The day of the month that Orb bills for this price
      #
      #   @return [Integer]
      required :billing_cycle_day, Integer

      # @!attribute current_billing_period_end_date
      #   The end of the current billing period. This is an exclusive timestamp, such that
      #   the instant returned is exactly the end of the billing period. Set to null if
      #   this price interval is not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_end_date, Time, nil?: true

      # @!attribute current_billing_period_start_date
      #   The start date of the current billing period. This is an inclusive timestamp;
      #   the instant returned is exactly the beginning of the billing period. Set to null
      #   if this price interval is not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_start_date, Time, nil?: true

      # @!attribute end_date
      #   The end date of the price interval. This is the date that Orb stops billing for
      #   this price.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute filter
      #   An additional filter to apply to usage queries.
      #
      #   @return [String, nil]
      required :filter, String, nil?: true

      # @!attribute fixed_fee_quantity_transitions
      #   The fixed fee quantity transitions for this price interval. This is only
      #   relevant for fixed fees.
      #
      #   @return [Array<Orb::Models::FixedFeeQuantityTransition>, nil]
      required :fixed_fee_quantity_transitions,
               -> { Orb::Internal::Type::ArrayOf[Orb::FixedFeeQuantityTransition] },
               nil?: true

      # @!attribute price
      #   The Price resource represents a price that can be billed on a subscription,
      #   resulting in a charge on an invoice in the form of an invoice line item. Prices
      #   take a quantity and determine an amount to bill.
      #
      #   Orb supports a few different pricing models out of the box. Each of these models
      #   is serialized differently in a given Price object. The model_type field
      #   determines the key for the configuration object that is present.
      #
      #   For more on the types of prices, see
      #   [the core concepts documentation](/core-concepts#plan-and-price)
      #
      #   @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk]
      required :price, union: -> { Orb::Price }

      # @!attribute start_date
      #   The start date of the price interval. This is the date that Orb starts billing
      #   for this price.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute usage_customer_ids
      #   A list of customer IDs whose usage events will be aggregated and billed under
      #   this price interval.
      #
      #   @return [Array<String>, nil]
      required :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(id:, billing_cycle_day:, current_billing_period_end_date:, current_billing_period_start_date:, end_date:, filter:, fixed_fee_quantity_transitions:, price:, start_date:, usage_customer_ids:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PriceInterval} for more details.
      #
      #   The Price Interval resource represents a period of time for which a price will
      #   bill on a subscription. A subscription’s price intervals define its billing
      #   behavior.
      #
      #   @param id [String]
      #
      #   @param billing_cycle_day [Integer] The day of the month that Orb bills for this price
      #
      #   @param current_billing_period_end_date [Time, nil] The end of the current billing period. This is an exclusive timestamp, such that
      #
      #   @param current_billing_period_start_date [Time, nil] The start date of the current billing period. This is an inclusive timestamp; th
      #
      #   @param end_date [Time, nil] The end date of the price interval. This is the date that Orb stops billing for
      #
      #   @param filter [String, nil] An additional filter to apply to usage queries.
      #
      #   @param fixed_fee_quantity_transitions [Array<Orb::Models::FixedFeeQuantityTransition>, nil] The fixed fee quantity transitions for this price interval. This is only relevan
      #
      #   @param price [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk] The Price resource represents a price that can be billed on a subscription, resu
      #
      #   @param start_date [Time] The start date of the price interval. This is the date that Orb starts billing f
      #
      #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th
    end
  end
end
