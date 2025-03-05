# typed: strong

module Orb
  module Resources
    class Prices
      class ExternalPriceID
        sig do
          params(
            external_price_id: String,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(
              T.any(
                Orb::Models::PriceModel::UnitPrice,
                Orb::Models::PriceModel::PackagePrice,
                Orb::Models::PriceModel::MatrixPrice,
                Orb::Models::PriceModel::TieredPrice,
                Orb::Models::PriceModel::TieredBpsPrice,
                Orb::Models::PriceModel::BpsPrice,
                Orb::Models::PriceModel::BulkBpsPrice,
                Orb::Models::PriceModel::BulkPrice,
                Orb::Models::PriceModel::ThresholdTotalAmountPrice,
                Orb::Models::PriceModel::TieredPackagePrice,
                Orb::Models::PriceModel::GroupedTieredPrice,
                Orb::Models::PriceModel::TieredWithMinimumPrice,
                Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
                Orb::Models::PriceModel::PackageWithAllocationPrice,
                Orb::Models::PriceModel::UnitWithPercentPrice,
                Orb::Models::PriceModel::MatrixWithAllocationPrice,
                Orb::Models::PriceModel::TieredWithProrationPrice,
                Orb::Models::PriceModel::UnitWithProrationPrice,
                Orb::Models::PriceModel::GroupedAllocationPrice,
                Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
                Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
                Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
                Orb::Models::PriceModel::BulkWithProrationPrice,
                Orb::Models::PriceModel::GroupedTieredPackagePrice,
                Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
                Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::PriceModel::CumulativeGroupedBulkPrice
              )
            )
        end
        def update(external_price_id, metadata: nil, request_options: {})
        end

        sig do
          params(
            external_price_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(
              T.any(
                Orb::Models::PriceModel::UnitPrice,
                Orb::Models::PriceModel::PackagePrice,
                Orb::Models::PriceModel::MatrixPrice,
                Orb::Models::PriceModel::TieredPrice,
                Orb::Models::PriceModel::TieredBpsPrice,
                Orb::Models::PriceModel::BpsPrice,
                Orb::Models::PriceModel::BulkBpsPrice,
                Orb::Models::PriceModel::BulkPrice,
                Orb::Models::PriceModel::ThresholdTotalAmountPrice,
                Orb::Models::PriceModel::TieredPackagePrice,
                Orb::Models::PriceModel::GroupedTieredPrice,
                Orb::Models::PriceModel::TieredWithMinimumPrice,
                Orb::Models::PriceModel::TieredPackageWithMinimumPrice,
                Orb::Models::PriceModel::PackageWithAllocationPrice,
                Orb::Models::PriceModel::UnitWithPercentPrice,
                Orb::Models::PriceModel::MatrixWithAllocationPrice,
                Orb::Models::PriceModel::TieredWithProrationPrice,
                Orb::Models::PriceModel::UnitWithProrationPrice,
                Orb::Models::PriceModel::GroupedAllocationPrice,
                Orb::Models::PriceModel::GroupedWithProratedMinimumPrice,
                Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice,
                Orb::Models::PriceModel::MatrixWithDisplayNamePrice,
                Orb::Models::PriceModel::BulkWithProrationPrice,
                Orb::Models::PriceModel::GroupedTieredPackagePrice,
                Orb::Models::PriceModel::MaxGroupTieredPackagePrice,
                Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice,
                Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::PriceModel::CumulativeGroupedBulkPrice
              )
            )
        end
        def fetch(external_price_id, request_options: {})
        end

        sig { params(client: Orb::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
