# frozen_string_literal: true

module Orb
  module Models
    class AggregatedCostModel < Orb::BaseModel
      # @!attribute per_price_costs
      #
      #   @return [Array<Orb::Models::AggregatedCostModel::PerPriceCost>]
      required :per_price_costs, -> { Orb::ArrayOf[Orb::Models::AggregatedCostModel::PerPriceCost] }

      # @!attribute subtotal
      #   Total costs for the timeframe, excluding any minimums and discounts.
      #
      #   @return [String]
      required :subtotal, String

      # @!attribute timeframe_end
      #
      #   @return [Time]
      required :timeframe_end, Time

      # @!attribute timeframe_start
      #
      #   @return [Time]
      required :timeframe_start, Time

      # @!attribute total
      #   Total costs for the timeframe, including any minimums and discounts.
      #
      #   @return [String]
      required :total, String

      # @!parse
      #   # @param per_price_costs [Array<Orb::Models::AggregatedCostModel::PerPriceCost>]
      #   # @param subtotal [String]
      #   # @param timeframe_end [Time]
      #   # @param timeframe_start [Time]
      #   # @param total [String]
      #   #
      #   def initialize(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class PerPriceCost < Orb::BaseModel
        # @!attribute price
        #   The price object
        #
        #   @return [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
        required :price, union: -> { Orb::Models::PriceModel }

        # @!attribute price_id
        #   The price the cost is associated with
        #
        #   @return [String]
        required :price_id, String

        # @!attribute subtotal
        #   Price's contributions for the timeframe, excluding any minimums and discounts.
        #
        #   @return [String]
        required :subtotal, String

        # @!attribute total
        #   Price's contributions for the timeframe, including minimums and discounts.
        #
        #   @return [String]
        required :total, String

        # @!attribute quantity
        #   The price's quantity for the timeframe
        #
        #   @return [Float, nil]
        optional :quantity, Float, nil?: true

        # @!parse
        #   # @param price [Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice]
        #   # @param price_id [String]
        #   # @param subtotal [String]
        #   # @param total [String]
        #   # @param quantity [Float, nil]
        #   #
        #   def initialize(price:, price_id:, subtotal:, total:, quantity: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
