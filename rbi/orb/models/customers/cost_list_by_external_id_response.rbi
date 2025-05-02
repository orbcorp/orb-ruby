# typed: strong

module Orb
  module Models
    module Customers
      class CostListByExternalIDResponse < Orb::Internal::Type::BaseModel
        sig { returns(T::Array[Orb::Models::Customers::CostListByExternalIDResponse::Data]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[T.any(Orb::Models::Customers::CostListByExternalIDResponse::Data, Orb::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(data:); end

        sig { override.returns({data: T::Array[Orb::Models::Customers::CostListByExternalIDResponse::Data]}) }
        def to_hash; end

        class Data < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost]) }
          attr_accessor :per_price_costs

          # Total costs for the timeframe, excluding any minimums and discounts.
          sig { returns(String) }
          attr_accessor :subtotal

          sig { returns(Time) }
          attr_accessor :timeframe_end

          sig { returns(Time) }
          attr_accessor :timeframe_start

          # Total costs for the timeframe, including any minimums and discounts.
          sig { returns(String) }
          attr_accessor :total

          sig do
            params(
              per_price_costs: T::Array[T.any(Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost, Orb::Internal::AnyHash)],
              subtotal: String,
              timeframe_end: Time,
              timeframe_start: Time,
              total: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            per_price_costs:,
            # Total costs for the timeframe, excluding any minimums and discounts.
            subtotal:,
            timeframe_end:,
            timeframe_start:,
            # Total costs for the timeframe, including any minimums and discounts.
            total:
          ); end
          sig do
            override
              .returns(
                {
                  per_price_costs: T::Array[Orb::Models::Customers::CostListByExternalIDResponse::Data::PerPriceCost],
                  subtotal: String,
                  timeframe_end: Time,
                  timeframe_start: Time,
                  total: String
                }
              )
          end
          def to_hash; end

          class PerPriceCost < Orb::Internal::Type::BaseModel
            # The price object
            sig do
              returns(
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
                price: T.any(
                  Orb::Models::Price::Unit,
                  Orb::Internal::AnyHash,
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
                ),
                price_id: String,
                subtotal: String,
                total: String,
                quantity: T.nilable(Float)
              )
                .returns(T.attached_class)
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
            ); end
            sig do
              override
                .returns(
                  {
                    price: T.any(
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
                    ),
                    price_id: String,
                    subtotal: String,
                    total: String,
                    quantity: T.nilable(Float)
                  }
                )
            end
            def to_hash; end
          end
        end
      end
    end
  end
end
