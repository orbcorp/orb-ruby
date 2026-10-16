# frozen_string_literal: true

module Orb
  module Models
    module DimensionalPriceGroups
      # @see Orb::Resources::DimensionalPriceGroups::Prices#create
      class PriceCreateResponse < Orb::Internal::Type::BaseModel
        # @!attribute data
        #   The prices created by this request, in request order.
        #
        #   @return [Array<Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput>]
        required :data, -> { Orb::Internal::Type::ArrayOf[union: Orb::Price] }

        # @!method initialize(data:)
        #   @param data [Array<Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput>] The prices created by this request, in request order.
      end
    end
  end
end
