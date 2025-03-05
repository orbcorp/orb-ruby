# frozen_string_literal: true

module Orb
  module Models
    class PriceIntervalModel < Orb::BaseModel
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
      #     the instant returned is exactly the end of the billing period. Set to null if
      #     this price interval is not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_end_date, Time, nil?: true

      # @!attribute current_billing_period_start_date
      #   The start date of the current billing period. This is an inclusive timestamp;
      #     the instant returned is exactly the beginning of the billing period. Set to null
      #     if this price interval is not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_start_date, Time, nil?: true

      # @!attribute end_date
      #   The end date of the price interval. This is the date that Orb stops billing for
      #     this price.
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
      #     relevant for fixed fees.
      #
      #   @return [Array<Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition>, nil]
      required :fixed_fee_quantity_transitions,
               -> { Orb::ArrayOf[Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition] },
               nil?: true

      # @!attribute price
      #   The Price resource represents a price that can be billed on a subscription,
      #     resulting in a charge on an invoice in the form of an invoice line item. Prices
      #     take a quantity and determine an amount to bill.
      #
      #     Orb supports a few different pricing models out of the box. Each of these models
      #     is serialized differently in a given Price object. The model_type field
      #     determines the key for the configuration object that is present.
      #
      #     For more on the types of prices, see
      #     [the core concepts documentation](/core-concepts#plan-and-price)
      #
      #   @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
      required :price, union: -> { Orb::Models::PriceModel }

      # @!attribute start_date
      #   The start date of the price interval. This is the date that Orb starts billing
      #     for this price.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute usage_customer_ids
      #   A list of customer IDs whose usage events will be aggregated and billed under
      #     this price interval.
      #
      #   @return [Array<String>, nil]
      required :usage_customer_ids, Orb::ArrayOf[String], nil?: true

      # @!parse
      #   # The Price Interval resource represents a period of time for which a price will
      #   #   bill on a subscription. A subscription’s price intervals define its billing
      #   #   behavior.
      #   #
      #   # @param id [String]
      #   # @param billing_cycle_day [Integer]
      #   # @param current_billing_period_end_date [Time, nil]
      #   # @param current_billing_period_start_date [Time, nil]
      #   # @param end_date [Time, nil]
      #   # @param filter [String, nil]
      #   # @param fixed_fee_quantity_transitions [Array<Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition>, nil]
      #   # @param price [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
      #   # @param start_date [Time]
      #   # @param usage_customer_ids [Array<String>, nil]
      #   #
      #   def initialize(
      #     id:,
      #     billing_cycle_day:,
      #     current_billing_period_end_date:,
      #     current_billing_period_start_date:,
      #     end_date:,
      #     filter:,
      #     fixed_fee_quantity_transitions:,
      #     price:,
      #     start_date:,
      #     usage_customer_ids:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      class FixedFeeQuantityTransition < Orb::BaseModel
        # @!attribute effective_date
        #
        #   @return [Time]
        required :effective_date, Time

        # @!attribute price_id
        #
        #   @return [String]
        required :price_id, String

        # @!attribute quantity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!parse
        #   # @param effective_date [Time]
        #   # @param price_id [String]
        #   # @param quantity [Integer]
        #   #
        #   def initialize(effective_date:, price_id:, quantity:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
