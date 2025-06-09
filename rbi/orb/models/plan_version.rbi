# typed: strong

module Orb
  module Models
    class PlanVersion < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::PlanVersion, Orb::Internal::AnyHash) }

      # Adjustments for this plan. If the plan has phases, this includes adjustments
      # across all phases of the plan.
      sig { returns(T::Array[Orb::PlanVersion::Adjustment::Variants]) }
      attr_accessor :adjustments

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(T::Array[Orb::PlanVersionPhase])) }
      attr_accessor :plan_phases

      # Prices for this plan. If the plan has phases, this includes prices across all
      # phases of the plan.
      sig { returns(T::Array[Orb::Price::Variants]) }
      attr_accessor :prices

      sig { returns(Integer) }
      attr_accessor :version

      # The PlanVersion resource represents the prices and adjustments present on a
      # specific version of a plan.
      sig do
        params(
          adjustments:
            T::Array[
              T.any(
                Orb::PlanPhaseUsageDiscountAdjustment::OrHash,
                Orb::PlanPhaseAmountDiscountAdjustment::OrHash,
                Orb::PlanPhasePercentageDiscountAdjustment::OrHash,
                Orb::PlanPhaseMinimumAdjustment::OrHash,
                Orb::PlanPhaseMaximumAdjustment::OrHash
              )
            ],
          created_at: Time,
          plan_phases: T.nilable(T::Array[Orb::PlanVersionPhase::OrHash]),
          prices:
            T::Array[
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
                Orb::Price::CumulativeGroupedBulk::OrHash
              )
            ],
          version: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Adjustments for this plan. If the plan has phases, this includes adjustments
        # across all phases of the plan.
        adjustments:,
        created_at:,
        plan_phases:,
        # Prices for this plan. If the plan has phases, this includes prices across all
        # phases of the plan.
        prices:,
        version:
      )
      end

      sig do
        override.returns(
          {
            adjustments: T::Array[Orb::PlanVersion::Adjustment::Variants],
            created_at: Time,
            plan_phases: T.nilable(T::Array[Orb::PlanVersionPhase]),
            prices: T::Array[Orb::Price::Variants],
            version: Integer
          }
        )
      end
      def to_hash
      end

      module Adjustment
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::PlanPhaseUsageDiscountAdjustment,
              Orb::PlanPhaseAmountDiscountAdjustment,
              Orb::PlanPhasePercentageDiscountAdjustment,
              Orb::PlanPhaseMinimumAdjustment,
              Orb::PlanPhaseMaximumAdjustment
            )
          end

        sig do
          override.returns(T::Array[Orb::PlanVersion::Adjustment::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
