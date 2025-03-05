# typed: strong

module Orb
  module Models
    class PriceIntervalModel < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Integer) }
      def billing_cycle_day
      end

      sig { params(_: Integer).returns(Integer) }
      def billing_cycle_day=(_)
      end

      sig { returns(T.nilable(Time)) }
      def current_billing_period_end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def current_billing_period_end_date=(_)
      end

      sig { returns(T.nilable(Time)) }
      def current_billing_period_start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def current_billing_period_start_date=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def filter
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def filter=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition])) }
      def fixed_fee_quantity_transitions
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition]))
          .returns(T.nilable(T::Array[Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition]))
      end
      def fixed_fee_quantity_transitions=(_)
      end

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

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def usage_customer_ids
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def usage_customer_ids=(_)
      end

      sig do
        params(
          id: String,
          billing_cycle_day: Integer,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          end_date: T.nilable(Time),
          filter: T.nilable(String),
          fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition]),
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
          start_date: Time,
          usage_customer_ids: T.nilable(T::Array[String])
        )
          .void
      end
      def initialize(
        id:,
        billing_cycle_day:,
        current_billing_period_end_date:,
        current_billing_period_start_date:,
        end_date:,
        filter:,
        fixed_fee_quantity_transitions:,
        price:,
        start_date:,
        usage_customer_ids:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              billing_cycle_day: Integer,
              current_billing_period_end_date: T.nilable(Time),
              current_billing_period_start_date: T.nilable(Time),
              end_date: T.nilable(Time),
              filter: T.nilable(String),
              fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::PriceIntervalModel::FixedFeeQuantityTransition]),
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
              start_date: Time,
              usage_customer_ids: T.nilable(T::Array[String])
            }
          )
      end
      def to_hash
      end

      class FixedFeeQuantityTransition < Orb::BaseModel
        sig { returns(Time) }
        def effective_date
        end

        sig { params(_: Time).returns(Time) }
        def effective_date=(_)
        end

        sig { returns(String) }
        def price_id
        end

        sig { params(_: String).returns(String) }
        def price_id=(_)
        end

        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        sig { params(effective_date: Time, price_id: String, quantity: Integer).void }
        def initialize(effective_date:, price_id:, quantity:)
        end

        sig { override.returns({effective_date: Time, price_id: String, quantity: Integer}) }
        def to_hash
        end
      end
    end
  end
end
