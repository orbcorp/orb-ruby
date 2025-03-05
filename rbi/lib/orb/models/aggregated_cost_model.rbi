# typed: strong

module Orb
  module Models
    class AggregatedCostModel < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::AggregatedCostModel::PerPriceCost]) }
      def per_price_costs
      end

      sig do
        params(_: T::Array[Orb::Models::AggregatedCostModel::PerPriceCost])
          .returns(T::Array[Orb::Models::AggregatedCostModel::PerPriceCost])
      end
      def per_price_costs=(_)
      end

      sig { returns(String) }
      def subtotal
      end

      sig { params(_: String).returns(String) }
      def subtotal=(_)
      end

      sig { returns(Time) }
      def timeframe_end
      end

      sig { params(_: Time).returns(Time) }
      def timeframe_end=(_)
      end

      sig { returns(Time) }
      def timeframe_start
      end

      sig { params(_: Time).returns(Time) }
      def timeframe_start=(_)
      end

      sig { returns(String) }
      def total
      end

      sig { params(_: String).returns(String) }
      def total=(_)
      end

      sig do
        params(
          per_price_costs: T::Array[Orb::Models::AggregatedCostModel::PerPriceCost],
          subtotal: String,
          timeframe_end: Time,
          timeframe_start: Time,
          total: String
        )
          .void
      end
      def initialize(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:)
      end

      sig do
        override
          .returns(
            {
              per_price_costs: T::Array[Orb::Models::AggregatedCostModel::PerPriceCost],
              subtotal: String,
              timeframe_end: Time,
              timeframe_start: Time,
              total: String
            }
          )
      end
      def to_hash
      end

      class PerPriceCost < Orb::BaseModel
        sig do
          returns(
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
        def price
        end

        sig do
          params(
            _: T.any(
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
        def price=(_)
        end

        sig { returns(String) }
        def price_id
        end

        sig { params(_: String).returns(String) }
        def price_id=(_)
        end

        sig { returns(String) }
        def subtotal
        end

        sig { params(_: String).returns(String) }
        def subtotal=(_)
        end

        sig { returns(String) }
        def total
        end

        sig { params(_: String).returns(String) }
        def total=(_)
        end

        sig { returns(T.nilable(Float)) }
        def quantity
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def quantity=(_)
        end

        sig do
          params(
            price: T.any(
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
            ),
            price_id: String,
            subtotal: String,
            total: String,
            quantity: T.nilable(Float)
          )
            .void
        end
        def initialize(price:, price_id:, subtotal:, total:, quantity: nil)
        end

        sig do
          override
            .returns(
              {
                price: T.any(
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
                ),
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
end
