# frozen_string_literal: true

module Orb
  module Models
    module Plans
      # @see Orb::Resources::Plans::Draft#fetch
      class PlanVersionDraft < Orb::Internal::Type::BaseModel
        # @!attribute adjustments
        #   Adjustments on the draft. If the plan has phases, this includes adjustments
        #   across all phases of the plan.
        #
        #   @return [Array<Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment>]
        required :adjustments,
                 -> { Orb::Internal::Type::ArrayOf[union: Orb::Plans::PlanVersionDraft::Adjustment] }

        # @!attribute base_version
        #   The published version the draft is built on, the latest at read time.
        #
        #   @return [Integer]
        required :base_version, Integer

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute description
        #   Optional description of what changes in this draft
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute plan_phases
        #
        #   @return [Array<Orb::Models::PlanVersionPhase>, nil]
        required :plan_phases, -> { Orb::Internal::Type::ArrayOf[Orb::PlanVersionPhase] }, nil?: true

        # @!attribute prices
        #   Prices on the draft. If the plan has phases, this includes prices across all
        #   phases of the plan.
        #
        #   @return [Array<Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput, Orb::Models::Price::UnitWithMultiplier>]
        required :prices, -> { Orb::Internal::Type::ArrayOf[union: Orb::Price] }

        # @!method initialize(adjustments:, base_version:, created_at:, description:, plan_id:, plan_phases:, prices:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Plans::PlanVersionDraft} for more details.
        #
        #   The PlanVersionDraft resource represents a plan's unpublished next version: the
        #   prices and adjustments it will have once published, built on top of
        #   `base_version`.
        #
        #   @param adjustments [Array<Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment>] Adjustments on the draft. If the plan has phases, this includes adjustments acro
        #
        #   @param base_version [Integer] The published version the draft is built on, the latest at read time.
        #
        #   @param created_at [Time]
        #
        #   @param description [String, nil] Optional description of what changes in this draft
        #
        #   @param plan_id [String]
        #
        #   @param plan_phases [Array<Orb::Models::PlanVersionPhase>, nil]
        #
        #   @param prices [Array<Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::BulkWithFilters, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::GroupedTieredMatrix, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredMatrixWithAllocation, Orb::Models::Price::MatrixWithThresholdDiscounts, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::CumulativeGroupedAllocation, Orb::Models::Price::DailyCreditAllowance, Orb::Models::Price::MeteredAllowance, Orb::Models::Price::MinimumComposite, Orb::Models::Price::Percent, Orb::Models::Price::EventOutput, Orb::Models::Price::UnitWithMultiplier>] Prices on the draft. If the plan has phases, this includes prices across all pha

        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :usage_discount, -> { Orb::PlanPhaseUsageDiscountAdjustment }

          variant :amount_discount, -> { Orb::PlanPhaseAmountDiscountAdjustment }

          variant :percentage_discount, -> { Orb::PlanPhasePercentageDiscountAdjustment }

          variant :tiered_percentage_discount,
                  -> { Orb::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount }

          variant :minimum, -> { Orb::PlanPhaseMinimumAdjustment }

          variant :maximum, -> { Orb::PlanPhaseMaximumAdjustment }

          class TieredPercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :tiered_percentage_discount]
            required :adjustment_type, const: :tiered_percentage_discount

            # @!attribute applies_to_price_ids
            #   @deprecated
            #
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute filters
            #   The filters that determine which prices to apply this adjustment to.
            #
            #   @return [Array<Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter>]
            required :filters,
                     -> { Orb::Internal::Type::ArrayOf[Orb::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter] }

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invoice, false for adjustments that
            #   apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute plan_phase_order
            #   The plan phase in which this adjustment is active.
            #
            #   @return [Integer, nil]
            required :plan_phase_order, Integer, nil?: true

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!attribute replaces_adjustment_id
            #   The adjustment id this adjustment replaces. This adjustment will take the place
            #   of the replaced adjustment in plan version migrations.
            #
            #   @return [String, nil]
            required :replaces_adjustment_id, String, nil?: true

            # @!attribute tiers
            #   The ordered, contiguous bands of cumulative eligible spend, each discounted at
            #   its own percentage (progressive fill-a-tier), applied to the prices this
            #   adjustment covers in a given billing period.
            #
            #   @return [Array<Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Tier>]
            required :tiers,
                     -> { Orb::Internal::Type::ArrayOf[Orb::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Tier] }

            # @!method initialize(id:, applies_to_price_ids:, filters:, is_invoice_level:, plan_phase_order:, reason:, replaces_adjustment_id:, tiers:, adjustment_type: :tiered_percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param filters [Array<Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter>] The filters that determine which prices to apply this adjustment to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invoice, false for adjustments that
            #
            #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param replaces_adjustment_id [String, nil] The adjustment id this adjustment replaces. This adjustment will take the place
            #
            #   @param tiers [Array<Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Tier>] The ordered, contiguous bands of cumulative eligible spend, each discounted at i
            #
            #   @param adjustment_type [Symbol, :tiered_percentage_discount]

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter::Field]
              required :field,
                       enum: -> { Orb::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter::Field }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter::Operator]
              required :operator,
                       enum: -> { Orb::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter::Operator }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter#field
              module Field
                extend Orb::Internal::Type::Enum

                PRICE_ID = :price_id
                ITEM_ID = :item_id
                PRICE_TYPE = :price_type
                CURRENCY = :currency
                PRICING_UNIT_ID = :pricing_unit_id

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Should prices that match the filter be included or excluded.
              #
              # @see Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Tier < Orb::Internal::Type::BaseModel
              # @!attribute lower_bound
              #   Exclusive lower bound of cumulative spend for this tier.
              #
              #   @return [Float]
              required :lower_bound, Float

              # @!attribute percentage
              #   The percentage (between 0 and 1) discounted from spend that falls within this
              #   tier.
              #
              #   @return [Float]
              required :percentage, Float

              # @!attribute upper_bound
              #   Inclusive upper bound of cumulative spend for this tier; null for the final
              #   open-ended tier.
              #
              #   @return [Float, nil]
              optional :upper_bound, Float, nil?: true

              # @!method initialize(lower_bound:, percentage:, upper_bound: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount::Tier}
              #   for more details.
              #
              #   One band of a tiered percentage discount. Bounds are denominated in the
              #   discount's currency. `lower_bound` is the exclusive start of the band and
              #   `upper_bound` is the inclusive end; `upper_bound` is null only for the
              #   open-ended final tier.
              #
              #   @param lower_bound [Float] Exclusive lower bound of cumulative spend for this tier.
              #
              #   @param percentage [Float] The percentage (between 0 and 1) discounted from spend that falls within this ti
              #
              #   @param upper_bound [Float, nil] Inclusive upper bound of cumulative spend for this tier; null for the final open
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plans::PlanVersionDraft::Adjustment::TieredPercentageDiscount, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment)]
        end
      end
    end

    PlanVersionDraft = Plans::PlanVersionDraft
  end
end
