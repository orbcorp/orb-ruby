# typed: strong

module Orb
  module Models
    class SubscriptionFetchCostsResponse < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(Orb::Models::SubscriptionFetchCostsResponse::Data, Orb::Util::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data]}) }
      def to_hash
      end

      class Data < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost]) }
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
            per_price_costs: T::Array[T.any(Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost, Orb::Util::AnyHash)],
            subtotal: String,
            timeframe_end: Time,
            timeframe_start: Time,
            total: String
          )
            .returns(T.attached_class)
        end
        def self.new(per_price_costs:, subtotal:, timeframe_end:, timeframe_start:, total:)
        end

        sig do
          override
            .returns(
              {
                per_price_costs: T::Array[Orb::Models::SubscriptionFetchCostsResponse::Data::PerPriceCost],
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
          # The price object
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
                Orb::Models::Price::UnitPrice,
                Orb::Util::AnyHash,
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
            )
              .returns(T.attached_class)
          end
          def self.new(price:, price_id:, subtotal:, total:, quantity: nil)
          end

          sig do
            override
              .returns(
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
