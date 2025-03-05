# typed: strong

module Orb
  module Models
    class ReplaceSubscriptionPriceParams < Orb::BaseModel
      sig { returns(String) }
      def replaces_price_id
      end

      sig { params(_: String).returns(String) }
      def replaces_price_id=(_)
      end

      sig { returns(T.nilable(Orb::Models::NewAllocationPriceModel)) }
      def allocation_price
      end

      sig do
        params(_: T.nilable(Orb::Models::NewAllocationPriceModel))
          .returns(T.nilable(Orb::Models::NewAllocationPriceModel))
      end
      def allocation_price=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::DiscountOverrideModel])) }
      def discounts
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::DiscountOverrideModel]))
          .returns(T.nilable(T::Array[Orb::Models::DiscountOverrideModel]))
      end
      def discounts=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_price_id=(_)
      end

      sig { returns(T.nilable(Float)) }
      def fixed_price_quantity
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def fixed_price_quantity=(_)
      end

      sig { returns(T.nilable(String)) }
      def maximum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def maximum_amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def minimum_amount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def minimum_amount=(_)
      end

      sig do
        returns(
          T.nilable(
            T.any(
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice
            )
          )
        )
      end
      def price
      end

      sig do
        params(
          _: T.nilable(
            T.any(
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice
            )
          )
        )
          .returns(
            T.nilable(
              T.any(
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
      end
      def price=(_)
      end

      sig { returns(T.nilable(String)) }
      def price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def price_id=(_)
      end

      sig do
        params(
          replaces_price_id: String,
          allocation_price: T.nilable(Orb::Models::NewAllocationPriceModel),
          discounts: T.nilable(T::Array[Orb::Models::DiscountOverrideModel]),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          maximum_amount: T.nilable(String),
          minimum_amount: T.nilable(String),
          price: T.nilable(
            T.any(
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice,
              Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice
            )
          ),
          price_id: T.nilable(String)
        )
          .void
      end
      def initialize(
        replaces_price_id:,
        allocation_price: nil,
        discounts: nil,
        external_price_id: nil,
        fixed_price_quantity: nil,
        maximum_amount: nil,
        minimum_amount: nil,
        price: nil,
        price_id: nil
      )
      end

      sig do
        override
          .returns(
            {
              replaces_price_id: String,
              allocation_price: T.nilable(Orb::Models::NewAllocationPriceModel),
              discounts: T.nilable(T::Array[Orb::Models::DiscountOverrideModel]),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              price: T.nilable(
                T.any(
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice,
                  Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice
                )
              ),
              price_id: T.nilable(String)
            }
          )
      end
      def to_hash
      end
    end
  end
end
