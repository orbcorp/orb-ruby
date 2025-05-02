# typed: strong

module Orb
  module Resources
    class Prices
      class ExternalPriceID
        # This endpoint allows you to update the `metadata` property on a price. If you
        # pass null for the metadata value, it will clear any existing metadata for that
        # price.
        sig do
          params(
            external_price_id: String,
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            request_options: Orb::RequestOpts
          )
            .returns(
              T.any(
                Orb::Models::Price::Unit,
                Orb::Models::Price::Package,
                Orb::Models::Price::Matrix,
                Orb::Models::Price::Tiered,
                Orb::Models::Price::TieredBps,
                Orb::Models::Price::Bps,
                Orb::Models::Price::BulkBps,
                Orb::Models::Price::Bulk,
                Orb::Models::Price::ThresholdTotalAmount,
                Orb::Models::Price::TieredPackage,
                Orb::Models::Price::GroupedTiered,
                Orb::Models::Price::TieredWithMinimum,
                Orb::Models::Price::TieredPackageWithMinimum,
                Orb::Models::Price::PackageWithAllocation,
                Orb::Models::Price::UnitWithPercent,
                Orb::Models::Price::MatrixWithAllocation,
                Orb::Models::Price::TieredWithProration,
                Orb::Models::Price::UnitWithProration,
                Orb::Models::Price::GroupedAllocation,
                Orb::Models::Price::GroupedWithProratedMinimum,
                Orb::Models::Price::GroupedWithMeteredMinimum,
                Orb::Models::Price::MatrixWithDisplayName,
                Orb::Models::Price::BulkWithProration,
                Orb::Models::Price::GroupedTieredPackage,
                Orb::Models::Price::MaxGroupTieredPackage,
                Orb::Models::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::Price::CumulativeGroupedBulk
              )
            )
        end
        def update(
          external_price_id,
          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          metadata: nil,
          request_options: {}
        ); end
        # This endpoint returns a price given an external price id. See the
        # [price creation API](/api-reference/price/create-price) for more information
        # about external price aliases.
        sig do
          params(external_price_id: String, request_options: Orb::RequestOpts)
            .returns(
              T.any(
                Orb::Models::Price::Unit,
                Orb::Models::Price::Package,
                Orb::Models::Price::Matrix,
                Orb::Models::Price::Tiered,
                Orb::Models::Price::TieredBps,
                Orb::Models::Price::Bps,
                Orb::Models::Price::BulkBps,
                Orb::Models::Price::Bulk,
                Orb::Models::Price::ThresholdTotalAmount,
                Orb::Models::Price::TieredPackage,
                Orb::Models::Price::GroupedTiered,
                Orb::Models::Price::TieredWithMinimum,
                Orb::Models::Price::TieredPackageWithMinimum,
                Orb::Models::Price::PackageWithAllocation,
                Orb::Models::Price::UnitWithPercent,
                Orb::Models::Price::MatrixWithAllocation,
                Orb::Models::Price::TieredWithProration,
                Orb::Models::Price::UnitWithProration,
                Orb::Models::Price::GroupedAllocation,
                Orb::Models::Price::GroupedWithProratedMinimum,
                Orb::Models::Price::GroupedWithMeteredMinimum,
                Orb::Models::Price::MatrixWithDisplayName,
                Orb::Models::Price::BulkWithProration,
                Orb::Models::Price::GroupedTieredPackage,
                Orb::Models::Price::MaxGroupTieredPackage,
                Orb::Models::Price::ScalableMatrixWithUnitPricing,
                Orb::Models::Price::ScalableMatrixWithTieredPricing,
                Orb::Models::Price::CumulativeGroupedBulk
              )
            )
        end
        def fetch(external_price_id, request_options: {}); end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
