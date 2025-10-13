# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#create
    class PriceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::PriceCreateParams::Cadence]
      required :cadence, enum: -> { Orb::PriceCreateParams::Cadence }

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
      #   @return [Symbol, Orb::Models::PriceCreateParams::ModelType]
      required :model_type, enum: -> { Orb::PriceCreateParams::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute unit_config
      #   Configuration for unit pricing
      #
      #   @return [Orb::Models::UnitConfig]
      required :unit_config, -> { Orb::UnitConfig }

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
      optional :conversion_rate_config, union: -> { Orb::PriceCreateParams::ConversionRateConfig }, nil?: true

      # @!attribute dimensional_price_configuration
      #   For dimensional price: specifies a price group and dimension values
      #
      #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
      optional :dimensional_price_configuration, -> { Orb::NewDimensionalPriceConfiguration }, nil?: true

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

      # @!attribute tiered_config
      #   Configuration for tiered pricing
      #
      #   @return [Orb::Models::TieredConfig]
      required :tiered_config, -> { Orb::TieredConfig }

      # @!attribute bulk_config
      #   Configuration for bulk pricing
      #
      #   @return [Orb::Models::BulkConfig]
      required :bulk_config, -> { Orb::BulkConfig }

      # @!attribute bulk_with_filters_config
      #   Configuration for bulk_with_filters pricing
      #
      #   @return [Orb::Models::PriceCreateParams::BulkWithFiltersConfig]
      required :bulk_with_filters_config, -> { Orb::PriceCreateParams::BulkWithFiltersConfig }

      # @!attribute package_config
      #   Configuration for package pricing
      #
      #   @return [Orb::Models::PackageConfig]
      required :package_config, -> { Orb::PackageConfig }

      # @!attribute matrix_config
      #   Configuration for matrix pricing
      #
      #   @return [Orb::Models::MatrixConfig]
      required :matrix_config, -> { Orb::MatrixConfig }

      # @!attribute threshold_total_amount_config
      #   Configuration for threshold_total_amount pricing
      #
      #   @return [Orb::Models::PriceCreateParams::ThresholdTotalAmountConfig]
      required :threshold_total_amount_config, -> { Orb::PriceCreateParams::ThresholdTotalAmountConfig }

      # @!attribute tiered_package_config
      #   Configuration for tiered_package pricing
      #
      #   @return [Orb::Models::PriceCreateParams::TieredPackageConfig]
      required :tiered_package_config, -> { Orb::PriceCreateParams::TieredPackageConfig }

      # @!attribute tiered_with_minimum_config
      #   Configuration for tiered_with_minimum pricing
      #
      #   @return [Orb::Models::PriceCreateParams::TieredWithMinimumConfig]
      required :tiered_with_minimum_config, -> { Orb::PriceCreateParams::TieredWithMinimumConfig }

      # @!attribute grouped_tiered_config
      #   Configuration for grouped_tiered pricing
      #
      #   @return [Orb::Models::PriceCreateParams::GroupedTieredConfig]
      required :grouped_tiered_config, -> { Orb::PriceCreateParams::GroupedTieredConfig }

      # @!attribute tiered_package_with_minimum_config
      #   Configuration for tiered_package_with_minimum pricing
      #
      #   @return [Orb::Models::PriceCreateParams::TieredPackageWithMinimumConfig]
      required :tiered_package_with_minimum_config,
               -> { Orb::PriceCreateParams::TieredPackageWithMinimumConfig }

      # @!attribute package_with_allocation_config
      #   Configuration for package_with_allocation pricing
      #
      #   @return [Orb::Models::PriceCreateParams::PackageWithAllocationConfig]
      required :package_with_allocation_config, -> { Orb::PriceCreateParams::PackageWithAllocationConfig }

      # @!attribute unit_with_percent_config
      #   Configuration for unit_with_percent pricing
      #
      #   @return [Orb::Models::PriceCreateParams::UnitWithPercentConfig]
      required :unit_with_percent_config, -> { Orb::PriceCreateParams::UnitWithPercentConfig }

      # @!attribute matrix_with_allocation_config
      #   Configuration for matrix_with_allocation pricing
      #
      #   @return [Orb::Models::MatrixWithAllocationConfig]
      required :matrix_with_allocation_config, -> { Orb::MatrixWithAllocationConfig }

      # @!attribute tiered_with_proration_config
      #   Configuration for tiered_with_proration pricing
      #
      #   @return [Orb::Models::PriceCreateParams::TieredWithProrationConfig]
      required :tiered_with_proration_config, -> { Orb::PriceCreateParams::TieredWithProrationConfig }

      # @!attribute unit_with_proration_config
      #   Configuration for unit_with_proration pricing
      #
      #   @return [Orb::Models::PriceCreateParams::UnitWithProrationConfig]
      required :unit_with_proration_config, -> { Orb::PriceCreateParams::UnitWithProrationConfig }

      # @!attribute grouped_allocation_config
      #   Configuration for grouped_allocation pricing
      #
      #   @return [Orb::Models::PriceCreateParams::GroupedAllocationConfig]
      required :grouped_allocation_config, -> { Orb::PriceCreateParams::GroupedAllocationConfig }

      # @!attribute bulk_with_proration_config
      #   Configuration for bulk_with_proration pricing
      #
      #   @return [Orb::Models::PriceCreateParams::BulkWithProrationConfig]
      required :bulk_with_proration_config, -> { Orb::PriceCreateParams::BulkWithProrationConfig }

      # @!attribute grouped_with_prorated_minimum_config
      #   Configuration for grouped_with_prorated_minimum pricing
      #
      #   @return [Orb::Models::PriceCreateParams::GroupedWithProratedMinimumConfig]
      required :grouped_with_prorated_minimum_config,
               -> { Orb::PriceCreateParams::GroupedWithProratedMinimumConfig }

      # @!attribute grouped_with_metered_minimum_config
      #   Configuration for grouped_with_metered_minimum pricing
      #
      #   @return [Orb::Models::PriceCreateParams::GroupedWithMeteredMinimumConfig]
      required :grouped_with_metered_minimum_config,
               -> { Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig }

      # @!attribute grouped_with_min_max_thresholds_config
      #   Configuration for grouped_with_min_max_thresholds pricing
      #
      #   @return [Orb::Models::PriceCreateParams::GroupedWithMinMaxThresholdsConfig]
      required :grouped_with_min_max_thresholds_config,
               -> { Orb::PriceCreateParams::GroupedWithMinMaxThresholdsConfig }

      # @!attribute matrix_with_display_name_config
      #   Configuration for matrix_with_display_name pricing
      #
      #   @return [Orb::Models::PriceCreateParams::MatrixWithDisplayNameConfig]
      required :matrix_with_display_name_config, -> { Orb::PriceCreateParams::MatrixWithDisplayNameConfig }

      # @!attribute grouped_tiered_package_config
      #   Configuration for grouped_tiered_package pricing
      #
      #   @return [Orb::Models::PriceCreateParams::GroupedTieredPackageConfig]
      required :grouped_tiered_package_config, -> { Orb::PriceCreateParams::GroupedTieredPackageConfig }

      # @!attribute max_group_tiered_package_config
      #   Configuration for max_group_tiered_package pricing
      #
      #   @return [Orb::Models::PriceCreateParams::MaxGroupTieredPackageConfig]
      required :max_group_tiered_package_config, -> { Orb::PriceCreateParams::MaxGroupTieredPackageConfig }

      # @!attribute scalable_matrix_with_unit_pricing_config
      #   Configuration for scalable_matrix_with_unit_pricing pricing
      #
      #   @return [Orb::Models::PriceCreateParams::ScalableMatrixWithUnitPricingConfig]
      required :scalable_matrix_with_unit_pricing_config,
               -> { Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig }

      # @!attribute scalable_matrix_with_tiered_pricing_config
      #   Configuration for scalable_matrix_with_tiered_pricing pricing
      #
      #   @return [Orb::Models::PriceCreateParams::ScalableMatrixWithTieredPricingConfig]
      required :scalable_matrix_with_tiered_pricing_config,
               -> { Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig }

      # @!attribute cumulative_grouped_bulk_config
      #   Configuration for cumulative_grouped_bulk pricing
      #
      #   @return [Orb::Models::PriceCreateParams::CumulativeGroupedBulkConfig]
      required :cumulative_grouped_bulk_config, -> { Orb::PriceCreateParams::CumulativeGroupedBulkConfig }

      # @!attribute minimum_config
      #   Configuration for minimum pricing
      #
      #   @return [Orb::Models::PriceCreateParams::MinimumConfig]
      required :minimum_config, -> { Orb::PriceCreateParams::MinimumConfig }

      # @!attribute percent_config
      #   Configuration for percent pricing
      #
      #   @return [Orb::Models::PriceCreateParams::PercentConfig]
      required :percent_config, -> { Orb::PriceCreateParams::PercentConfig }

      # @!attribute event_output_config
      #   Configuration for event_output pricing
      #
      #   @return [Orb::Models::PriceCreateParams::EventOutputConfig]
      required :event_output_config, -> { Orb::PriceCreateParams::EventOutputConfig }

      # @!method initialize(cadence:, currency:, item_id:, model_type:, name:, unit_config:, tiered_config:, bulk_config:, bulk_with_filters_config:, package_config:, matrix_config:, threshold_total_amount_config:, tiered_package_config:, tiered_with_minimum_config:, grouped_tiered_config:, tiered_package_with_minimum_config:, package_with_allocation_config:, unit_with_percent_config:, matrix_with_allocation_config:, tiered_with_proration_config:, unit_with_proration_config:, grouped_allocation_config:, bulk_with_proration_config:, grouped_with_prorated_minimum_config:, grouped_with_metered_minimum_config:, grouped_with_min_max_thresholds_config:, matrix_with_display_name_config:, grouped_tiered_package_config:, max_group_tiered_package_config:, scalable_matrix_with_unit_pricing_config:, scalable_matrix_with_tiered_pricing_config:, cumulative_grouped_bulk_config:, minimum_config:, percent_config:, event_output_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PriceCreateParams} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Cadence] The cadence to bill for this price on.
      #
      #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::PriceCreateParams::ModelType] The pricing model type
      #
      #   @param name [String] The name of the price.
      #
      #   @param unit_config [Orb::Models::UnitConfig] Configuration for unit pricing
      #
      #   @param tiered_config [Orb::Models::TieredConfig] Configuration for tiered pricing
      #
      #   @param bulk_config [Orb::Models::BulkConfig] Configuration for bulk pricing
      #
      #   @param bulk_with_filters_config [Orb::Models::PriceCreateParams::BulkWithFiltersConfig] Configuration for bulk_with_filters pricing
      #
      #   @param package_config [Orb::Models::PackageConfig] Configuration for package pricing
      #
      #   @param matrix_config [Orb::Models::MatrixConfig] Configuration for matrix pricing
      #
      #   @param threshold_total_amount_config [Orb::Models::PriceCreateParams::ThresholdTotalAmountConfig] Configuration for threshold_total_amount pricing
      #
      #   @param tiered_package_config [Orb::Models::PriceCreateParams::TieredPackageConfig] Configuration for tiered_package pricing
      #
      #   @param tiered_with_minimum_config [Orb::Models::PriceCreateParams::TieredWithMinimumConfig] Configuration for tiered_with_minimum pricing
      #
      #   @param grouped_tiered_config [Orb::Models::PriceCreateParams::GroupedTieredConfig] Configuration for grouped_tiered pricing
      #
      #   @param tiered_package_with_minimum_config [Orb::Models::PriceCreateParams::TieredPackageWithMinimumConfig] Configuration for tiered_package_with_minimum pricing
      #
      #   @param package_with_allocation_config [Orb::Models::PriceCreateParams::PackageWithAllocationConfig] Configuration for package_with_allocation pricing
      #
      #   @param unit_with_percent_config [Orb::Models::PriceCreateParams::UnitWithPercentConfig] Configuration for unit_with_percent pricing
      #
      #   @param matrix_with_allocation_config [Orb::Models::MatrixWithAllocationConfig] Configuration for matrix_with_allocation pricing
      #
      #   @param tiered_with_proration_config [Orb::Models::PriceCreateParams::TieredWithProrationConfig] Configuration for tiered_with_proration pricing
      #
      #   @param unit_with_proration_config [Orb::Models::PriceCreateParams::UnitWithProrationConfig] Configuration for unit_with_proration pricing
      #
      #   @param grouped_allocation_config [Orb::Models::PriceCreateParams::GroupedAllocationConfig] Configuration for grouped_allocation pricing
      #
      #   @param bulk_with_proration_config [Orb::Models::PriceCreateParams::BulkWithProrationConfig] Configuration for bulk_with_proration pricing
      #
      #   @param grouped_with_prorated_minimum_config [Orb::Models::PriceCreateParams::GroupedWithProratedMinimumConfig] Configuration for grouped_with_prorated_minimum pricing
      #
      #   @param grouped_with_metered_minimum_config [Orb::Models::PriceCreateParams::GroupedWithMeteredMinimumConfig] Configuration for grouped_with_metered_minimum pricing
      #
      #   @param grouped_with_min_max_thresholds_config [Orb::Models::PriceCreateParams::GroupedWithMinMaxThresholdsConfig] Configuration for grouped_with_min_max_thresholds pricing
      #
      #   @param matrix_with_display_name_config [Orb::Models::PriceCreateParams::MatrixWithDisplayNameConfig] Configuration for matrix_with_display_name pricing
      #
      #   @param grouped_tiered_package_config [Orb::Models::PriceCreateParams::GroupedTieredPackageConfig] Configuration for grouped_tiered_package pricing
      #
      #   @param max_group_tiered_package_config [Orb::Models::PriceCreateParams::MaxGroupTieredPackageConfig] Configuration for max_group_tiered_package pricing
      #
      #   @param scalable_matrix_with_unit_pricing_config [Orb::Models::PriceCreateParams::ScalableMatrixWithUnitPricingConfig] Configuration for scalable_matrix_with_unit_pricing pricing
      #
      #   @param scalable_matrix_with_tiered_pricing_config [Orb::Models::PriceCreateParams::ScalableMatrixWithTieredPricingConfig] Configuration for scalable_matrix_with_tiered_pricing pricing
      #
      #   @param cumulative_grouped_bulk_config [Orb::Models::PriceCreateParams::CumulativeGroupedBulkConfig] Configuration for cumulative_grouped_bulk pricing
      #
      #   @param minimum_config [Orb::Models::PriceCreateParams::MinimumConfig] Configuration for minimum pricing
      #
      #   @param percent_config [Orb::Models::PriceCreateParams::PercentConfig] Configuration for percent pricing
      #
      #   @param event_output_config [Orb::Models::PriceCreateParams::EventOutputConfig] Configuration for event_output pricing
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
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The cadence to bill for this price on.
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

      # The pricing model type
      module ModelType
        extend Orb::Internal::Type::Enum

        EVENT_OUTPUT = :event_output

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
        # @!attribute filters
        #   Property filters to apply (all must match)
        #
        #   @return [Array<Orb::Models::PriceCreateParams::BulkWithFiltersConfig::Filter>]
        required :filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::BulkWithFiltersConfig::Filter] }

        # @!attribute tiers
        #   Bulk tiers for rating based on total usage volume
        #
        #   @return [Array<Orb::Models::PriceCreateParams::BulkWithFiltersConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::BulkWithFiltersConfig::Tier] }

        # @!method initialize(filters:, tiers:)
        #   Configuration for bulk_with_filters pricing
        #
        #   @param filters [Array<Orb::Models::PriceCreateParams::BulkWithFiltersConfig::Filter>] Property filters to apply (all must match)
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::BulkWithFiltersConfig::Tier>] Bulk tiers for rating based on total usage volume

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

      class ThresholdTotalAmountConfig < Orb::Internal::Type::BaseModel
        # @!attribute consumption_table
        #   When the quantity consumed passes a provided threshold, the configured total
        #   will be charged
        #
        #   @return [Array<Orb::Models::PriceCreateParams::ThresholdTotalAmountConfig::ConsumptionTable>]
        required :consumption_table,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::ThresholdTotalAmountConfig::ConsumptionTable] }

        # @!attribute prorate
        #   If true, the unit price will be prorated to the billing period
        #
        #   @return [Boolean, nil]
        optional :prorate, Orb::Internal::Type::Boolean, nil?: true

        # @!method initialize(consumption_table:, prorate: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::ThresholdTotalAmountConfig} for more details.
        #
        #   Configuration for threshold_total_amount pricing
        #
        #   @param consumption_table [Array<Orb::Models::PriceCreateParams::ThresholdTotalAmountConfig::ConsumptionTable>] When the quantity consumed passes a provided threshold, the configured total wil
        #
        #   @param prorate [Boolean, nil] If true, the unit price will be prorated to the billing period

        class ConsumptionTable < Orb::Internal::Type::BaseModel
          # @!attribute threshold
          #   Quantity threshold
          #
          #   @return [String]
          required :threshold, String

          # @!attribute total_amount
          #   Total amount for this threshold
          #
          #   @return [String]
          required :total_amount, String

          # @!method initialize(threshold:, total_amount:)
          #   Configuration for a single threshold
          #
          #   @param threshold [String] Quantity threshold
          #
          #   @param total_amount [String] Total amount for this threshold
        end
      end

      class TieredPackageConfig < Orb::Internal::Type::BaseModel
        # @!attribute package_size
        #   Package size
        #
        #   @return [String]
        required :package_size, String

        # @!attribute tiers
        #   Apply tiered pricing after rounding up the quantity to the package size. Tiers
        #   are defined using exclusive lower bounds. The tier bounds are defined based on
        #   the total quantity rather than the number of packages, so they must be multiples
        #   of the package size.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredPackageConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::TieredPackageConfig::Tier] }

        # @!method initialize(package_size:, tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::TieredPackageConfig} for more details.
        #
        #   Configuration for tiered_package pricing
        #
        #   @param package_size [String] Package size
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::TieredPackageConfig::Tier>] Apply tiered pricing after rounding up the quantity to the package size. Tiers a

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute per_unit
          #   Price per package
          #
          #   @return [String]
          required :per_unit, String

          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!method initialize(per_unit:, tier_lower_bound:)
          #   Configuration for a single tier with business logic
          #
          #   @param per_unit [String] Price per package
          #
          #   @param tier_lower_bound [String] Tier lower bound
        end
      end

      class TieredWithMinimumConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
        #   defined using exclusive lower bounds.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredWithMinimumConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::TieredWithMinimumConfig::Tier] }

        # @!attribute hide_zero_amount_tiers
        #   If true, tiers with an accrued amount of 0 will not be included in the rating.
        #
        #   @return [Boolean, nil]
        optional :hide_zero_amount_tiers, Orb::Internal::Type::Boolean

        # @!attribute prorate
        #   If true, the unit price will be prorated to the billing period
        #
        #   @return [Boolean, nil]
        optional :prorate, Orb::Internal::Type::Boolean

        # @!method initialize(tiers:, hide_zero_amount_tiers: nil, prorate: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::TieredWithMinimumConfig} for more details.
        #
        #   Configuration for tiered_with_minimum pricing
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::TieredWithMinimumConfig::Tier>] Tiered pricing with a minimum amount dependent on the volume tier. Tiers are def
        #
        #   @param hide_zero_amount_tiers [Boolean] If true, tiers with an accrued amount of 0 will not be included in the rating.
        #
        #   @param prorate [Boolean] If true, the unit price will be prorated to the billing period

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute minimum_amount
          #   Minimum amount
          #
          #   @return [String]
          required :minimum_amount, String

          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Per unit amount
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(minimum_amount:, tier_lower_bound:, unit_amount:)
          #   Configuration for a single tier
          #
          #   @param minimum_amount [String] Minimum amount
          #
          #   @param tier_lower_bound [String] Tier lower bound
          #
          #   @param unit_amount [String] Per unit amount
        end
      end

      class GroupedTieredConfig < Orb::Internal::Type::BaseModel
        # @!attribute grouping_key
        #   The billable metric property used to group before tiering
        #
        #   @return [String]
        required :grouping_key, String

        # @!attribute tiers
        #   Apply tiered pricing to each segment generated after grouping with the provided
        #   key
        #
        #   @return [Array<Orb::Models::PriceCreateParams::GroupedTieredConfig::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::GroupedTieredConfig::Tier] }

        # @!method initialize(grouping_key:, tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::GroupedTieredConfig} for more details.
        #
        #   Configuration for grouped_tiered pricing
        #
        #   @param grouping_key [String] The billable metric property used to group before tiering
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::GroupedTieredConfig::Tier>] Apply tiered pricing to each segment generated after grouping with the provided

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Per unit amount
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(tier_lower_bound:, unit_amount:)
          #   Configuration for a single tier
          #
          #   @param tier_lower_bound [String] Tier lower bound
          #
          #   @param unit_amount [String] Per unit amount
        end
      end

      class TieredPackageWithMinimumConfig < Orb::Internal::Type::BaseModel
        # @!attribute package_size
        #   Package size
        #
        #   @return [Float]
        required :package_size, Float

        # @!attribute tiers
        #   Apply tiered pricing after rounding up the quantity to the package size. Tiers
        #   are defined using exclusive lower bounds.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredPackageWithMinimumConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::TieredPackageWithMinimumConfig::Tier] }

        # @!method initialize(package_size:, tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::TieredPackageWithMinimumConfig} for more
        #   details.
        #
        #   Configuration for tiered_package_with_minimum pricing
        #
        #   @param package_size [Float] Package size
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::TieredPackageWithMinimumConfig::Tier>] Apply tiered pricing after rounding up the quantity to the package size. Tiers a

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute minimum_amount
          #   Minimum amount
          #
          #   @return [String]
          required :minimum_amount, String

          # @!attribute per_unit
          #   Price per package
          #
          #   @return [String]
          required :per_unit, String

          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!method initialize(minimum_amount:, per_unit:, tier_lower_bound:)
          #   Configuration for a single tier
          #
          #   @param minimum_amount [String] Minimum amount
          #
          #   @param per_unit [String] Price per package
          #
          #   @param tier_lower_bound [String] Tier lower bound
        end
      end

      class PackageWithAllocationConfig < Orb::Internal::Type::BaseModel
        # @!attribute allocation
        #   Usage allocation
        #
        #   @return [String]
        required :allocation, String

        # @!attribute package_amount
        #   Price per package
        #
        #   @return [String]
        required :package_amount, String

        # @!attribute package_size
        #   Package size
        #
        #   @return [String]
        required :package_size, String

        # @!method initialize(allocation:, package_amount:, package_size:)
        #   Configuration for package_with_allocation pricing
        #
        #   @param allocation [String] Usage allocation
        #
        #   @param package_amount [String] Price per package
        #
        #   @param package_size [String] Package size
      end

      class UnitWithPercentConfig < Orb::Internal::Type::BaseModel
        # @!attribute percent
        #   What percent, out of 100, of the calculated total to charge
        #
        #   @return [String]
        required :percent, String

        # @!attribute unit_amount
        #   Rate per unit of usage
        #
        #   @return [String]
        required :unit_amount, String

        # @!method initialize(percent:, unit_amount:)
        #   Configuration for unit_with_percent pricing
        #
        #   @param percent [String] What percent, out of 100, of the calculated total to charge
        #
        #   @param unit_amount [String] Rate per unit of usage
      end

      class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Tiers for rating based on total usage quantities into the specified tier with
        #   proration
        #
        #   @return [Array<Orb::Models::PriceCreateParams::TieredWithProrationConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::TieredWithProrationConfig::Tier] }

        # @!method initialize(tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::TieredWithProrationConfig} for more details.
        #
        #   Configuration for tiered_with_proration pricing
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::TieredWithProrationConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier with pr

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute tier_lower_bound
          #   Inclusive tier starting value
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Amount per unit
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(tier_lower_bound:, unit_amount:)
          #   Configuration for a single tiered with proration tier
          #
          #   @param tier_lower_bound [String] Inclusive tier starting value
          #
          #   @param unit_amount [String] Amount per unit
        end
      end

      class UnitWithProrationConfig < Orb::Internal::Type::BaseModel
        # @!attribute unit_amount
        #   Rate per unit of usage
        #
        #   @return [String]
        required :unit_amount, String

        # @!method initialize(unit_amount:)
        #   Configuration for unit_with_proration pricing
        #
        #   @param unit_amount [String] Rate per unit of usage
      end

      class GroupedAllocationConfig < Orb::Internal::Type::BaseModel
        # @!attribute allocation
        #   Usage allocation per group
        #
        #   @return [String]
        required :allocation, String

        # @!attribute grouping_key
        #   How to determine the groups that should each be allocated some quantity
        #
        #   @return [String]
        required :grouping_key, String

        # @!attribute overage_unit_rate
        #   Unit rate for post-allocation
        #
        #   @return [String]
        required :overage_unit_rate, String

        # @!method initialize(allocation:, grouping_key:, overage_unit_rate:)
        #   Configuration for grouped_allocation pricing
        #
        #   @param allocation [String] Usage allocation per group
        #
        #   @param grouping_key [String] How to determine the groups that should each be allocated some quantity
        #
        #   @param overage_unit_rate [String] Unit rate for post-allocation
      end

      class BulkWithProrationConfig < Orb::Internal::Type::BaseModel
        # @!attribute tiers
        #   Bulk tiers for rating based on total usage volume
        #
        #   @return [Array<Orb::Models::PriceCreateParams::BulkWithProrationConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::BulkWithProrationConfig::Tier] }

        # @!method initialize(tiers:)
        #   Configuration for bulk_with_proration pricing
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::BulkWithProrationConfig::Tier>] Bulk tiers for rating based on total usage volume

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute unit_amount
          #   Cost per unit
          #
          #   @return [String]
          required :unit_amount, String

          # @!attribute tier_lower_bound
          #   The lower bound for this tier
          #
          #   @return [String, nil]
          optional :tier_lower_bound, String, nil?: true

          # @!method initialize(unit_amount:, tier_lower_bound: nil)
          #   Configuration for a single bulk pricing tier with proration
          #
          #   @param unit_amount [String] Cost per unit
          #
          #   @param tier_lower_bound [String, nil] The lower bound for this tier
        end
      end

      class GroupedWithProratedMinimumConfig < Orb::Internal::Type::BaseModel
        # @!attribute grouping_key
        #   How to determine the groups that should each have a minimum
        #
        #   @return [String]
        required :grouping_key, String

        # @!attribute minimum
        #   The minimum amount to charge per group
        #
        #   @return [String]
        required :minimum, String

        # @!attribute unit_rate
        #   The amount to charge per unit
        #
        #   @return [String]
        required :unit_rate, String

        # @!method initialize(grouping_key:, minimum:, unit_rate:)
        #   Configuration for grouped_with_prorated_minimum pricing
        #
        #   @param grouping_key [String] How to determine the groups that should each have a minimum
        #
        #   @param minimum [String] The minimum amount to charge per group
        #
        #   @param unit_rate [String] The amount to charge per unit
      end

      class GroupedWithMeteredMinimumConfig < Orb::Internal::Type::BaseModel
        # @!attribute grouping_key
        #   Used to partition the usage into groups. The minimum amount is applied to each
        #   group.
        #
        #   @return [String]
        required :grouping_key, String

        # @!attribute minimum_unit_amount
        #   The minimum amount to charge per group per unit
        #
        #   @return [String]
        required :minimum_unit_amount, String

        # @!attribute pricing_key
        #   Used to determine the unit rate
        #
        #   @return [String]
        required :pricing_key, String

        # @!attribute scaling_factors
        #   Scale the unit rates by the scaling factor.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::GroupedWithMeteredMinimumConfig::ScalingFactor>]
        required :scaling_factors,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::ScalingFactor] }

        # @!attribute scaling_key
        #   Used to determine the unit rate scaling factor
        #
        #   @return [String]
        required :scaling_key, String

        # @!attribute unit_amounts
        #   Apply per unit pricing to each pricing value. The minimum amount is applied any
        #   unmatched usage.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::GroupedWithMeteredMinimumConfig::UnitAmount>]
        required :unit_amounts,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::UnitAmount] }

        # @!method initialize(grouping_key:, minimum_unit_amount:, pricing_key:, scaling_factors:, scaling_key:, unit_amounts:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::GroupedWithMeteredMinimumConfig} for more
        #   details.
        #
        #   Configuration for grouped_with_metered_minimum pricing
        #
        #   @param grouping_key [String] Used to partition the usage into groups. The minimum amount is applied to each g
        #
        #   @param minimum_unit_amount [String] The minimum amount to charge per group per unit
        #
        #   @param pricing_key [String] Used to determine the unit rate
        #
        #   @param scaling_factors [Array<Orb::Models::PriceCreateParams::GroupedWithMeteredMinimumConfig::ScalingFactor>] Scale the unit rates by the scaling factor.
        #
        #   @param scaling_key [String] Used to determine the unit rate scaling factor
        #
        #   @param unit_amounts [Array<Orb::Models::PriceCreateParams::GroupedWithMeteredMinimumConfig::UnitAmount>] Apply per unit pricing to each pricing value. The minimum amount is applied any

        class ScalingFactor < Orb::Internal::Type::BaseModel
          # @!attribute scaling_factor
          #   Scaling factor
          #
          #   @return [String]
          required :scaling_factor, String

          # @!attribute scaling_value
          #   Scaling value
          #
          #   @return [String]
          required :scaling_value, String

          # @!method initialize(scaling_factor:, scaling_value:)
          #   Configuration for a scaling factor
          #
          #   @param scaling_factor [String] Scaling factor
          #
          #   @param scaling_value [String] Scaling value
        end

        class UnitAmount < Orb::Internal::Type::BaseModel
          # @!attribute pricing_value
          #   Pricing value
          #
          #   @return [String]
          required :pricing_value, String

          # @!attribute unit_amount
          #   Per unit amount
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(pricing_value:, unit_amount:)
          #   Configuration for a unit amount
          #
          #   @param pricing_value [String] Pricing value
          #
          #   @param unit_amount [String] Per unit amount
        end
      end

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

      class MatrixWithDisplayNameConfig < Orb::Internal::Type::BaseModel
        # @!attribute dimension
        #   Used to determine the unit rate
        #
        #   @return [String]
        required :dimension, String

        # @!attribute unit_amounts
        #   Apply per unit pricing to each dimension value
        #
        #   @return [Array<Orb::Models::PriceCreateParams::MatrixWithDisplayNameConfig::UnitAmount>]
        required :unit_amounts,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::MatrixWithDisplayNameConfig::UnitAmount] }

        # @!method initialize(dimension:, unit_amounts:)
        #   Configuration for matrix_with_display_name pricing
        #
        #   @param dimension [String] Used to determine the unit rate
        #
        #   @param unit_amounts [Array<Orb::Models::PriceCreateParams::MatrixWithDisplayNameConfig::UnitAmount>] Apply per unit pricing to each dimension value

        class UnitAmount < Orb::Internal::Type::BaseModel
          # @!attribute dimension_value
          #   The dimension value
          #
          #   @return [String]
          required :dimension_value, String

          # @!attribute display_name
          #   Display name for this dimension value
          #
          #   @return [String]
          required :display_name, String

          # @!attribute unit_amount
          #   Per unit amount
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(dimension_value:, display_name:, unit_amount:)
          #   Configuration for a unit amount item
          #
          #   @param dimension_value [String] The dimension value
          #
          #   @param display_name [String] Display name for this dimension value
          #
          #   @param unit_amount [String] Per unit amount
        end
      end

      class GroupedTieredPackageConfig < Orb::Internal::Type::BaseModel
        # @!attribute grouping_key
        #   The event property used to group before tiering
        #
        #   @return [String]
        required :grouping_key, String

        # @!attribute package_size
        #   Package size
        #
        #   @return [String]
        required :package_size, String

        # @!attribute tiers
        #   Apply tiered pricing after rounding up the quantity to the package size. Tiers
        #   are defined using exclusive lower bounds.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::GroupedTieredPackageConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::GroupedTieredPackageConfig::Tier] }

        # @!method initialize(grouping_key:, package_size:, tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::GroupedTieredPackageConfig} for more details.
        #
        #   Configuration for grouped_tiered_package pricing
        #
        #   @param grouping_key [String] The event property used to group before tiering
        #
        #   @param package_size [String] Package size
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::GroupedTieredPackageConfig::Tier>] Apply tiered pricing after rounding up the quantity to the package size. Tiers a

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute per_unit
          #   Price per package
          #
          #   @return [String]
          required :per_unit, String

          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!method initialize(per_unit:, tier_lower_bound:)
          #   Configuration for a single tier
          #
          #   @param per_unit [String] Price per package
          #
          #   @param tier_lower_bound [String] Tier lower bound
        end
      end

      class MaxGroupTieredPackageConfig < Orb::Internal::Type::BaseModel
        # @!attribute grouping_key
        #   The event property used to group before tiering the group with the highest value
        #
        #   @return [String]
        required :grouping_key, String

        # @!attribute package_size
        #   Package size
        #
        #   @return [String]
        required :package_size, String

        # @!attribute tiers
        #   Apply tiered pricing to the largest group after grouping with the provided key.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::MaxGroupTieredPackageConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::MaxGroupTieredPackageConfig::Tier] }

        # @!method initialize(grouping_key:, package_size:, tiers:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::MaxGroupTieredPackageConfig} for more details.
        #
        #   Configuration for max_group_tiered_package pricing
        #
        #   @param grouping_key [String] The event property used to group before tiering the group with the highest value
        #
        #   @param package_size [String] Package size
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::MaxGroupTieredPackageConfig::Tier>] Apply tiered pricing to the largest group after grouping with the provided key.

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Per unit amount
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(tier_lower_bound:, unit_amount:)
          #   Configuration for a single tier
          #
          #   @param tier_lower_bound [String] Tier lower bound
          #
          #   @param unit_amount [String] Per unit amount
        end
      end

      class ScalableMatrixWithUnitPricingConfig < Orb::Internal::Type::BaseModel
        # @!attribute first_dimension
        #   Used to determine the unit rate
        #
        #   @return [String]
        required :first_dimension, String

        # @!attribute matrix_scaling_factors
        #   Apply a scaling factor to each dimension
        #
        #   @return [Array<Orb::Models::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor>]
        required :matrix_scaling_factors,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor] }

        # @!attribute unit_price
        #   The final unit price to rate against the output of the matrix
        #
        #   @return [String]
        required :unit_price, String

        # @!attribute prorate
        #   If true, the unit price will be prorated to the billing period
        #
        #   @return [Boolean, nil]
        optional :prorate, Orb::Internal::Type::Boolean, nil?: true

        # @!attribute second_dimension
        #   Used to determine the unit rate (optional)
        #
        #   @return [String, nil]
        optional :second_dimension, String, nil?: true

        # @!method initialize(first_dimension:, matrix_scaling_factors:, unit_price:, prorate: nil, second_dimension: nil)
        #   Configuration for scalable_matrix_with_unit_pricing pricing
        #
        #   @param first_dimension [String] Used to determine the unit rate
        #
        #   @param matrix_scaling_factors [Array<Orb::Models::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor>] Apply a scaling factor to each dimension
        #
        #   @param unit_price [String] The final unit price to rate against the output of the matrix
        #
        #   @param prorate [Boolean, nil] If true, the unit price will be prorated to the billing period
        #
        #   @param second_dimension [String, nil] Used to determine the unit rate (optional)

        class MatrixScalingFactor < Orb::Internal::Type::BaseModel
          # @!attribute first_dimension_value
          #   First dimension value
          #
          #   @return [String]
          required :first_dimension_value, String

          # @!attribute scaling_factor
          #   Scaling factor
          #
          #   @return [String]
          required :scaling_factor, String

          # @!attribute second_dimension_value
          #   Second dimension value (optional)
          #
          #   @return [String, nil]
          optional :second_dimension_value, String, nil?: true

          # @!method initialize(first_dimension_value:, scaling_factor:, second_dimension_value: nil)
          #   Configuration for a single matrix scaling factor
          #
          #   @param first_dimension_value [String] First dimension value
          #
          #   @param scaling_factor [String] Scaling factor
          #
          #   @param second_dimension_value [String, nil] Second dimension value (optional)
        end
      end

      class ScalableMatrixWithTieredPricingConfig < Orb::Internal::Type::BaseModel
        # @!attribute first_dimension
        #   Used for the scalable matrix first dimension
        #
        #   @return [String]
        required :first_dimension, String

        # @!attribute matrix_scaling_factors
        #   Apply a scaling factor to each dimension
        #
        #   @return [Array<Orb::Models::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor>]
        required :matrix_scaling_factors,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor] }

        # @!attribute tiers
        #   Tier pricing structure
        #
        #   @return [Array<Orb::Models::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::Tier>]
        required :tiers,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::Tier] }

        # @!attribute second_dimension
        #   Used for the scalable matrix second dimension (optional)
        #
        #   @return [String, nil]
        optional :second_dimension, String, nil?: true

        # @!method initialize(first_dimension:, matrix_scaling_factors:, tiers:, second_dimension: nil)
        #   Configuration for scalable_matrix_with_tiered_pricing pricing
        #
        #   @param first_dimension [String] Used for the scalable matrix first dimension
        #
        #   @param matrix_scaling_factors [Array<Orb::Models::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor>] Apply a scaling factor to each dimension
        #
        #   @param tiers [Array<Orb::Models::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::Tier>] Tier pricing structure
        #
        #   @param second_dimension [String, nil] Used for the scalable matrix second dimension (optional)

        class MatrixScalingFactor < Orb::Internal::Type::BaseModel
          # @!attribute first_dimension_value
          #   First dimension value
          #
          #   @return [String]
          required :first_dimension_value, String

          # @!attribute scaling_factor
          #   Scaling factor
          #
          #   @return [String]
          required :scaling_factor, String

          # @!attribute second_dimension_value
          #   Second dimension value (optional)
          #
          #   @return [String, nil]
          optional :second_dimension_value, String, nil?: true

          # @!method initialize(first_dimension_value:, scaling_factor:, second_dimension_value: nil)
          #   Configuration for a single matrix scaling factor
          #
          #   @param first_dimension_value [String] First dimension value
          #
          #   @param scaling_factor [String] Scaling factor
          #
          #   @param second_dimension_value [String, nil] Second dimension value (optional)
        end

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Per unit amount
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(tier_lower_bound:, unit_amount:)
          #   Configuration for a single tier entry with business logic
          #
          #   @param tier_lower_bound [String] Tier lower bound
          #
          #   @param unit_amount [String] Per unit amount
        end
      end

      class CumulativeGroupedBulkConfig < Orb::Internal::Type::BaseModel
        # @!attribute dimension_values
        #   Each tier lower bound must have the same group of values.
        #
        #   @return [Array<Orb::Models::PriceCreateParams::CumulativeGroupedBulkConfig::DimensionValue>]
        required :dimension_values,
                 -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::CumulativeGroupedBulkConfig::DimensionValue] }

        # @!attribute group
        #   Grouping key name
        #
        #   @return [String]
        required :group, String

        # @!method initialize(dimension_values:, group:)
        #   Configuration for cumulative_grouped_bulk pricing
        #
        #   @param dimension_values [Array<Orb::Models::PriceCreateParams::CumulativeGroupedBulkConfig::DimensionValue>] Each tier lower bound must have the same group of values.
        #
        #   @param group [String] Grouping key name

        class DimensionValue < Orb::Internal::Type::BaseModel
          # @!attribute grouping_key
          #   Grouping key value
          #
          #   @return [String]
          required :grouping_key, String

          # @!attribute tier_lower_bound
          #   Tier lower bound
          #
          #   @return [String]
          required :tier_lower_bound, String

          # @!attribute unit_amount
          #   Unit amount for this combination
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(grouping_key:, tier_lower_bound:, unit_amount:)
          #   Configuration for a dimension value entry
          #
          #   @param grouping_key [String] Grouping key value
          #
          #   @param tier_lower_bound [String] Tier lower bound
          #
          #   @param unit_amount [String] Unit amount for this combination
        end
      end

      class MinimumConfig < Orb::Internal::Type::BaseModel
        # @!attribute minimum_amount
        #   The minimum amount to apply
        #
        #   @return [String]
        required :minimum_amount, String

        # @!attribute prorated
        #   If true, subtotals from this price are prorated based on the service period
        #
        #   @return [Boolean, nil]
        optional :prorated, Orb::Internal::Type::Boolean

        # @!method initialize(minimum_amount:, prorated: nil)
        #   Configuration for minimum pricing
        #
        #   @param minimum_amount [String] The minimum amount to apply
        #
        #   @param prorated [Boolean] If true, subtotals from this price are prorated based on the service period
      end

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

      class EventOutputConfig < Orb::Internal::Type::BaseModel
        # @!attribute unit_rating_key
        #   The key in the event data to extract the unit rate from.
        #
        #   @return [String]
        required :unit_rating_key, String

        # @!attribute grouping_key
        #   An optional key in the event data to group by (e.g., event ID). All events will
        #   also be grouped by their unit rate.
        #
        #   @return [String, nil]
        optional :grouping_key, String, nil?: true

        # @!method initialize(unit_rating_key:, grouping_key: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::PriceCreateParams::EventOutputConfig} for more details.
        #
        #   Configuration for event_output pricing
        #
        #   @param unit_rating_key [String] The key in the event data to extract the unit rate from.
        #
        #   @param grouping_key [String, nil] An optional key in the event data to group by (e.g., event ID). All events will
      end
    end
  end
end
