# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#evaluate_multiple
    class PriceEvaluateMultipleParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute timeframe_end
      #   The exclusive upper bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_end, Time

      # @!attribute timeframe_start
      #   The inclusive lower bound for event timestamps
      #
      #   @return [Time]
      required :timeframe_start, Time

      # @!attribute customer_id
      #   The ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute external_customer_id
      #   The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute price_evaluations
      #   List of prices to evaluate (max 100)
      #
      #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation>, nil]
      optional :price_evaluations,
               -> { Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation] }

      # @!method initialize(timeframe_end:, timeframe_start:, customer_id: nil, external_customer_id: nil, price_evaluations: nil, request_options: {})
      #   @param timeframe_end [Time] The exclusive upper bound for event timestamps
      #
      #   @param timeframe_start [Time] The inclusive lower bound for event timestamps
      #
      #   @param customer_id [String, nil] The ID of the customer to which this evaluation is scoped.
      #
      #   @param external_customer_id [String, nil] The external customer ID of the customer to which this evaluation is scoped.
      #
      #   @param price_evaluations [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation>] List of prices to evaluate (max 100)
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class PriceEvaluation < Orb::Internal::Type::BaseModel
        # @!attribute external_price_id
        #   The external ID of a price to evaluate that exists in your Orb account.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute filter
        #   A boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #   filter the underlying billable metric
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute grouping_keys
        #   Properties (or
        #   [computed properties](/extensibility/advanced-metrics#computed-properties)) used
        #   to group the underlying billable metric
        #
        #   @return [Array<String>, nil]
        optional :grouping_keys, Orb::Internal::Type::ArrayOf[String]

        # @!attribute price
        #   New floating price request body params.
        #
        #   @return [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput, nil]
        optional :price, union: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price }, nil?: true

        # @!attribute price_id
        #   The ID of a price to evaluate that exists in your Orb account.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!method initialize(external_price_id: nil, filter: nil, grouping_keys: nil, price: nil, price_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation} for more details.
        #
        #   @param external_price_id [String, nil] The external ID of a price to evaluate that exists in your Orb account.
        #
        #   @param filter [String, nil] A boolean [computed property](/extensibility/advanced-metrics#computed-propertie
        #
        #   @param grouping_keys [Array<String>] Properties (or [computed properties](/extensibility/advanced-metrics#computed-pr
        #
        #   @param price [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput, nil] New floating price request body params.
        #
        #   @param price_id [String, nil] The ID of a price to evaluate that exists in your Orb account.

        # New floating price request body params.
        #
        # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::NewFloatingUnitPrice }

          variant :tiered, -> { Orb::NewFloatingTieredPrice }

          variant :bulk, -> { Orb::NewFloatingBulkPrice }

          variant :bulk_with_filters,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters }

          variant :package, -> { Orb::NewFloatingPackagePrice }

          variant :matrix, -> { Orb::NewFloatingMatrixPrice }

          variant :threshold_total_amount, -> { Orb::NewFloatingThresholdTotalAmountPrice }

          variant :tiered_package, -> { Orb::NewFloatingTieredPackagePrice }

          variant :tiered_with_minimum, -> { Orb::NewFloatingTieredWithMinimumPrice }

          variant :grouped_tiered, -> { Orb::NewFloatingGroupedTieredPrice }

          variant :tiered_package_with_minimum, -> { Orb::NewFloatingTieredPackageWithMinimumPrice }

          variant :package_with_allocation, -> { Orb::NewFloatingPackageWithAllocationPrice }

          variant :unit_with_percent, -> { Orb::NewFloatingUnitWithPercentPrice }

          variant :matrix_with_allocation, -> { Orb::NewFloatingMatrixWithAllocationPrice }

          variant :tiered_with_proration, -> { Orb::NewFloatingTieredWithProrationPrice }

          variant :unit_with_proration, -> { Orb::NewFloatingUnitWithProrationPrice }

          variant :grouped_allocation, -> { Orb::NewFloatingGroupedAllocationPrice }

          variant :bulk_with_proration, -> { Orb::NewFloatingBulkWithProrationPrice }

          variant :grouped_with_prorated_minimum, -> { Orb::NewFloatingGroupedWithProratedMinimumPrice }

          variant :grouped_with_metered_minimum, -> { Orb::NewFloatingGroupedWithMeteredMinimumPrice }

          variant :grouped_with_min_max_thresholds,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds }

          variant :matrix_with_display_name, -> { Orb::NewFloatingMatrixWithDisplayNamePrice }

          variant :grouped_tiered_package, -> { Orb::NewFloatingGroupedTieredPackagePrice }

          variant :max_group_tiered_package, -> { Orb::NewFloatingMaxGroupTieredPackagePrice }

          variant :scalable_matrix_with_unit_pricing, -> { Orb::NewFloatingScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing, -> { Orb::NewFloatingScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk, -> { Orb::NewFloatingCumulativeGroupedBulkPrice }

          variant :cumulative_grouped_allocation,
                  -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation }

          variant :minimum_composite, -> { Orb::NewFloatingMinimumCompositePrice }

          variant :percent, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent }

          variant :event_output, -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput }

          class BulkWithFilters < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_filters_config
            #   Configuration for bulk_with_filters pricing
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig]
            required :bulk_with_filters_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::Cadence]
            required :cadence,
                     enum: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :bulk_with_filters]
            required :model_type, const: :bulk_with_filters

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
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::ConversionRateConfig
                     },
                     nil?: true

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

            # @!method initialize(bulk_with_filters_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_with_filters)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters}
            #   for more details.
            #
            #   @param bulk_with_filters_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig] Configuration for bulk_with_filters pricing
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param model_type [Symbol, :bulk_with_filters] The pricing model type

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters#bulk_with_filters_config
            class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
              # @!attribute filters
              #   Property filters to apply (all must match)
              #
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig::Filter] }

              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>]
              required :tiers,
                       -> { Orb::Internal::Type::ArrayOf[Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig::Tier] }

              # @!method initialize(filters:, tiers:)
              #   Configuration for bulk_with_filters pricing
              #
              #   @param filters [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig::Filter>] Property filters to apply (all must match)
              #
              #   @param tiers [Array<Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters::BulkWithFiltersConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute property_key
                #   Event property key to filter on
                #
                #   @return [String]
                required :property_key, String

                # @!attribute property_value
                #   Event property value to match
                #
                #   @return [String]
                required :property_value, String

                # @!method initialize(property_key:, property_value:)
                #   Configuration for a single property filter
                #
                #   @param property_key [String] Event property key to filter on
                #
                #   @param property_value [String] Event property value to match
              end

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute tier_lower_bound
                #   The lower bound for this tier
                #
                #   @return [String, nil]
                optional :tier_lower_bound, String, nil?: true

                # @!method initialize(unit_amount:, tier_lower_bound: nil)
                #   Configuration for a single bulk pricing tier
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param tier_lower_bound [String, nil] The lower bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters#cadence
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

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence]
            required :cadence,
                     enum: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_min_max_thresholds_config
            #   Configuration for grouped_with_min_max_thresholds pricing
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig]
            required :grouped_with_min_max_thresholds_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
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
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::ConversionRateConfig
                     },
                     nil?: true

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

            # @!method initialize(cadence:, currency:, grouped_with_min_max_thresholds_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_min_max_thresholds)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param grouped_with_min_max_thresholds_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig] Configuration for grouped_with_min_max_thresholds pricing
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
            #   @param model_type [Symbol, :grouped_with_min_max_thresholds] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds#grouped_with_min_max_thresholds_config
            class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
              # @!attribute grouping_key
              #   The event property used to group before applying thresholds
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute maximum_charge
              #   The maximum amount to charge each group
              #
              #   @return [String]
              required :maximum_charge, String

              # @!attribute minimum_charge
              #   The minimum amount to charge each group, regardless of usage
              #
              #   @return [String]
              required :minimum_charge, String

              # @!attribute per_unit_rate
              #   The base price charged per group
              #
              #   @return [String]
              required :per_unit_rate, String

              # @!method initialize(grouping_key:, maximum_charge:, minimum_charge:, per_unit_rate:)
              #   Configuration for grouped_with_min_max_thresholds pricing
              #
              #   @param grouping_key [String] The event property used to group before applying thresholds
              #
              #   @param maximum_charge [String] The maximum amount to charge each group
              #
              #   @param minimum_charge [String] The minimum amount to charge each group, regardless of usage
              #
              #   @param per_unit_rate [String] The base price charged per group
            end
          end

          class CumulativeGroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation::Cadence]
            required :cadence,
                     enum: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation::Cadence }

            # @!attribute cumulative_grouped_allocation_config
            #   Configuration for cumulative_grouped_allocation pricing
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig]
            required :cumulative_grouped_allocation_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :cumulative_grouped_allocation]
            required :model_type, const: :cumulative_grouped_allocation

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
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation::ConversionRateConfig
                     },
                     nil?: true

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

            # @!method initialize(cadence:, cumulative_grouped_allocation_config:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :cumulative_grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_allocation_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig] Configuration for cumulative_grouped_allocation pricing
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param model_type [Symbol, :cumulative_grouped_allocation] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation#cumulative_grouped_allocation_config
            class CumulativeGroupedAllocationConfig < Orb::Internal::Type::BaseModel
              # @!attribute cumulative_allocation
              #   The overall allocation across all groups
              #
              #   @return [String]
              required :cumulative_allocation, String

              # @!attribute group_allocation
              #   The allocation per individual group
              #
              #   @return [String]
              required :group_allocation, String

              # @!attribute grouping_key
              #   The event property used to group usage before applying allocations
              #
              #   @return [String]
              required :grouping_key, String

              # @!attribute unit_amount
              #   The amount to charge for each unit outside of the allocation
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(cumulative_allocation:, group_allocation:, grouping_key:, unit_amount:)
              #   Configuration for cumulative_grouped_allocation pricing
              #
              #   @param cumulative_allocation [String] The overall allocation across all groups
              #
              #   @param group_allocation [String] The allocation per individual group
              #
              #   @param grouping_key [String] The event property used to group usage before applying allocations
              #
              #   @param unit_amount [String] The amount to charge for each unit outside of the allocation
            end
          end

          class Percent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent::Cadence]
            required :cadence, enum: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :percent]
            required :model_type, const: :percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute percent_config
            #   Configuration for percent pricing
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent::PercentConfig]
            required :percent_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent::PercentConfig }

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
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent::ConversionRateConfig
                     },
                     nil?: true

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

            # @!method initialize(cadence:, currency:, item_id:, name:, percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param percent_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent::PercentConfig] Configuration for percent pricing
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
            #   @param model_type [Symbol, :percent] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent#percent_config
            class PercentConfig < Orb::Internal::Type::BaseModel
              # @!attribute percent
              #   What percent of the component subtotals to charge
              #
              #   @return [Float]
              required :percent, Float

              # @!method initialize(percent:)
              #   Configuration for percent pricing
              #
              #   @param percent [Float] What percent of the component subtotals to charge
            end
          end

          class EventOutput < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::Cadence]
            required :cadence,
                     enum: -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute event_output_config
            #   Configuration for event_output pricing
            #
            #   @return [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::EventOutputConfig]
            required :event_output_config,
                     -> { Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::EventOutputConfig }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #   The pricing model type
            #
            #   @return [Symbol, :event_output]
            required :model_type, const: :event_output

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
                       Orb::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::ConversionRateConfig
                     },
                     nil?: true

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

            # @!method initialize(cadence:, currency:, event_output_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :event_output)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param event_output_config [Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::EventOutputConfig] Configuration for event_output pricing
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
            #   @param model_type [Symbol, :event_output] The pricing model type

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput#cadence
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

            # @see Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput#event_output_config
            class EventOutputConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_rating_key
              #   The key in the event data to extract the unit rate from.
              #
              #   @return [String]
              required :unit_rating_key, String

              # @!attribute default_unit_rate
              #   If provided, this amount will be used as the unit rate when an event does not
              #   have a value for the `unit_rating_key`. If not provided, events missing a unit
              #   rate will be ignored.
              #
              #   @return [String, nil]
              optional :default_unit_rate, String, nil?: true

              # @!attribute grouping_key
              #   An optional key in the event data to group by (e.g., event ID). All events will
              #   also be grouped by their unit rate.
              #
              #   @return [String, nil]
              optional :grouping_key, String, nil?: true

              # @!method initialize(unit_rating_key:, default_unit_rate: nil, grouping_key: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput::EventOutputConfig}
              #   for more details.
              #
              #   Configuration for event_output pricing
              #
              #   @param unit_rating_key [String] The key in the event data to extract the unit rate from.
              #
              #   @param default_unit_rate [String, nil] If provided, this amount will be used as the unit rate when an event does not ha
              #
              #   @param grouping_key [String, nil] An optional key in the event data to group by (e.g., event ID). All events will
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::CumulativeGroupedAllocation, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::Percent, Orb::Models::PriceEvaluateMultipleParams::PriceEvaluation::Price::EventOutput)]
        end
      end
    end
  end
end
