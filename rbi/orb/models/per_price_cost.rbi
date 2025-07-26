# typed: strong

module Orb
  module Models
    class PerPriceCost < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::PerPriceCost, Orb::Internal::AnyHash) }

      # The price object
      sig { returns(Orb::Price::Variants) }
      attr_accessor :price

      # The price the cost is associated with
      sig { returns(String) }
      attr_accessor :price_id

      # Price's contributions for the timeframe, excluding any minimums and discounts.
      sig { returns(String) }
      attr_accessor :subtotal

      # Price's contributions for the timeframe, including minimums and discounts.
      sig { returns(String) }
      attr_accessor :total

      # The price's quantity for the timeframe
      sig { returns(T.nilable(Float)) }
      attr_accessor :quantity

      sig do
        params(
          price:
            T.any(
              Orb::Price::Unit::OrHash,
              Orb::Price::Package::OrHash,
              Orb::Price::Matrix::OrHash,
              Orb::Price::Tiered::OrHash,
              Orb::Price::TieredBPS::OrHash,
              Orb::Price::BPS::OrHash,
              Orb::Price::BulkBPS::OrHash,
              Orb::Price::Bulk::OrHash,
              Orb::Price::ThresholdTotalAmount::OrHash,
              Orb::Price::TieredPackage::OrHash,
              Orb::Price::GroupedTiered::OrHash,
              Orb::Price::TieredWithMinimum::OrHash,
              Orb::Price::TieredPackageWithMinimum::OrHash,
              Orb::Price::PackageWithAllocation::OrHash,
              Orb::Price::UnitWithPercent::OrHash,
              Orb::Price::MatrixWithAllocation::OrHash,
              Orb::Price::TieredWithProration::OrHash,
              Orb::Price::UnitWithProration::OrHash,
              Orb::Price::GroupedAllocation::OrHash,
              Orb::Price::GroupedWithProratedMinimum::OrHash,
              Orb::Price::GroupedWithMeteredMinimum::OrHash,
              Orb::Price::MatrixWithDisplayName::OrHash,
              Orb::Price::BulkWithProration::OrHash,
              Orb::Price::GroupedTieredPackage::OrHash,
              Orb::Price::MaxGroupTieredPackage::OrHash,
              Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
              Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
              Orb::Price::CumulativeGroupedBulk::OrHash,
              Orb::Price::GroupedWithMinMaxThresholds::OrHash
            ),
          price_id: String,
          subtotal: String,
          total: String,
          quantity: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # The price object
        price:,
        # The price the cost is associated with
        price_id:,
        # Price's contributions for the timeframe, excluding any minimums and discounts.
        subtotal:,
        # Price's contributions for the timeframe, including minimums and discounts.
        total:,
        # The price's quantity for the timeframe
        quantity: nil
      )
      end

      sig do
        override.returns(
          {
            price: Orb::Price::Variants,
            price_id: String,
            subtotal: String,
            total: String,
            quantity: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
