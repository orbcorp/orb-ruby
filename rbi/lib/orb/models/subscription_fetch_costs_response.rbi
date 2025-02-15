# typed: strong

module Orb
  module Models
    class SubscriptionFetchCostsResponse < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]) }
      def data
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]).returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data])
      end
      def data=(_)
      end

      sig { params(data: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]}) }
      def to_hash
      end

      class Data < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost]) }
        def per_price_costs
        end

        sig do
          params(_: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost]).returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost])
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
            per_price_costs: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost],
            subtotal: String,
            timeframe_end: Time,
            timeframe_start: Time,
            total: String
          ).void
        end
        def initialize(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:)
        end

        sig do
          override.returns(
            {
              per_price_costs: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost], subtotal: String, timeframe_end: Time, timeframe_start: Time, total: String
            }
          )
        end
        def to_hash
        end

        class PerPriceCost < Orb::BaseModel
          sig do
            returns(
              T.any(
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
              )
            )
          end
          def price
          end

          sig do
            params(
              _: T.any(
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
              )
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
              ),
              price_id: String,
              subtotal: String,
              total: String,
              quantity: T.nilable(Float)
            ).void
          end
          def initialize(price:, price_id:, subtotal:, total:, quantity: nil)
          end

          sig do
            override.returns(
              {
                price: T.any(
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
end
