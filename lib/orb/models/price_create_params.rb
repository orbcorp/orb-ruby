# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Prices#create
    class PriceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute body
      #   New floating price request body params.
      #
      #   @return [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::PriceCreateParams::Body::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation, Orb::Models::PriceCreateParams::Body::DailyCreditAllowance, Orb::Models::PriceCreateParams::Body::MeteredAllowance, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::PriceCreateParams::Body::Percent, Orb::Models::PriceCreateParams::Body::EventOutput]
      required :body, union: -> { Orb::PriceCreateParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::PriceCreateParams::Body::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation, Orb::Models::PriceCreateParams::Body::DailyCreditAllowance, Orb::Models::PriceCreateParams::Body::MeteredAllowance, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::PriceCreateParams::Body::Percent, Orb::Models::PriceCreateParams::Body::EventOutput] New floating price request body params.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # New floating price request body params.
      module Body
        extend Orb::Internal::Type::Union

        discriminator :model_type

        variant :unit, -> { Orb::NewFloatingUnitPrice }

        variant :tiered, -> { Orb::NewFloatingTieredPrice }

        variant :bulk, -> { Orb::NewFloatingBulkPrice }

        variant :bulk_with_filters, -> { Orb::PriceCreateParams::Body::BulkWithFilters }

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

        variant :matrix_with_threshold_discounts,
                -> { Orb::PriceCreateParams::Body::MatrixWithThresholdDiscounts }

        variant :tiered_with_proration, -> { Orb::NewFloatingTieredWithProrationPrice }

        variant :unit_with_proration, -> { Orb::NewFloatingUnitWithProrationPrice }

        variant :grouped_allocation, -> { Orb::NewFloatingGroupedAllocationPrice }

        variant :bulk_with_proration, -> { Orb::NewFloatingBulkWithProrationPrice }

        variant :grouped_with_prorated_minimum, -> { Orb::NewFloatingGroupedWithProratedMinimumPrice }

        variant :grouped_with_metered_minimum, -> { Orb::NewFloatingGroupedWithMeteredMinimumPrice }

        variant :grouped_with_min_max_thresholds, -> { Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds }

        variant :matrix_with_display_name, -> { Orb::NewFloatingMatrixWithDisplayNamePrice }

        variant :grouped_tiered_package, -> { Orb::NewFloatingGroupedTieredPackagePrice }

        variant :max_group_tiered_package, -> { Orb::NewFloatingMaxGroupTieredPackagePrice }

        variant :scalable_matrix_with_unit_pricing, -> { Orb::NewFloatingScalableMatrixWithUnitPricingPrice }

        variant :scalable_matrix_with_tiered_pricing, -> { Orb::NewFloatingScalableMatrixWithTieredPricingPrice }

        variant :cumulative_grouped_bulk, -> { Orb::NewFloatingCumulativeGroupedBulkPrice }

        variant :cumulative_grouped_allocation, -> { Orb::PriceCreateParams::Body::CumulativeGroupedAllocation }

        variant :daily_credit_allowance, -> { Orb::PriceCreateParams::Body::DailyCreditAllowance }

        variant :metered_allowance, -> { Orb::PriceCreateParams::Body::MeteredAllowance }

        variant :minimum_composite, -> { Orb::NewFloatingMinimumCompositePrice }

        variant :percent, -> { Orb::PriceCreateParams::Body::Percent }

        variant :event_output, -> { Orb::PriceCreateParams::Body::EventOutput }

        class BulkWithFilters < Orb::Internal::Type::BaseModel
          # @!attribute bulk_with_filters_config
          #   Configuration for bulk_with_filters pricing
          #
          #   @return [Orb::Models::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig]
          required :bulk_with_filters_config,
                   -> { Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig }

          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::BulkWithFilters::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::BulkWithFilters::Cadence }

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(bulk_with_filters_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :bulk_with_filters)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::BulkWithFilters} for more details.
          #
          #   @param bulk_with_filters_config [Orb::Models::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig] Configuration for bulk_with_filters pricing
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::BulkWithFilters::Cadence] The cadence to bill for this price on.
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :bulk_with_filters] The pricing model type

          # @see Orb::Models::PriceCreateParams::Body::BulkWithFilters#bulk_with_filters_config
          class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
            # @!attribute filters
            #   Property filters to apply (all must match)
            #
            #   @return [Array<Orb::Models::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Filter>]
            required :filters,
                     -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Filter] }

            # @!attribute tiers
            #   Bulk tiers for rating based on total usage volume
            #
            #   @return [Array<Orb::Models::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Tier>]
            required :tiers,
                     -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Tier] }

            # @!method initialize(filters:, tiers:)
            #   Configuration for bulk_with_filters pricing
            #
            #   @param filters [Array<Orb::Models::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Filter>] Property filters to apply (all must match)
            #
            #   @param tiers [Array<Orb::Models::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Tier>] Bulk tiers for rating based on total usage volume

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
          # @see Orb::Models::PriceCreateParams::Body::BulkWithFilters#cadence
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

        class MatrixWithThresholdDiscounts < Orb::Internal::Type::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::MatrixWithThresholdDiscounts::Cadence }

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

          # @!attribute matrix_with_threshold_discounts_config
          #   Configuration for matrix_with_threshold_discounts pricing
          #
          #   @return [Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig]
          required :matrix_with_threshold_discounts_config,
                   -> { Orb::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig }

          # @!attribute model_type
          #   The pricing model type
          #
          #   @return [Symbol, :matrix_with_threshold_discounts]
          required :model_type, const: :matrix_with_threshold_discounts

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(cadence:, currency:, item_id:, matrix_with_threshold_discounts_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :matrix_with_threshold_discounts)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts} for more
          #   details.
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::Cadence] The cadence to bill for this price on.
          #
          #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
          #
          #   @param item_id [String] The id of the item the price will be associated with.
          #
          #   @param matrix_with_threshold_discounts_config [Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig] Configuration for matrix_with_threshold_discounts pricing
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :matrix_with_threshold_discounts] The pricing model type

          # The cadence to bill for this price on.
          #
          # @see Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts#cadence
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

          # @see Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts#matrix_with_threshold_discounts_config
          class MatrixWithThresholdDiscountsConfig < Orb::Internal::Type::BaseModel
            # @!attribute default_unit_amount
            #   Unit price used for usage that does not match any defined matrix cell.
            #
            #   @return [String]
            required :default_unit_amount, String

            # @!attribute first_dimension
            #   First matrix dimension key.
            #
            #   @return [String]
            required :first_dimension, String

            # @!attribute matrix_values
            #   Per-cell unit prices.
            #
            #   @return [Array<Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue>]
            required :matrix_values,
                     -> do
                       Orb::Internal::Type::ArrayOf[
                         Orb::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue
                       ]
                     end

            # @!attribute second_dimension
            #   Optional second matrix dimension key.
            #
            #   @return [String, nil]
            optional :second_dimension, String, nil?: true

            # @!attribute threshold_discount_groups
            #
            #   @return [Array<Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup>, nil]
            optional :threshold_discount_groups,
                     -> do
                       Orb::Internal::Type::ArrayOf[
                         Orb::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup
                       ]
                     end

            # @!method initialize(default_unit_amount:, first_dimension:, matrix_values:, second_dimension: nil, threshold_discount_groups: nil)
            #   Configuration for matrix_with_threshold_discounts pricing
            #
            #   @param default_unit_amount [String] Unit price used for usage that does not match any defined matrix cell.
            #
            #   @param first_dimension [String] First matrix dimension key.
            #
            #   @param matrix_values [Array<Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::MatrixValue>] Per-cell unit prices.
            #
            #   @param second_dimension [String, nil] Optional second matrix dimension key.
            #
            #   @param threshold_discount_groups [Array<Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup>]

            class MatrixValue < Orb::Internal::Type::BaseModel
              # @!attribute first_dimension_value
              #
              #   @return [String]
              required :first_dimension_value, String

              # @!attribute unit_amount
              #
              #   @return [String]
              required :unit_amount, String

              # @!attribute second_dimension_value
              #
              #   @return [String, nil]
              optional :second_dimension_value, String, nil?: true

              # @!method initialize(first_dimension_value:, unit_amount:, second_dimension_value: nil)
              #   @param first_dimension_value [String]
              #   @param unit_amount [String]
              #   @param second_dimension_value [String, nil]
            end

            class ThresholdDiscountGroup < Orb::Internal::Type::BaseModel
              # @!attribute above_threshold_discount_percentage
              #   Discount rate applied to spend above the threshold.
              #
              #   @return [String]
              required :above_threshold_discount_percentage, String

              # @!attribute below_threshold_discount_percentage
              #   Discount rate applied to spend at or below the threshold. Set to 0 for no
              #   baseline discount.
              #
              #   @return [String]
              required :below_threshold_discount_percentage, String

              # @!attribute cell_coordinates
              #   Semicolon-separated list of matrix cell coordinates targeted by this group. Each
              #   coordinate is `first,second` when the matrix has two dimensions, or just `first`
              #   for a single-dimension matrix. Example: `blue,circle;green,triangle`.
              #
              #   @return [String]
              required :cell_coordinates, String

              # @!attribute threshold_amount
              #
              #   @return [String]
              required :threshold_amount, String

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String, nil?: true

              # @!method initialize(above_threshold_discount_percentage:, below_threshold_discount_percentage:, cell_coordinates:, threshold_amount:, description: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts::MatrixWithThresholdDiscountsConfig::ThresholdDiscountGroup}
              #   for more details.
              #
              #   @param above_threshold_discount_percentage [String] Discount rate applied to spend above the threshold.
              #
              #   @param below_threshold_discount_percentage [String] Discount rate applied to spend at or below the threshold. Set to 0 for no baseli
              #
              #   @param cell_coordinates [String] Semicolon-separated list of matrix cell coordinates targeted by this group. Each
              #
              #   @param threshold_amount [String]
              #
              #   @param description [String, nil]
            end
          end
        end

        class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string for which this price is billed in.
          #
          #   @return [String]
          required :currency, String

          # @!attribute grouped_with_min_max_thresholds_config
          #   Configuration for grouped_with_min_max_thresholds pricing
          #
          #   @return [Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig]
          required :grouped_with_min_max_thresholds_config,
                   -> { Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig }

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(cadence:, currency:, grouped_with_min_max_thresholds_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :grouped_with_min_max_thresholds)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds} for more
          #   details.
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence] The cadence to bill for this price on.
          #
          #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
          #
          #   @param grouped_with_min_max_thresholds_config [Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig] Configuration for grouped_with_min_max_thresholds pricing
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :grouped_with_min_max_thresholds] The pricing model type

          # The cadence to bill for this price on.
          #
          # @see Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds#cadence
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

          # @see Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds#grouped_with_min_max_thresholds_config
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
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence }

          # @!attribute cumulative_grouped_allocation_config
          #   Configuration for cumulative_grouped_allocation pricing
          #
          #   @return [Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig]
          required :cumulative_grouped_allocation_config,
                   -> { Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig }

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(cadence:, cumulative_grouped_allocation_config:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :cumulative_grouped_allocation)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation} for more
          #   details.
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence] The cadence to bill for this price on.
          #
          #   @param cumulative_grouped_allocation_config [Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig] Configuration for cumulative_grouped_allocation pricing
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :cumulative_grouped_allocation] The pricing model type

          # The cadence to bill for this price on.
          #
          # @see Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation#cadence
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

          # @see Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation#cumulative_grouped_allocation_config
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

        class DailyCreditAllowance < Orb::Internal::Type::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::DailyCreditAllowance::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string for which this price is billed in.
          #
          #   @return [String]
          required :currency, String

          # @!attribute daily_credit_allowance_config
          #   Configuration for daily_credit_allowance pricing
          #
          #   @return [Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig]
          required :daily_credit_allowance_config,
                   -> { Orb::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig }

          # @!attribute item_id
          #   The id of the item the price will be associated with.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute model_type
          #   The pricing model type
          #
          #   @return [Symbol, :daily_credit_allowance]
          required :model_type, const: :daily_credit_allowance

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(cadence:, currency:, daily_credit_allowance_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :daily_credit_allowance)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::DailyCreditAllowance} for more details.
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::Cadence] The cadence to bill for this price on.
          #
          #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
          #
          #   @param daily_credit_allowance_config [Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig] Configuration for daily_credit_allowance pricing
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :daily_credit_allowance] The pricing model type

          # The cadence to bill for this price on.
          #
          # @see Orb::Models::PriceCreateParams::Body::DailyCreditAllowance#cadence
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

          # @see Orb::Models::PriceCreateParams::Body::DailyCreditAllowance#daily_credit_allowance_config
          class DailyCreditAllowanceConfig < Orb::Internal::Type::BaseModel
            # @!attribute daily_allowance
            #   Credits granted per day. Lose-it-or-use-it; does not roll over.
            #
            #   @return [String]
            required :daily_allowance, String

            # @!attribute default_unit_amount
            #   Default per-unit credit rate for any usage not bucketed into a specified
            #   matrix_value
            #
            #   @return [String]
            required :default_unit_amount, String

            # @!attribute dimensions
            #   One or two event property values to evaluate matrix groups by
            #
            #   @return [Array<String, nil>]
            required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

            # @!attribute event_day_property
            #   Event property whose value identifies the day bucket the event belongs to (e.g.
            #   'event_day' set to an ISO date string in the customer's timezone). The allowance
            #   resets per distinct value of this property.
            #
            #   @return [String]
            required :event_day_property, String

            # @!attribute matrix_values
            #   Per-dimension credit rates
            #
            #   @return [Array<Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue>]
            required :matrix_values,
                     -> { Orb::Internal::Type::ArrayOf[Orb::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue] }

            # @!method initialize(daily_allowance:, default_unit_amount:, dimensions:, event_day_property:, matrix_values:)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig}
            #   for more details.
            #
            #   Configuration for daily_credit_allowance pricing
            #
            #   @param daily_allowance [String] Credits granted per day. Lose-it-or-use-it; does not roll over.
            #
            #   @param default_unit_amount [String] Default per-unit credit rate for any usage not bucketed into a specified
            #   matrix\_
            #
            #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
            #
            #   @param event_day_property [String] Event property whose value identifies the day bucket the event belongs to (e.g.
            #
            #   @param matrix_values [Array<Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue>] Per-dimension credit rates

            class MatrixValue < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   One or two matrix keys to filter usage to this value by. For example, ["model"]
              #   could be used to apply a different credit rate to each AI model.
              #
              #   @return [Array<String, nil>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute unit_amount
              #   Credits charged per unit of usage matching the specified dimension_values
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(dimension_values:, unit_amount:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::PriceCreateParams::Body::DailyCreditAllowance::DailyCreditAllowanceConfig::MatrixValue}
              #   for more details.
              #
              #   Per-dimension credit price for the daily credit allowance model.
              #
              #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this value by. For example, ["model"]
              #
              #   @param unit_amount [String] Credits charged per unit of usage matching the specified dimension_values
            end
          end
        end

        class MeteredAllowance < Orb::Internal::Type::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::MeteredAllowance::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::MeteredAllowance::Cadence }

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

          # @!attribute metered_allowance_config
          #   Configuration for metered_allowance pricing
          #
          #   @return [Orb::Models::PriceCreateParams::Body::MeteredAllowance::MeteredAllowanceConfig]
          required :metered_allowance_config,
                   -> { Orb::PriceCreateParams::Body::MeteredAllowance::MeteredAllowanceConfig }

          # @!attribute model_type
          #   The pricing model type
          #
          #   @return [Symbol, :metered_allowance]
          required :model_type, const: :metered_allowance

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(cadence:, currency:, item_id:, metered_allowance_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :metered_allowance)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::MeteredAllowance} for more details.
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::MeteredAllowance::Cadence] The cadence to bill for this price on.
          #
          #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
          #
          #   @param item_id [String] The id of the item the price will be associated with.
          #
          #   @param metered_allowance_config [Orb::Models::PriceCreateParams::Body::MeteredAllowance::MeteredAllowanceConfig] Configuration for metered_allowance pricing
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :metered_allowance] The pricing model type

          # The cadence to bill for this price on.
          #
          # @see Orb::Models::PriceCreateParams::Body::MeteredAllowance#cadence
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

          # @see Orb::Models::PriceCreateParams::Body::MeteredAllowance#metered_allowance_config
          class MeteredAllowanceConfig < Orb::Internal::Type::BaseModel
            # @!attribute allowance_grouping_value
            #   The grouping_key value whose summed quantity represents the allowance for this
            #   period (e.g. 'storage_snapshot' emitting 3 × avg storage). Capped at consumption
            #   — credit can never exceed actual usage.
            #
            #   @return [String]
            required :allowance_grouping_value, String

            # @!attribute consumption_grouping_value
            #   The grouping_key value whose summed quantity represents consumption (e.g.
            #   'download'). Charged at unit_amount.
            #
            #   @return [String]
            required :consumption_grouping_value, String

            # @!attribute grouping_key
            #   Event property used to partition the metric into consumption and allowance
            #   quantities (e.g. 'event_name'). The metric is queried with this key and the two
            #   values below select which partition is which.
            #
            #   @return [String]
            required :grouping_key, String

            # @!attribute unit_amount
            #   Per-unit price applied to gross consumption and to the allowance credit.
            #
            #   @return [String]
            required :unit_amount, String

            # @!attribute allowance_display_name
            #   Sub-line label for the credit row (e.g. 'Up to 3x free egress').
            #
            #   @return [String, nil]
            optional :allowance_display_name, String

            # @!attribute consumption_display_name
            #   Sub-line label for the gross consumption row (e.g. 'bytes gotten').
            #
            #   @return [String, nil]
            optional :consumption_display_name, String

            # @!method initialize(allowance_grouping_value:, consumption_grouping_value:, grouping_key:, unit_amount:, allowance_display_name: nil, consumption_display_name: nil)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceCreateParams::Body::MeteredAllowance::MeteredAllowanceConfig}
            #   for more details.
            #
            #   Configuration for metered_allowance pricing
            #
            #   @param allowance_grouping_value [String] The grouping_key value whose summed quantity represents the allowance for this p
            #
            #   @param consumption_grouping_value [String] The grouping_key value whose summed quantity represents consumption (e.g. 'downl
            #
            #   @param grouping_key [String] Event property used to partition the metric into consumption and allowance quant
            #
            #   @param unit_amount [String] Per-unit price applied to gross consumption and to the allowance credit.
            #
            #   @param allowance_display_name [String] Sub-line label for the credit row (e.g. 'Up to 3x free egress').
            #
            #   @param consumption_display_name [String] Sub-line label for the gross consumption row (e.g. 'bytes gotten').
          end
        end

        class Percent < Orb::Internal::Type::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::Percent::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::Percent::Cadence }

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
          #   @return [Orb::Models::PriceCreateParams::Body::Percent::PercentConfig]
          required :percent_config, -> { Orb::PriceCreateParams::Body::Percent::PercentConfig }

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(cadence:, currency:, item_id:, name:, percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :percent)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::Percent} for more details.
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::Percent::Cadence] The cadence to bill for this price on.
          #
          #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
          #
          #   @param item_id [String] The id of the item the price will be associated with.
          #
          #   @param name [String] The name of the price.
          #
          #   @param percent_config [Orb::Models::PriceCreateParams::Body::Percent::PercentConfig] Configuration for percent pricing
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :percent] The pricing model type

          # The cadence to bill for this price on.
          #
          # @see Orb::Models::PriceCreateParams::Body::Percent#cadence
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

          # @see Orb::Models::PriceCreateParams::Body::Percent#percent_config
          class PercentConfig < Orb::Internal::Type::BaseModel
            # @!attribute percent
            #   Fraction of the component subtotals to charge (0 < percent <= 1).
            #
            #   @return [Float]
            required :percent, Float

            # @!attribute maximum_amount
            #   Maximum amount to charge. If unset, the fee has no upper bound.
            #
            #   @return [String, nil]
            optional :maximum_amount, String, nil?: true

            # @!attribute minimum_amount
            #   Minimum amount to charge. If unset, the fee is bounded below by 0.
            #
            #   @return [String, nil]
            optional :minimum_amount, String, nil?: true

            # @!attribute prorated
            #   If true, the minimum_amount is prorated based on the service period. The
            #   maximum_amount is an absolute cap (never prorated), and the percent applied to
            #   upstream subtotals is never prorated either.
            #
            #   @return [Boolean, nil]
            optional :prorated, Orb::Internal::Type::Boolean

            # @!method initialize(percent:, maximum_amount: nil, minimum_amount: nil, prorated: nil)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::PriceCreateParams::Body::Percent::PercentConfig} for more details.
            #
            #   Configuration for percent pricing
            #
            #   @param percent [Float] Fraction of the component subtotals to charge (0 < percent <= 1).
            #
            #   @param maximum_amount [String, nil] Maximum amount to charge. If unset, the fee has no upper bound.
            #
            #   @param minimum_amount [String, nil] Minimum amount to charge. If unset, the fee is bounded below by 0.
            #
            #   @param prorated [Boolean] If true, the minimum_amount is prorated based on the service period. The maximum
          end
        end

        class EventOutput < Orb::Internal::Type::BaseModel
          # @!attribute cadence
          #   The cadence to bill for this price on.
          #
          #   @return [Symbol, Orb::Models::PriceCreateParams::Body::EventOutput::Cadence]
          required :cadence, enum: -> { Orb::PriceCreateParams::Body::EventOutput::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string for which this price is billed in.
          #
          #   @return [String]
          required :currency, String

          # @!attribute event_output_config
          #   Configuration for event_output pricing
          #
          #   @return [Orb::Models::PriceCreateParams::Body::EventOutput::EventOutputConfig]
          required :event_output_config, -> { Orb::PriceCreateParams::Body::EventOutput::EventOutputConfig }

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
          optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

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

          # @!attribute license_type_id
          #   The ID of the license type to associate with this price.
          #
          #   @return [String, nil]
          optional :license_type_id, String, nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!method initialize(cadence:, currency:, event_output_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil, model_type: :event_output)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::PriceCreateParams::Body::EventOutput} for more details.
          #
          #   @param cadence [Symbol, Orb::Models::PriceCreateParams::Body::EventOutput::Cadence] The cadence to bill for this price on.
          #
          #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
          #
          #   @param event_output_config [Orb::Models::PriceCreateParams::Body::EventOutput::EventOutputConfig] Configuration for event_output pricing
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
          #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param model_type [Symbol, :event_output] The pricing model type

          # The cadence to bill for this price on.
          #
          # @see Orb::Models::PriceCreateParams::Body::EventOutput#cadence
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

          # @see Orb::Models::PriceCreateParams::Body::EventOutput#event_output_config
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
            #   {Orb::Models::PriceCreateParams::Body::EventOutput::EventOutputConfig} for more
            #   details.
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
        #   @return [Array(Orb::Models::NewFloatingUnitPrice, Orb::Models::NewFloatingTieredPrice, Orb::Models::NewFloatingBulkPrice, Orb::Models::PriceCreateParams::Body::BulkWithFilters, Orb::Models::NewFloatingPackagePrice, Orb::Models::NewFloatingMatrixPrice, Orb::Models::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingMatrixWithAllocationPrice, Orb::Models::PriceCreateParams::Body::MatrixWithThresholdDiscounts, Orb::Models::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::PriceCreateParams::Body::GroupedWithMinMaxThresholds, Orb::Models::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingCumulativeGroupedBulkPrice, Orb::Models::PriceCreateParams::Body::CumulativeGroupedAllocation, Orb::Models::PriceCreateParams::Body::DailyCreditAllowance, Orb::Models::PriceCreateParams::Body::MeteredAllowance, Orb::Models::NewFloatingMinimumCompositePrice, Orb::Models::PriceCreateParams::Body::Percent, Orb::Models::PriceCreateParams::Body::EventOutput)]
      end
    end
  end
end
