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
          #   @return [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, Orb::Models::NewPlanMinimumCompositePrice, nil]
          optional :price,
                   union: -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price },
                   nil?: true

          # @!method initialize(allocation_price: nil, plan_phase_order: nil, price: nil)
          #   @param allocation_price [Orb::Models::NewAllocationPrice, nil] The allocation price to add to the plan.
          #
          #   @param plan_phase_order [Integer, nil] The phase to add this price to.
          #
          #   @param price [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, Orb::Models::NewPlanMinimumCompositePrice, nil] The price to add to the plan

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

            variant :grouped_with_min_max_thresholds,
                    -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds }

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

            variant :minimum, -> { Orb::NewPlanMinimumCompositePrice }

            class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
              # @!attribute cadence
              #   The cadence to bill for this price on.
              #
              #   @return [Symbol, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence]
              required :cadence,
                       enum: -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence }

              # @!attribute grouped_with_min_max_thresholds_config
              #
              #   @return [Hash{Symbol=>Object}]
              required :grouped_with_min_max_thresholds_config,
                       Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

              # @!attribute item_id
              #   The id of the item the price will be associated with.
              #
              #   @return [String]
              required :item_id, String

              # @!attribute model_type
              #
              #   @return [Symbol, :grouped_with_min_max_thresholds]
              required :model_type, const: :grouped_with_min_max_thresholds

              # @!attribute name
              #   The name of the price.
              #
              #   @return [String]
              required :name, String

              # @!attribute billable_metric_id
              #   The id of the billable metric for the price. Only needed if the price is
              #   usage-based.
              #
              #   @return [String, nil]
              optional :billable_metric_id, String, nil?: true

              # @!attribute billed_in_advance
              #   If the Price represents a fixed cost, the price will be billed in-advance if
              #   this is true, and in-arrears if this is false.
              #
              #   @return [Boolean, nil]
              optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

              # @!attribute billing_cycle_configuration
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
              optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

              # @!attribute conversion_rate
              #   The per unit conversion rate of the price currency to the invoicing currency.
              #
              #   @return [Float, nil]
              optional :conversion_rate, Float, nil?: true

              # @!attribute conversion_rate_config
              #   The configuration for the rate of the price currency to the invoicing currency.
              #
              #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
              optional :conversion_rate_config,
                       union: -> {
                         Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::UnnamedTypeWithobjectParent0
                       },
                       nil?: true

              # @!attribute currency
              #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
              #   price is billed.
              #
              #   @return [String, nil]
              optional :currency, String, nil?: true

              # @!attribute dimensional_price_configuration
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
              optional :dimensional_price_configuration,
                       -> {
                         Orb::NewDimensionalPriceConfiguration
                       },
                       nil?: true

              # @!attribute external_price_id
              #   An alias for the price.
              #
              #   @return [String, nil]
              optional :external_price_id, String, nil?: true

              # @!attribute fixed_price_quantity
              #   If the Price represents a fixed cost, this represents the quantity of units
              #   applied.
              #
              #   @return [Float, nil]
              optional :fixed_price_quantity, Float, nil?: true

              # @!attribute invoice_grouping_key
              #   The property used to group this price on an invoice
              #
              #   @return [String, nil]
              optional :invoice_grouping_key, String, nil?: true

              # @!attribute invoicing_cycle_configuration
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
              optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

              # @!attribute metadata
              #   User-specified key/value pairs for the resource. Individual keys can be removed
              #   by setting the value to `null`, and the entire metadata mapping can be cleared
              #   by setting `metadata` to `null`.
              #
              #   @return [Hash{Symbol=>String, nil}, nil]
              optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

              # @!attribute reference_id
              #   A transient ID that can be used to reference this price when adding adjustments
              #   in the same API call.
              #
              #   @return [String, nil]
              optional :reference_id, String, nil?: true

              # @!method initialize(cadence:, grouped_with_min_max_thresholds_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_min_max_thresholds)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds}
              #   for more details.
              #
              #   @param cadence [Symbol, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
              #
              #   @param grouped_with_min_max_thresholds_config [Hash{Symbol=>Object}]
              #
              #   @param item_id [String] The id of the item the price will be associated with.
              #
              #   @param name [String] The name of the price.
              #
              #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
              #
              #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
              #
              #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
              #
              #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
              #
              #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
              #
              #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
              #
              #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
              #
              #   @param external_price_id [String, nil] An alias for the price.
              #
              #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
              #
              #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
              #
              #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
              #
              #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
              #
              #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
              #
              #   @param model_type [Symbol, :grouped_with_min_max_thresholds]

              # The cadence to bill for this price on.
              #
              # @see Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds#cadence
              module Cadence
                extend Orb::Internal::Type::Enum

                ANNUAL = :annual
                SEMI_ANNUAL = :semi_annual
                MONTHLY = :monthly
                QUARTERLY = :quarterly
                ONE_TIME = :one_time
                CUSTOM = :custom

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, Orb::Models::NewPlanMinimumCompositePrice)]
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
          #   @return [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, Orb::Models::NewPlanMinimumCompositePrice, nil]
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
          #   @param price [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, Orb::Models::NewPlanMinimumCompositePrice, nil] The price to add to the plan

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

            variant :grouped_with_min_max_thresholds,
                    -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds }

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

            variant :minimum, -> { Orb::NewPlanMinimumCompositePrice }

            class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
              # @!attribute cadence
              #   The cadence to bill for this price on.
              #
              #   @return [Symbol, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence]
              required :cadence,
                       enum: -> { Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence }

              # @!attribute grouped_with_min_max_thresholds_config
              #
              #   @return [Hash{Symbol=>Object}]
              required :grouped_with_min_max_thresholds_config,
                       Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

              # @!attribute item_id
              #   The id of the item the price will be associated with.
              #
              #   @return [String]
              required :item_id, String

              # @!attribute model_type
              #
              #   @return [Symbol, :grouped_with_min_max_thresholds]
              required :model_type, const: :grouped_with_min_max_thresholds

              # @!attribute name
              #   The name of the price.
              #
              #   @return [String]
              required :name, String

              # @!attribute billable_metric_id
              #   The id of the billable metric for the price. Only needed if the price is
              #   usage-based.
              #
              #   @return [String, nil]
              optional :billable_metric_id, String, nil?: true

              # @!attribute billed_in_advance
              #   If the Price represents a fixed cost, the price will be billed in-advance if
              #   this is true, and in-arrears if this is false.
              #
              #   @return [Boolean, nil]
              optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

              # @!attribute billing_cycle_configuration
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
              optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

              # @!attribute conversion_rate
              #   The per unit conversion rate of the price currency to the invoicing currency.
              #
              #   @return [Float, nil]
              optional :conversion_rate, Float, nil?: true

              # @!attribute conversion_rate_config
              #   The configuration for the rate of the price currency to the invoicing currency.
              #
              #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
              optional :conversion_rate_config,
                       union: -> {
                         Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::UnnamedTypeWithobjectParent1
                       },
                       nil?: true

              # @!attribute currency
              #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
              #   price is billed.
              #
              #   @return [String, nil]
              optional :currency, String, nil?: true

              # @!attribute dimensional_price_configuration
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
              optional :dimensional_price_configuration,
                       -> {
                         Orb::NewDimensionalPriceConfiguration
                       },
                       nil?: true

              # @!attribute external_price_id
              #   An alias for the price.
              #
              #   @return [String, nil]
              optional :external_price_id, String, nil?: true

              # @!attribute fixed_price_quantity
              #   If the Price represents a fixed cost, this represents the quantity of units
              #   applied.
              #
              #   @return [Float, nil]
              optional :fixed_price_quantity, Float, nil?: true

              # @!attribute invoice_grouping_key
              #   The property used to group this price on an invoice
              #
              #   @return [String, nil]
              optional :invoice_grouping_key, String, nil?: true

              # @!attribute invoicing_cycle_configuration
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
              optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

              # @!attribute metadata
              #   User-specified key/value pairs for the resource. Individual keys can be removed
              #   by setting the value to `null`, and the entire metadata mapping can be cleared
              #   by setting `metadata` to `null`.
              #
              #   @return [Hash{Symbol=>String, nil}, nil]
              optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

              # @!attribute reference_id
              #   A transient ID that can be used to reference this price when adding adjustments
              #   in the same API call.
              #
              #   @return [String, nil]
              optional :reference_id, String, nil?: true

              # @!method initialize(cadence:, grouped_with_min_max_thresholds_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, reference_id: nil, model_type: :grouped_with_min_max_thresholds)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds}
              #   for more details.
              #
              #   @param cadence [Symbol, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
              #
              #   @param grouped_with_min_max_thresholds_config [Hash{Symbol=>Object}]
              #
              #   @param item_id [String] The id of the item the price will be associated with.
              #
              #   @param name [String] The name of the price.
              #
              #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
              #
              #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
              #
              #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
              #
              #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
              #
              #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
              #
              #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
              #
              #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
              #
              #   @param external_price_id [String, nil] An alias for the price.
              #
              #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
              #
              #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
              #
              #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
              #
              #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
              #
              #   @param reference_id [String, nil] A transient ID that can be used to reference this price when adding adjustments
              #
              #   @param model_type [Symbol, :grouped_with_min_max_thresholds]

              # The cadence to bill for this price on.
              #
              # @see Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds#cadence
              module Cadence
                extend Orb::Internal::Type::Enum

                ANNUAL = :annual
                SEMI_ANNUAL = :semi_annual
                MONTHLY = :monthly
                QUARTERLY = :quarterly
                ONE_TIME = :one_time
                CUSTOM = :custom

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, Orb::Models::NewPlanMinimumCompositePrice)]
          end
        end
      end
    end
  end
end
