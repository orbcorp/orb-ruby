# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Beta#create_plan_version
    class PlanVersion < Orb::Internal::Type::BaseModel
      # @!attribute adjustments
      #   Adjustments for this plan. If the plan has phases, this includes adjustments
      #   across all phases of the plan.
      #
      #   @return [Array<Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment>]
      required :adjustments, -> { Orb::Internal::Type::ArrayOf[union: Orb::PlanVersion::Adjustment] }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute plan_phases
      #
      #   @return [Array<Orb::Models::PlanVersionPhase>, nil]
      required :plan_phases, -> { Orb::Internal::Type::ArrayOf[Orb::PlanVersionPhase] }, nil?: true

      # @!attribute prices
      #   Prices for this plan. If the plan has phases, this includes prices across all
      #   phases of the plan.
      #
      #   @return [Array<Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk>]
      required :prices, -> { Orb::Internal::Type::ArrayOf[union: Orb::Price] }

      # @!attribute version
      #
      #   @return [Integer]
      required :version, Integer

      # @!method initialize(adjustments:, created_at:, plan_phases:, prices:, version:)
      #   Some parameter documentations has been truncated, see {Orb::Models::PlanVersion}
      #   for more details.
      #
      #   The PlanVersion resource represents the prices and adjustments present on a
      #   specific version of a plan.
      #
      #   @param adjustments [Array<Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment>] Adjustments for this plan. If the plan has phases, this includes adjustments acr
      #
      #   @param created_at [Time]
      #
      #   @param plan_phases [Array<Orb::Models::PlanVersionPhase>, nil]
      #
      #   @param prices [Array<Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk>] Prices for this plan. If the plan has phases, this includes prices across all ph
      #
      #   @param version [Integer]

      module Adjustment
        extend Orb::Internal::Type::Union

        discriminator :adjustment_type

        variant :usage_discount, -> { Orb::PlanPhaseUsageDiscountAdjustment }

        variant :amount_discount, -> { Orb::PlanPhaseAmountDiscountAdjustment }

        variant :percentage_discount, -> { Orb::PlanPhasePercentageDiscountAdjustment }

        variant :minimum, -> { Orb::PlanPhaseMinimumAdjustment }

        variant :maximum, -> { Orb::PlanPhaseMaximumAdjustment }

        # @!method self.variants
        #   @return [Array(Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment)]
      end
    end
  end
end
