# frozen_string_literal: true

module Orb
  module Models
    class PerPriceCost < Orb::Internal::Type::BaseModel
      # @!attribute price
      #   The price object
      #
      #   @return [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk]
      required :price, union: -> { Orb::Price }

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

      # @!method initialize(price:, price_id:, subtotal:, total:, quantity: nil)
      #   @param price [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk] The price object
      #
      #   @param price_id [String] The price the cost is associated with
      #
      #   @param subtotal [String] Price's contributions for the timeframe, excluding any minimums and discounts.
      #
      #   @param total [String] Price's contributions for the timeframe, including minimums and discounts.
      #
      #   @param quantity [Float, nil] The price's quantity for the timeframe
    end
  end
end
