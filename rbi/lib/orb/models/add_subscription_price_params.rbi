# typed: strong

module Orb
  module Models
    class AddSubscriptionPriceParams < Orb::BaseModel
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

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_price_id=(_)
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

      sig { returns(T.nilable(Integer)) }
      def plan_phase_order
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def plan_phase_order=(_)
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

      sig { returns(T.nilable(Time)) }
      def start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date=(_)
      end

      sig do
        params(
          allocation_price: T.nilable(Orb::Models::NewAllocationPriceModel),
          discounts: T.nilable(T::Array[Orb::Models::DiscountOverrideModel]),
          end_date: T.nilable(Time),
          external_price_id: T.nilable(String),
          maximum_amount: T.nilable(String),
          minimum_amount: T.nilable(String),
          plan_phase_order: T.nilable(Integer),
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
          price_id: T.nilable(String),
          start_date: T.nilable(Time)
        )
          .void
      end
      def initialize(
        allocation_price: nil,
        discounts: nil,
        end_date: nil,
        external_price_id: nil,
        maximum_amount: nil,
        minimum_amount: nil,
        plan_phase_order: nil,
        price: nil,
        price_id: nil,
        start_date: nil
      )
      end

      sig do
        override
          .returns(
            {
              allocation_price: T.nilable(Orb::Models::NewAllocationPriceModel),
              discounts: T.nilable(T::Array[Orb::Models::DiscountOverrideModel]),
              end_date: T.nilable(Time),
              external_price_id: T.nilable(String),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              plan_phase_order: T.nilable(Integer),
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
              price_id: T.nilable(String),
              start_date: T.nilable(Time)
            }
          )
      end
      def to_hash
      end
    end
  end
end
