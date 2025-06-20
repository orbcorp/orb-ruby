# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Plans#create
    class PlanCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute currency
      #   An ISO 4217 currency string for invoices generated by subscriptions on this
      #   plan.
      #
      #   @return [String]
      required :currency, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute prices
      #   Prices for this plan. If the plan has phases, this includes prices across all
      #   phases of the plan.
      #
      #   @return [Array<Orb::Models::PlanCreateParams::Price>]
      required :prices, -> { Orb::Internal::Type::ArrayOf[Orb::PlanCreateParams::Price] }

      # @!attribute adjustments
      #   Adjustments for this plan. If the plan has phases, this includes adjustments
      #   across all phases of the plan.
      #
      #   @return [Array<Orb::Models::PlanCreateParams::Adjustment>, nil]
      optional :adjustments,
               -> {
                 Orb::Internal::Type::ArrayOf[Orb::PlanCreateParams::Adjustment]
               },
               nil?: true

      # @!attribute default_invoice_memo
      #   Free-form text which is available on the invoice PDF and the Orb invoice portal.
      #
      #   @return [String, nil]
      optional :default_invoice_memo, String, nil?: true

      # @!attribute external_plan_id
      #
      #   @return [String, nil]
      optional :external_plan_id, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute net_terms
      #   The net terms determines the difference between the invoice date and the issue
      #   date for the invoice. If you intend the invoice to be due on issue, set this
      #   to 0.
      #
      #   @return [Integer, nil]
      optional :net_terms, Integer, nil?: true

      # @!attribute plan_phases
      #   Configuration of pre-defined phases, each with their own prices and adjustments.
      #   Leave unspecified for plans with a single phase.
      #
      #   @return [Array<Orb::Models::PlanCreateParams::PlanPhase>, nil]
      optional :plan_phases, -> { Orb::Internal::Type::ArrayOf[Orb::PlanCreateParams::PlanPhase] }, nil?: true

      # @!attribute status
      #   The status of the plan to create (either active or draft). If not specified,
      #   this defaults to active.
      #
      #   @return [Symbol, Orb::Models::PlanCreateParams::Status, nil]
      optional :status, enum: -> { Orb::PlanCreateParams::Status }

      # @!method initialize(currency:, name:, prices:, adjustments: nil, default_invoice_memo: nil, external_plan_id: nil, metadata: nil, net_terms: nil, plan_phases: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PlanCreateParams} for more details.
      #
      #   @param currency [String] An ISO 4217 currency string for invoices generated by subscriptions on this plan
      #
      #   @param name [String]
      #
      #   @param prices [Array<Orb::Models::PlanCreateParams::Price>] Prices for this plan. If the plan has phases, this includes prices across all ph
      #
      #   @param adjustments [Array<Orb::Models::PlanCreateParams::Adjustment>, nil] Adjustments for this plan. If the plan has phases, this includes adjustments acr
      #
      #   @param default_invoice_memo [String, nil] Free-form text which is available on the invoice PDF and the Orb invoice portal.
      #
      #   @param external_plan_id [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param net_terms [Integer, nil] The net terms determines the difference between the invoice date and the issue d
      #
      #   @param plan_phases [Array<Orb::Models::PlanCreateParams::PlanPhase>, nil] Configuration of pre-defined phases, each with their own prices and adjustments.
      #
      #   @param status [Symbol, Orb::Models::PlanCreateParams::Status] The status of the plan to create (either active or draft). If not specified, thi
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class Price < Orb::Internal::Type::BaseModel
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
        optional :price, union: -> { Orb::PlanCreateParams::Price::Price }, nil?: true

        # @!method initialize(allocation_price: nil, plan_phase_order: nil, price: nil)
        #   @param allocation_price [Orb::Models::NewAllocationPrice, nil] The allocation price to add to the plan.
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this price to.
        #
        #   @param price [Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice, nil] The price to add to the plan

        # The price to add to the plan
        #
        # @see Orb::Models::PlanCreateParams::Price#price
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

          variant :scalable_matrix_with_tiered_pricing,
                  -> {
                    Orb::NewPlanScalableMatrixWithTieredPricingPrice
                  }

          variant :cumulative_grouped_bulk, -> { Orb::NewPlanCumulativeGroupedBulkPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewPlanTieredPackageWithMinimumPrice }

          variant :matrix_with_allocation, -> { Orb::NewPlanMatrixWithAllocationPrice }

          variant :grouped_tiered, -> { Orb::NewPlanGroupedTieredPrice }

          # @!method self.variants
          #   @return [Array(Orb::Models::NewPlanUnitPrice, Orb::Models::NewPlanPackagePrice, Orb::Models::NewPlanMatrixPrice, Orb::Models::NewPlanTieredPrice, Orb::Models::NewPlanTieredBPSPrice, Orb::Models::NewPlanBPSPrice, Orb::Models::NewPlanBulkBPSPrice, Orb::Models::NewPlanBulkPrice, Orb::Models::NewPlanThresholdTotalAmountPrice, Orb::Models::NewPlanTieredPackagePrice, Orb::Models::NewPlanTieredWithMinimumPrice, Orb::Models::NewPlanUnitWithPercentPrice, Orb::Models::NewPlanPackageWithAllocationPrice, Orb::Models::NewPlanTierWithProrationPrice, Orb::Models::NewPlanUnitWithProrationPrice, Orb::Models::NewPlanGroupedAllocationPrice, Orb::Models::NewPlanGroupedWithProratedMinimumPrice, Orb::Models::NewPlanGroupedWithMeteredMinimumPrice, Orb::Models::NewPlanMatrixWithDisplayNamePrice, Orb::Models::NewPlanBulkWithProrationPrice, Orb::Models::NewPlanGroupedTieredPackagePrice, Orb::Models::NewPlanMaxGroupTieredPackagePrice, Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice, Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice, Orb::Models::NewPlanCumulativeGroupedBulkPrice, Orb::Models::NewPlanTieredPackageWithMinimumPrice, Orb::Models::NewPlanMatrixWithAllocationPrice, Orb::Models::NewPlanGroupedTieredPrice)]
        end
      end

      class Adjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the plan.
        #
        #   @return [Orb::Models::NewPercentageDiscount, Orb::Models::NewUsageDiscount, Orb::Models::NewAmountDiscount, Orb::Models::NewMinimum, Orb::Models::NewMaximum]
        required :adjustment, union: -> { Orb::PlanCreateParams::Adjustment::Adjustment }

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
        # @see Orb::Models::PlanCreateParams::Adjustment#adjustment
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

      class PlanPhase < Orb::Internal::Type::BaseModel
        # @!attribute order
        #   Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
        #
        #   @return [Integer]
        required :order, Integer

        # @!attribute align_billing_with_phase_start_date
        #   Align billing cycle day with phase start date.
        #
        #   @return [Boolean, nil]
        optional :align_billing_with_phase_start_date, Orb::Internal::Type::Boolean, nil?: true

        # @!attribute duration
        #   How many terms of length `duration_unit` this phase is active for. If null, this
        #   phase is evergreen and active indefinitely
        #
        #   @return [Integer, nil]
        optional :duration, Integer, nil?: true

        # @!attribute duration_unit
        #
        #   @return [Symbol, Orb::Models::PlanCreateParams::PlanPhase::DurationUnit, nil]
        optional :duration_unit, enum: -> { Orb::PlanCreateParams::PlanPhase::DurationUnit }, nil?: true

        # @!method initialize(order:, align_billing_with_phase_start_date: nil, duration: nil, duration_unit: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PlanCreateParams::PlanPhase} for more details.
        #
        #   @param order [Integer] Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
        #
        #   @param align_billing_with_phase_start_date [Boolean, nil] Align billing cycle day with phase start date.
        #
        #   @param duration [Integer, nil] How many terms of length `duration_unit` this phase is active for. If null, this
        #
        #   @param duration_unit [Symbol, Orb::Models::PlanCreateParams::PlanPhase::DurationUnit, nil]

        # @see Orb::Models::PlanCreateParams::PlanPhase#duration_unit
        module DurationUnit
          extend Orb::Internal::Type::Enum

          DAILY = :daily
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The status of the plan to create (either active or draft). If not specified,
      # this defaults to active.
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        DRAFT = :draft

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
