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
          ).returns(T.any(
                      Orb::Models::Price::UnitPrice,
                      Orb::Models::Price::PackagePrice,
                      Orb::Models::Price::MatrixPrice,
                      Orb::Models::Price::TieredPrice,
                      Orb::Models::Price::TieredBpsPrice,
                      Orb::Models::Price::BpsPrice,
                      Orb::Models::Price::BulkBpsPrice,
                      Orb::Models::Price::BulkPrice,
                      Orb::Models::Price::ThresholdTotalAmountPrice,
                      Orb::Models::Price::TieredPackagePrice,
                      Orb::Models::Price::GroupedTieredPrice,
                      Orb::Models::Price::TieredWithMinimumPrice,
                      Orb::Models::Price::TieredPackageWithMinimumPrice,
                      Orb::Models::Price::PackageWithAllocationPrice,
                      Orb::Models::Price::UnitWithPercentPrice,
                      Orb::Models::Price::MatrixWithAllocationPrice,
                      Orb::Models::Price::TieredWithProrationPrice,
                      Orb::Models::Price::UnitWithProrationPrice,
                      Orb::Models::Price::GroupedAllocationPrice,
                      Orb::Models::Price::GroupedWithProratedMinimumPrice,
                      Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                      Orb::Models::Price::MatrixWithDisplayNamePrice,
                      Orb::Models::Price::BulkWithProrationPrice,
                      Orb::Models::Price::GroupedTieredPackagePrice,
                      Orb::Models::Price::MaxGroupTieredPackagePrice,
                      Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                      Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                      Orb::Models::Price::CumulativeGroupedBulkPrice
                    ))
        end
        def update(external_price_id, metadata: nil, request_options: {})
        end

        sig do
          params(
            external_price_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(T.any(
                      Orb::Models::Price::UnitPrice,
                      Orb::Models::Price::PackagePrice,
                      Orb::Models::Price::MatrixPrice,
                      Orb::Models::Price::TieredPrice,
                      Orb::Models::Price::TieredBpsPrice,
                      Orb::Models::Price::BpsPrice,
                      Orb::Models::Price::BulkBpsPrice,
                      Orb::Models::Price::BulkPrice,
                      Orb::Models::Price::ThresholdTotalAmountPrice,
                      Orb::Models::Price::TieredPackagePrice,
                      Orb::Models::Price::GroupedTieredPrice,
                      Orb::Models::Price::TieredWithMinimumPrice,
                      Orb::Models::Price::TieredPackageWithMinimumPrice,
                      Orb::Models::Price::PackageWithAllocationPrice,
                      Orb::Models::Price::UnitWithPercentPrice,
                      Orb::Models::Price::MatrixWithAllocationPrice,
                      Orb::Models::Price::TieredWithProrationPrice,
                      Orb::Models::Price::UnitWithProrationPrice,
                      Orb::Models::Price::GroupedAllocationPrice,
                      Orb::Models::Price::GroupedWithProratedMinimumPrice,
                      Orb::Models::Price::GroupedWithMeteredMinimumPrice,
                      Orb::Models::Price::MatrixWithDisplayNamePrice,
                      Orb::Models::Price::BulkWithProrationPrice,
                      Orb::Models::Price::GroupedTieredPackagePrice,
                      Orb::Models::Price::MaxGroupTieredPackagePrice,
                      Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
                      Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                      Orb::Models::Price::CumulativeGroupedBulkPrice
                    ))
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
