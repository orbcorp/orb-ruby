# typed: strong

module Orb
  module Models
    module Customers
      class CostListResponse < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::Customers::CostListResponse::Data]) }
        attr_accessor :data

        sig { params(data: T::Array[Orb::Models::Customers::CostListResponse::Data]).void }
        def initialize(data:)
        end

        sig { override.returns({data: T::Array[Orb::Models::Customers::CostListResponse::Data]}) }
        def to_hash
        end

        class Data < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Customers::CostListResponse::Data::PerPriceCost]) }
          attr_accessor :per_price_costs

          sig { returns(String) }
          attr_accessor :subtotal

          sig { returns(Time) }
          attr_accessor :timeframe_end

          sig { returns(Time) }
          attr_accessor :timeframe_start

          sig { returns(String) }
          attr_accessor :total

          sig do
            params(
              per_price_costs: T::Array[Orb::Models::Customers::CostListResponse::Data::PerPriceCost],
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
                per_price_costs: T::Array[Orb::Models::Customers::CostListResponse::Data::PerPriceCost],
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
            attr_accessor :price

            sig { returns(String) }
            attr_accessor :price_id

            sig { returns(String) }
            attr_accessor :subtotal

            sig { returns(String) }
            attr_accessor :total

            sig { returns(T.nilable(Float)) }
            attr_accessor :quantity

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
end
