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
            request_options: Orb::RequestOptions::OrHash
          ).returns(
            T.any(
              Orb::Price::Unit,
              Orb::Price::Package,
              Orb::Price::Matrix,
              Orb::Price::Tiered,
              Orb::Price::TieredBps,
              Orb::Price::Bps,
              Orb::Price::BulkBps,
              Orb::Price::Bulk,
              Orb::Price::ThresholdTotalAmount,
              Orb::Price::TieredPackage,
              Orb::Price::GroupedTiered,
              Orb::Price::TieredWithMinimum,
              Orb::Price::TieredPackageWithMinimum,
              Orb::Price::PackageWithAllocation,
              Orb::Price::UnitWithPercent,
              Orb::Price::MatrixWithAllocation,
              Orb::Price::TieredWithProration,
              Orb::Price::UnitWithProration,
              Orb::Price::GroupedAllocation,
              Orb::Price::GroupedWithProratedMinimum,
              Orb::Price::GroupedWithMeteredMinimum,
              Orb::Price::MatrixWithDisplayName,
              Orb::Price::BulkWithProration,
              Orb::Price::GroupedTieredPackage,
              Orb::Price::MaxGroupTieredPackage,
              Orb::Price::ScalableMatrixWithUnitPricing,
              Orb::Price::ScalableMatrixWithTieredPricing,
              Orb::Price::CumulativeGroupedBulk
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
        )
        end

        # This endpoint returns a price given an external price id. See the
        # [price creation API](/api-reference/price/create-price) for more information
        # about external price aliases.
        sig do
          params(
            external_price_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(
            T.any(
              Orb::Price::Unit,
              Orb::Price::Package,
              Orb::Price::Matrix,
              Orb::Price::Tiered,
              Orb::Price::TieredBps,
              Orb::Price::Bps,
              Orb::Price::BulkBps,
              Orb::Price::Bulk,
              Orb::Price::ThresholdTotalAmount,
              Orb::Price::TieredPackage,
              Orb::Price::GroupedTiered,
              Orb::Price::TieredWithMinimum,
              Orb::Price::TieredPackageWithMinimum,
              Orb::Price::PackageWithAllocation,
              Orb::Price::UnitWithPercent,
              Orb::Price::MatrixWithAllocation,
              Orb::Price::TieredWithProration,
              Orb::Price::UnitWithProration,
              Orb::Price::GroupedAllocation,
              Orb::Price::GroupedWithProratedMinimum,
              Orb::Price::GroupedWithMeteredMinimum,
              Orb::Price::MatrixWithDisplayName,
              Orb::Price::BulkWithProration,
              Orb::Price::GroupedTieredPackage,
              Orb::Price::MaxGroupTieredPackage,
              Orb::Price::ScalableMatrixWithUnitPricing,
              Orb::Price::ScalableMatrixWithTieredPricing,
              Orb::Price::CumulativeGroupedBulk
            )
          )
        end
        def fetch(external_price_id, request_options: {})
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
