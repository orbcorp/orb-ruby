# typed: strong

module Orb
  module Models
    class PriceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig do
        returns(
          T.any(
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
          )
        )
      end
      def new_floating_price_model
      end

      sig do
        params(
          _: T.any(
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
          )
        )
          .returns(
            T.any(
              Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
              Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
            )
          )
      end
      def new_floating_price_model=(_)
      end

      sig do
        params(
          new_floating_price_model: T.any(
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
            Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
          ),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(new_floating_price_model:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              new_floating_price_model: T.any(
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
              ),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
