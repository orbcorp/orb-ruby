# frozen_string_literal: true

module Orb
  module Models
    module Beta
      # @see Orb::Resources::Beta::ExternalPlanID#create_plan_version
      class ExternalPlanIDCreatePlanVersionParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute version
        #   New version number.
        #
        #   @return [Integer]
        required :version, Integer

        # @!attribute add_adjustments
        #   Additional adjustments to be added to the plan.
        #
        #   @return [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment>, nil]
        optional :add_adjustments,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment]
                 },
                 nil?: true

        # @!attribute add_prices
        #   Additional prices to be added to the plan.
        #
        #   @return [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice>, nil]
        optional :add_prices,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice]
                 },
                 nil?: true

        # @!attribute remove_adjustments
        #   Adjustments to be removed from the plan.
        #
        #   @return [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment>, nil]
        optional :remove_adjustments,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment]
                 },
                 nil?: true

        # @!attribute remove_prices
        #   Prices to be removed from the plan.
        #
        #   @return [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice>, nil]
        optional :remove_prices,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice]
                 },
                 nil?: true

        # @!attribute replace_adjustments
        #   Adjustments to be replaced with additional adjustments on the plan.
        #
        #   @return [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment>, nil]
        optional :replace_adjustments,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment]
                 },
                 nil?: true

        # @!attribute replace_prices
        #   Prices to be replaced with additional prices on the plan.
        #
        #   @return [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice>, nil]
        optional :replace_prices,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice]
                 },
                 nil?: true

        # @!attribute set_as_default
        #   Set this new plan version as the default
        #
        #   @return [Boolean, nil]
        optional :set_as_default, Orb::Internal::Type::Boolean, nil?: true

        # @!method initialize(version:, add_adjustments: nil, add_prices: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, set_as_default: nil, request_options: {})
        #   @param version [Integer] New version number.
        #
        #   @param add_adjustments [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment>, nil] Additional adjustments to be added to the plan.
        #
        #   @param add_prices [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice>, nil] Additional prices to be added to the plan.
        #
        #   @param remove_adjustments [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment>, nil] Adjustments to be removed from the plan.
        #
        #   @param remove_prices [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice>, nil] Prices to be removed from the plan.
        #
        #   @param replace_adjustments [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment>, nil] Adjustments to be replaced with additional adjustments on the plan.
        #
        #   @param replace_prices [Array<Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice>, nil] Prices to be replaced with additional prices on the plan.
        #
        #   @param set_as_default [Boolean, nil] Set this new plan version as the default
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        class AddAdjustment < Orb::Internal::Type::BaseModel
          # @!attribute adjustment
          #   The definition of a new adjustment to create and add to the plan.
          #
          #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum]
          required :adjustment,
                   union: -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment::Adjustment }

          # @!attribute plan_phase_order
          #   The phase to add this adjustment to.
          #
          #   @return [Integer, nil]
          optional :plan_phase_order, Integer, nil?: true

          # @!method initialize(adjustment:, plan_phase_order: nil)
          #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum] The definition of a new adjustment to create and add to the plan.
          #
          #   @param plan_phase_order [Integer, nil] The phase to add this adjustment to.

          # The definition of a new adjustment to create and add to the plan.
          #
          # @see Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment#adjustment
          module Adjustment
            extend Orb::Internal::Type::Union

            discriminator :adjustment_type

            variant :percentage_discount, -> { Orb::NewPercentageDiscount }

            variant :usage_discount, -> { Orb::NewUsageDiscount }

            variant :amount_discount, -> { Orb::NewAmountDiscount }

            variant :minimum, -> { Orb::NewMinimum }

            variant :maximum, -> { Orb::NewMaximum }

            # @!method self.variants
            #   @return [Array(Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum)]
          end
        end

        class AddPrice < Orb::Internal::Type::BaseModel
          # @!attribute allocation_price
          #   The allocation price to add to the plan.
          #
          #   @return [Orb::Models::NewAllocationPrice, nil]
          optional :allocation_price, -> { Orb::NewAllocationPrice }, nil?: true

          # @!attribute plan_phase_order
          #   The phase to add this price to.
          #
          #   @return [Integer, nil]
          optional :plan_phase_order, Integer, nil?: true

          # @!attribute price
          #   The price to add to the plan
          #
          #   @return [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, nil]
          optional :price,
                   union: -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price },
                   nil?: true

          # @!method initialize(allocation_price: nil, plan_phase_order: nil, price: nil)
          #   @param allocation_price [Orb::Models::NewAllocationPrice, nil] The allocation price to add to the plan.
          #
          #   @param plan_phase_order [Integer, nil] The phase to add this price to.
          #
          #   @param price [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, nil] The price to add to the plan

          # The price to add to the plan
          #
          # @see Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice#price
          module Price
            extend Orb::Internal::Type::Union

            discriminator :model_type

            variant :unit, -> { Orb::NewPlanUnitPrice }

            variant :package, -> { Orb::NewPlanPackagePrice }

            variant :matrix, -> { Orb::NewPlanMatrixPrice }

            variant :tiered, -> { Orb::NewPlanTieredPrice }

            variant :tiered_bps, -> { Orb::NewPlanTieredBPSPrice }

            variant :bps, -> { Orb::NewPlanBPSPrice }

            variant :bulk_bps, -> { Orb::NewPlanBulkBPSPrice }

            variant :bulk, -> { Orb::NewPlanBulkPrice }

            variant :threshold_total_amount, -> { Orb::NewPlanThresholdTotalAmountPrice }

            variant :tiered_package, -> { Orb::NewPlanTieredPackagePrice }

            variant :tiered_with_minimum, -> { Orb::NewPlanTieredWithMinimumPrice }

            variant :unit_with_percent, -> { Orb::NewPlanUnitWithPercentPrice }

            variant :package_with_allocation, -> { Orb::NewPlanPackageWithAllocationPrice }

            variant :tiered_with_proration, -> { Orb::NewPlanTierWithProrationPrice }

            variant :unit_with_proration, -> { Orb::NewPlanUnitWithProrationPrice }

            variant :grouped_allocation, -> { Orb::NewPlanGroupedAllocationPrice }

            variant :grouped_with_prorated_minimum, -> { Orb::NewPlanGroupedWithProratedMinimumPrice }

            variant :grouped_with_metered_minimum, -> { Orb::NewPlanGroupedWithMeteredMinimumPrice }

            variant :matrix_with_display_name, -> { Orb::NewPlanMatrixWithDisplayNamePrice }

            variant :bulk_with_proration, -> { Orb::NewPlanBulkWithProrationPrice }

            variant :grouped_tiered_package, -> { Orb::NewPlanGroupedTieredPackagePrice }

            variant :max_group_tiered_package, -> { Orb::NewPlanMaxGroupTieredPackagePrice }

            variant :scalable_matrix_with_unit_pricing, -> { Orb::NewPlanScalableMatrixWithUnitPricingPrice }

            variant :scalable_matrix_with_tiered_pricing, -> { Orb::NewPlanScalableMatrixWithTieredPricingPrice }

            variant :cumulative_grouped_bulk, -> { Orb::NewPlanCumulativeGroupedBulkPrice }

            variant :tiered_package_with_minimum, -> { Orb::NewPlanTieredPackageWithMinimumPrice }

            variant :matrix_with_allocation, -> { Orb::NewPlanMatrixWithAllocationPrice }

            variant :grouped_tiered, -> { Orb::NewPlanGroupedTieredPrice }

            # @!method self.variants
            #   @return [Array(Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice)]
          end
        end

        class RemoveAdjustment < Orb::Internal::Type::BaseModel
          # @!attribute adjustment_id
          #   The id of the adjustment to remove from on the plan.
          #
          #   @return [String]
          required :adjustment_id, String

          # @!attribute plan_phase_order
          #   The phase to remove this adjustment from.
          #
          #   @return [Integer, nil]
          optional :plan_phase_order, Integer, nil?: true

          # @!method initialize(adjustment_id:, plan_phase_order: nil)
          #   @param adjustment_id [String] The id of the adjustment to remove from on the plan.
          #
          #   @param plan_phase_order [Integer, nil] The phase to remove this adjustment from.
        end

        class RemovePrice < Orb::Internal::Type::BaseModel
          # @!attribute price_id
          #   The id of the price to remove from the plan.
          #
          #   @return [String]
          required :price_id, String

          # @!attribute plan_phase_order
          #   The phase to remove this price from.
          #
          #   @return [Integer, nil]
          optional :plan_phase_order, Integer, nil?: true

          # @!method initialize(price_id:, plan_phase_order: nil)
          #   @param price_id [String] The id of the price to remove from the plan.
          #
          #   @param plan_phase_order [Integer, nil] The phase to remove this price from.
        end

        class ReplaceAdjustment < Orb::Internal::Type::BaseModel
          # @!attribute adjustment
          #   The definition of a new adjustment to create and add to the plan.
          #
          #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum]
          required :adjustment,
                   union: -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment::Adjustment }

          # @!attribute replaces_adjustment_id
          #   The id of the adjustment on the plan to replace in the plan.
          #
          #   @return [String]
          required :replaces_adjustment_id, String

          # @!attribute plan_phase_order
          #   The phase to replace this adjustment from.
          #
          #   @return [Integer, nil]
          optional :plan_phase_order, Integer, nil?: true

          # @!method initialize(adjustment:, replaces_adjustment_id:, plan_phase_order: nil)
          #   @param adjustment [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum] The definition of a new adjustment to create and add to the plan.
          #
          #   @param replaces_adjustment_id [String] The id of the adjustment on the plan to replace in the plan.
          #
          #   @param plan_phase_order [Integer, nil] The phase to replace this adjustment from.

          # The definition of a new adjustment to create and add to the plan.
          #
          # @see Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment#adjustment
          module Adjustment
            extend Orb::Internal::Type::Union

            discriminator :adjustment_type

            variant :percentage_discount, -> { Orb::NewPercentageDiscount }

            variant :usage_discount, -> { Orb::NewUsageDiscount }

            variant :amount_discount, -> { Orb::NewAmountDiscount }

            variant :minimum, -> { Orb::NewMinimum }

            variant :maximum, -> { Orb::NewMaximum }

            # @!method self.variants
            #   @return [Array(Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum)]
          end
        end

        class ReplacePrice < Orb::Internal::Type::BaseModel
          # @!attribute replaces_price_id
          #   The id of the price on the plan to replace in the plan.
          #
          #   @return [String]
          required :replaces_price_id, String

          # @!attribute allocation_price
          #   The allocation price to add to the plan.
          #
          #   @return [Orb::Models::NewAllocationPrice, nil]
          optional :allocation_price, -> { Orb::NewAllocationPrice }, nil?: true

          # @!attribute plan_phase_order
          #   The phase to replace this price from.
          #
          #   @return [Integer, nil]
          optional :plan_phase_order, Integer, nil?: true

          # @!attribute price
          #   The price to add to the plan
          #
          #   @return [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, nil]
          optional :price,
                   union: -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price },
                   nil?: true

          # @!method initialize(replaces_price_id:, allocation_price: nil, plan_phase_order: nil, price: nil)
          #   @param replaces_price_id [String] The id of the price on the plan to replace in the plan.
          #
          #   @param allocation_price [Orb::Models::NewAllocationPrice, nil] The allocation price to add to the plan.
          #
          #   @param plan_phase_order [Integer, nil] The phase to replace this price from.
          #
          #   @param price [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, nil] The price to add to the plan

          # The price to add to the plan
          #
          # @see Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice#price
          module Price
            extend Orb::Internal::Type::Union

            discriminator :model_type

            variant :unit, -> { Orb::NewPlanUnitPrice }

            variant :package, -> { Orb::NewPlanPackagePrice }

            variant :matrix, -> { Orb::NewPlanMatrixPrice }

            variant :tiered, -> { Orb::NewPlanTieredPrice }

            variant :tiered_bps, -> { Orb::NewPlanTieredBPSPrice }

            variant :bps, -> { Orb::NewPlanBPSPrice }

            variant :bulk_bps, -> { Orb::NewPlanBulkBPSPrice }

            variant :bulk, -> { Orb::NewPlanBulkPrice }

            variant :threshold_total_amount, -> { Orb::NewPlanThresholdTotalAmountPrice }

            variant :tiered_package, -> { Orb::NewPlanTieredPackagePrice }

            variant :tiered_with_minimum, -> { Orb::NewPlanTieredWithMinimumPrice }

            variant :unit_with_percent, -> { Orb::NewPlanUnitWithPercentPrice }

            variant :package_with_allocation, -> { Orb::NewPlanPackageWithAllocationPrice }

            variant :tiered_with_proration, -> { Orb::NewPlanTierWithProrationPrice }

            variant :unit_with_proration, -> { Orb::NewPlanUnitWithProrationPrice }

            variant :grouped_allocation, -> { Orb::NewPlanGroupedAllocationPrice }

            variant :grouped_with_prorated_minimum, -> { Orb::NewPlanGroupedWithProratedMinimumPrice }

            variant :grouped_with_metered_minimum, -> { Orb::NewPlanGroupedWithMeteredMinimumPrice }

            variant :matrix_with_display_name, -> { Orb::NewPlanMatrixWithDisplayNamePrice }

            variant :bulk_with_proration, -> { Orb::NewPlanBulkWithProrationPrice }

            variant :grouped_tiered_package, -> { Orb::NewPlanGroupedTieredPackagePrice }

            variant :max_group_tiered_package, -> { Orb::NewPlanMaxGroupTieredPackagePrice }

            variant :scalable_matrix_with_unit_pricing, -> { Orb::NewPlanScalableMatrixWithUnitPricingPrice }

            variant :scalable_matrix_with_tiered_pricing, -> { Orb::NewPlanScalableMatrixWithTieredPricingPrice }

            variant :cumulative_grouped_bulk, -> { Orb::NewPlanCumulativeGroupedBulkPrice }

            variant :tiered_package_with_minimum, -> { Orb::NewPlanTieredPackageWithMinimumPrice }

            variant :matrix_with_allocation, -> { Orb::NewPlanMatrixWithAllocationPrice }

            variant :grouped_tiered, -> { Orb::NewPlanGroupedTieredPrice }

            # @!method self.variants
            #   @return [Array(Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice)]
          end
        end
      end
    end
  end
end
