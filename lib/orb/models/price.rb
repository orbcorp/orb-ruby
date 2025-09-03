# frozen_string_literal: true

module Orb
  module Models
    # The Price resource represents a price that can be billed on a subscription,
    # resulting in a charge on an invoice in the form of an invoice line item. Prices
    # take a quantity and determine an amount to bill.
    #
    # Orb supports a few different pricing models out of the box. Each of these models
    # is serialized differently in a given Price object. The model_type field
    # determines the key for the configuration object that is present.
    #
    # For more on the types of prices, see
    # [the core concepts documentation](/core-concepts#plan-and-price)
    module Price
      extend Orb::Internal::Type::Union

      discriminator :model_type

      variant :unit, -> { Orb::Price::Unit }

      variant :tiered, -> { Orb::Price::Tiered }

      variant :bulk, -> { Orb::Price::Bulk }

      variant :package, -> { Orb::Price::Package }

      variant :matrix, -> { Orb::Price::Matrix }

      variant :threshold_total_amount, -> { Orb::Price::ThresholdTotalAmount }

      variant :tiered_package, -> { Orb::Price::TieredPackage }

      variant :tiered_with_minimum, -> { Orb::Price::TieredWithMinimum }

      variant :grouped_tiered, -> { Orb::Price::GroupedTiered }

      variant :tiered_package_with_minimum, -> { Orb::Price::TieredPackageWithMinimum }

      variant :package_with_allocation, -> { Orb::Price::PackageWithAllocation }

      variant :unit_with_percent, -> { Orb::Price::UnitWithPercent }

      variant :matrix_with_allocation, -> { Orb::Price::MatrixWithAllocation }

      variant :tiered_with_proration, -> { Orb::Price::TieredWithProration }

      variant :unit_with_proration, -> { Orb::Price::UnitWithProration }

      variant :grouped_allocation, -> { Orb::Price::GroupedAllocation }

      variant :bulk_with_proration, -> { Orb::Price::BulkWithProration }

      variant :grouped_with_prorated_minimum, -> { Orb::Price::GroupedWithProratedMinimum }

      variant :grouped_with_metered_minimum, -> { Orb::Price::GroupedWithMeteredMinimum }

      variant :grouped_with_min_max_thresholds, -> { Orb::Price::GroupedWithMinMaxThresholds }

      variant :matrix_with_display_name, -> { Orb::Price::MatrixWithDisplayName }

      variant :grouped_tiered_package, -> { Orb::Price::GroupedTieredPackage }

      variant :max_group_tiered_package, -> { Orb::Price::MaxGroupTieredPackage }

      variant :scalable_matrix_with_unit_pricing, -> { Orb::Price::ScalableMatrixWithUnitPricing }

      variant :scalable_matrix_with_tiered_pricing, -> { Orb::Price::ScalableMatrixWithTieredPricing }

      variant :cumulative_grouped_bulk, -> { Orb::Price::CumulativeGroupedBulk }

      variant :minimum, -> { Orb::Price::Minimum }

      class Unit < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Unit::Cadence]
        required :cadence, enum: -> { Orb::Price::Unit::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::Unit::ConversionRateConfig }, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :unit]
        required :model_type, const: :unit

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::Unit::PriceType]
        required :price_type, enum: -> { Orb::Price::Unit::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute unit_config
        #   Configuration for unit pricing
        #
        #   @return [Orb::Models::UnitConfig]
        required :unit_config, -> { Orb::UnitConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, unit_config:, dimensional_price_configuration: nil, model_type: :unit)
        #   Some parameter documentations has been truncated, see {Orb::Models::Price::Unit}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Unit::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Unit::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param unit_config [Orb::Models::UnitConfig] Configuration for unit pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit] The pricing model type

        # @see Orb::Models::Price::Unit#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Unit#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Tiered < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Tiered::Cadence]
        required :cadence, enum: -> { Orb::Price::Tiered::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::Tiered::ConversionRateConfig }, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :tiered]
        required :model_type, const: :tiered

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::Tiered::PriceType]
        required :price_type, enum: -> { Orb::Price::Tiered::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute tiered_config
        #   Configuration for tiered pricing
        #
        #   @return [Orb::Models::TieredConfig]
        required :tiered_config, -> { Orb::TieredConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_config:, dimensional_price_configuration: nil, model_type: :tiered)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::Tiered} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Tiered::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Tiered::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param tiered_config [Orb::Models::TieredConfig] Configuration for tiered pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered] The pricing model type

        # @see Orb::Models::Price::Tiered#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Tiered#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Bulk < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute bulk_config
        #   Configuration for bulk pricing
        #
        #   @return [Orb::Models::BulkConfig]
        required :bulk_config, -> { Orb::BulkConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Bulk::Cadence]
        required :cadence, enum: -> { Orb::Price::Bulk::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::Bulk::ConversionRateConfig }, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :bulk]
        required :model_type, const: :bulk

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::Bulk::PriceType]
        required :price_type, enum: -> { Orb::Price::Bulk::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_config:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :bulk)
        #   Some parameter documentations has been truncated, see {Orb::Models::Price::Bulk}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param bulk_config [Orb::Models::BulkConfig] Configuration for bulk pricing
        #
        #   @param cadence [Symbol, Orb::Models::Price::Bulk::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Bulk::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk] The pricing model type

        # @see Orb::Models::Price::Bulk#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Bulk#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Package < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Package::Cadence]
        required :cadence, enum: -> { Orb::Price::Package::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::Package::ConversionRateConfig }, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :package]
        required :model_type, const: :package

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute package_config
        #   Configuration for package pricing
        #
        #   @return [Orb::Models::PackageConfig]
        required :package_config, -> { Orb::PackageConfig }

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::Package::PriceType]
        required :price_type, enum: -> { Orb::Price::Package::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_config:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::Package} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Package::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param package_config [Orb::Models::PackageConfig] Configuration for package pricing
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Package::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package] The pricing model type

        # @see Orb::Models::Price::Package#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Package#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Matrix < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Matrix::Cadence]
        required :cadence, enum: -> { Orb::Price::Matrix::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::Matrix::ConversionRateConfig }, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute matrix_config
        #   Configuration for matrix pricing
        #
        #   @return [Orb::Models::MatrixConfig]
        required :matrix_config, -> { Orb::MatrixConfig }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :matrix]
        required :model_type, const: :matrix

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::Matrix::PriceType]
        required :price_type, enum: -> { Orb::Price::Matrix::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :matrix)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::Matrix} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Matrix::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param matrix_config [Orb::Models::MatrixConfig] Configuration for matrix pricing
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Matrix::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix] The pricing model type

        # @see Orb::Models::Price::Matrix#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Matrix#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmount::Cadence]
        required :cadence, enum: -> { Orb::Price::ThresholdTotalAmount::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::ThresholdTotalAmount::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :threshold_total_amount]
        required :model_type, const: :threshold_total_amount

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmount::PriceType]
        required :price_type, enum: -> { Orb::Price::ThresholdTotalAmount::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute threshold_total_amount_config
        #   Configuration for threshold_total_amount pricing
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig]
        required :threshold_total_amount_config,
                 -> { Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, threshold_total_amount_config:, dimensional_price_configuration: nil, model_type: :threshold_total_amount)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::ThresholdTotalAmount} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::ThresholdTotalAmount::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::ThresholdTotalAmount::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param threshold_total_amount_config [Orb::Models::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig] Configuration for threshold_total_amount pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :threshold_total_amount] The pricing model type

        # @see Orb::Models::Price::ThresholdTotalAmount#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#threshold_total_amount_config
        class ThresholdTotalAmountConfig < Orb::Internal::Type::BaseModel
          # @!attribute consumption_table
          #   When the quantity consumed passes a provided threshold, the configured total
          #   will be charged
          #
          #   @return [Array<Orb::Models::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::ConsumptionTable>]
          required :consumption_table,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::ConsumptionTable] }

          # @!attribute prorate
          #   If true, the unit price will be prorated to the billing period
          #
          #   @return [Boolean, nil]
          optional :prorate, Orb::Internal::Type::Boolean, nil?: true

          # @!method initialize(consumption_table:, prorate: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig} for more
          #   details.
          #
          #   Configuration for threshold_total_amount pricing
          #
          #   @param consumption_table [Array<Orb::Models::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::ConsumptionTable>] When the quantity consumed passes a provided threshold, the configured total wil
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
      end

      class TieredPackage < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackage::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredPackage::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::TieredPackage::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :tiered_package]
        required :model_type, const: :tiered_package

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredPackage::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute tiered_package_config
        #   Configuration for tiered_package pricing
        #
        #   @return [Orb::Models::Price::TieredPackage::TieredPackageConfig]
        required :tiered_package_config, -> { Orb::Price::TieredPackage::TieredPackageConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_package_config:, dimensional_price_configuration: nil, model_type: :tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredPackage::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredPackage::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param tiered_package_config [Orb::Models::Price::TieredPackage::TieredPackageConfig] Configuration for tiered_package pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package] The pricing model type

        # @see Orb::Models::Price::TieredPackage#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackage#tiered_package_config
        class TieredPackageConfig < Orb::Internal::Type::BaseModel
          # @!attribute package_size
          #   Package size
          #
          #   @return [String]
          required :package_size, String

          # @!attribute tiers
          #   Apply tiered pricing after rounding up the quantity to the package size. Tiers
          #   are defined using exclusive lower bounds.
          #
          #   @return [Array<Orb::Models::Price::TieredPackage::TieredPackageConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::TieredPackage::TieredPackageConfig::Tier] }

          # @!method initialize(package_size:, tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredPackage::TieredPackageConfig} for more details.
          #
          #   Configuration for tiered_package pricing
          #
          #   @param package_size [String] Package size
          #
          #   @param tiers [Array<Orb::Models::Price::TieredPackage::TieredPackageConfig::Tier>] Apply tiered pricing after rounding up the quantity to the package size. Tiers a

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
      end

      class TieredWithMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredWithMinimum::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::TieredWithMinimum::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :tiered_with_minimum]
        required :model_type, const: :tiered_with_minimum

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredWithMinimum::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute tiered_with_minimum_config
        #   Configuration for tiered_with_minimum pricing
        #
        #   @return [Orb::Models::Price::TieredWithMinimum::TieredWithMinimumConfig]
        required :tiered_with_minimum_config, -> { Orb::Price::TieredWithMinimum::TieredWithMinimumConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_with_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredWithMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredWithMinimum::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredWithMinimum::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param tiered_with_minimum_config [Orb::Models::Price::TieredWithMinimum::TieredWithMinimumConfig] Configuration for tiered_with_minimum pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_minimum] The pricing model type

        # @see Orb::Models::Price::TieredWithMinimum#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithMinimum#tiered_with_minimum_config
        class TieredWithMinimumConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
          #   defined using exclusive lower bounds.
          #
          #   @return [Array<Orb::Models::Price::TieredWithMinimum::TieredWithMinimumConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::TieredWithMinimum::TieredWithMinimumConfig::Tier] }

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
          #   {Orb::Models::Price::TieredWithMinimum::TieredWithMinimumConfig} for more
          #   details.
          #
          #   Configuration for tiered_with_minimum pricing
          #
          #   @param tiers [Array<Orb::Models::Price::TieredWithMinimum::TieredWithMinimumConfig::Tier>] Tiered pricing with a minimum amount dependent on the volume tier. Tiers are def
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
      end

      class GroupedTiered < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTiered::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedTiered::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::GroupedTiered::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute grouped_tiered_config
        #   Configuration for grouped_tiered pricing
        #
        #   @return [Orb::Models::Price::GroupedTiered::GroupedTieredConfig]
        required :grouped_tiered_config, -> { Orb::Price::GroupedTiered::GroupedTieredConfig }

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :grouped_tiered]
        required :model_type, const: :grouped_tiered

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTiered::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedTiered::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_tiered)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedTiered} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedTiered::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_tiered_config [Orb::Models::Price::GroupedTiered::GroupedTieredConfig] Configuration for grouped_tiered pricing
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedTiered::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_tiered] The pricing model type

        # @see Orb::Models::Price::GroupedTiered#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedTiered#grouped_tiered_config
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
          #   @return [Array<Orb::Models::Price::GroupedTiered::GroupedTieredConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::GroupedTiered::GroupedTieredConfig::Tier] }

          # @!method initialize(grouping_key:, tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedTiered::GroupedTieredConfig} for more details.
          #
          #   Configuration for grouped_tiered pricing
          #
          #   @param grouping_key [String] The billable metric property used to group before tiering
          #
          #   @param tiers [Array<Orb::Models::Price::GroupedTiered::GroupedTieredConfig::Tier>] Apply tiered pricing to each segment generated after grouping with the provided

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

        # @see Orb::Models::Price::GroupedTiered#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredPackageWithMinimum::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::TieredPackageWithMinimum::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :tiered_package_with_minimum]
        required :model_type, const: :tiered_package_with_minimum

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredPackageWithMinimum::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute tiered_package_with_minimum_config
        #   Configuration for tiered_package_with_minimum pricing
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig]
        required :tiered_package_with_minimum_config,
                 -> { Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_package_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_package_with_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredPackageWithMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredPackageWithMinimum::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredPackageWithMinimum::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param tiered_package_with_minimum_config [Orb::Models::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig] Configuration for tiered_package_with_minimum pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package_with_minimum] The pricing model type

        # @see Orb::Models::Price::TieredPackageWithMinimum#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#tiered_package_with_minimum_config
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
          #   @return [Array<Orb::Models::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::Tier] }

          # @!method initialize(package_size:, tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig}
          #   for more details.
          #
          #   Configuration for tiered_package_with_minimum pricing
          #
          #   @param package_size [Float] Package size
          #
          #   @param tiers [Array<Orb::Models::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::Tier>] Apply tiered pricing after rounding up the quantity to the package size. Tiers a

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
      end

      class PackageWithAllocation < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::PackageWithAllocation::Cadence]
        required :cadence, enum: -> { Orb::Price::PackageWithAllocation::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::PackageWithAllocation::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :package_with_allocation]
        required :model_type, const: :package_with_allocation

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute package_with_allocation_config
        #   Configuration for package_with_allocation pricing
        #
        #   @return [Orb::Models::Price::PackageWithAllocation::PackageWithAllocationConfig]
        required :package_with_allocation_config,
                 -> { Orb::Price::PackageWithAllocation::PackageWithAllocationConfig }

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::PackageWithAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::PackageWithAllocation::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_with_allocation_config:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :package_with_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::PackageWithAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::PackageWithAllocation::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param package_with_allocation_config [Orb::Models::Price::PackageWithAllocation::PackageWithAllocationConfig] Configuration for package_with_allocation pricing
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::PackageWithAllocation::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package_with_allocation] The pricing model type

        # @see Orb::Models::Price::PackageWithAllocation#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::PackageWithAllocation#package_with_allocation_config
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

        # @see Orb::Models::Price::PackageWithAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class UnitWithPercent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithPercent::Cadence]
        required :cadence, enum: -> { Orb::Price::UnitWithPercent::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::UnitWithPercent::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :unit_with_percent]
        required :model_type, const: :unit_with_percent

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithPercent::PriceType]
        required :price_type, enum: -> { Orb::Price::UnitWithPercent::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute unit_with_percent_config
        #   Configuration for unit_with_percent pricing
        #
        #   @return [Orb::Models::Price::UnitWithPercent::UnitWithPercentConfig]
        required :unit_with_percent_config, -> { Orb::Price::UnitWithPercent::UnitWithPercentConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, unit_with_percent_config:, dimensional_price_configuration: nil, model_type: :unit_with_percent)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::UnitWithPercent} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::UnitWithPercent::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::UnitWithPercent::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param unit_with_percent_config [Orb::Models::Price::UnitWithPercent::UnitWithPercentConfig] Configuration for unit_with_percent pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_percent] The pricing model type

        # @see Orb::Models::Price::UnitWithPercent#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithPercent#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithPercent#unit_with_percent_config
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
      end

      class MatrixWithAllocation < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithAllocation::Cadence]
        required :cadence, enum: -> { Orb::Price::MatrixWithAllocation::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::MatrixWithAllocation::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute matrix_with_allocation_config
        #   Configuration for matrix_with_allocation pricing
        #
        #   @return [Orb::Models::MatrixWithAllocationConfig]
        required :matrix_with_allocation_config, -> { Orb::MatrixWithAllocationConfig }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :matrix_with_allocation]
        required :model_type, const: :matrix_with_allocation

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::MatrixWithAllocation::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_allocation_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :matrix_with_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::MatrixWithAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::MatrixWithAllocation::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param matrix_with_allocation_config [Orb::Models::MatrixWithAllocationConfig] Configuration for matrix_with_allocation pricing
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::MatrixWithAllocation::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix_with_allocation] The pricing model type

        # @see Orb::Models::Price::MatrixWithAllocation#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MatrixWithAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class TieredWithProration < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithProration::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredWithProration::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::TieredWithProration::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :tiered_with_proration]
        required :model_type, const: :tiered_with_proration

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredWithProration::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute tiered_with_proration_config
        #   Configuration for tiered_with_proration pricing
        #
        #   @return [Orb::Models::Price::TieredWithProration::TieredWithProrationConfig]
        required :tiered_with_proration_config, -> { Orb::Price::TieredWithProration::TieredWithProrationConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_with_proration_config:, dimensional_price_configuration: nil, model_type: :tiered_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredWithProration::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredWithProration::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param tiered_with_proration_config [Orb::Models::Price::TieredWithProration::TieredWithProrationConfig] Configuration for tiered_with_proration pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_proration] The pricing model type

        # @see Orb::Models::Price::TieredWithProration#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithProration#tiered_with_proration_config
        class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for rating based on total usage quantities into the specified tier with
          #   proration
          #
          #   @return [Array<Orb::Models::Price::TieredWithProration::TieredWithProrationConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::TieredWithProration::TieredWithProrationConfig::Tier] }

          # @!method initialize(tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredWithProration::TieredWithProrationConfig} for more
          #   details.
          #
          #   Configuration for tiered_with_proration pricing
          #
          #   @param tiers [Array<Orb::Models::Price::TieredWithProration::TieredWithProrationConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier with pr

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
      end

      class UnitWithProration < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithProration::Cadence]
        required :cadence, enum: -> { Orb::Price::UnitWithProration::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::UnitWithProration::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :unit_with_proration]
        required :model_type, const: :unit_with_proration

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::UnitWithProration::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute unit_with_proration_config
        #   Configuration for unit_with_proration pricing
        #
        #   @return [Orb::Models::Price::UnitWithProration::UnitWithProrationConfig]
        required :unit_with_proration_config, -> { Orb::Price::UnitWithProration::UnitWithProrationConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, unit_with_proration_config:, dimensional_price_configuration: nil, model_type: :unit_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::UnitWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::UnitWithProration::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::UnitWithProration::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param unit_with_proration_config [Orb::Models::Price::UnitWithProration::UnitWithProrationConfig] Configuration for unit_with_proration pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_proration] The pricing model type

        # @see Orb::Models::Price::UnitWithProration#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithProration#unit_with_proration_config
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
      end

      class GroupedAllocation < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedAllocation::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedAllocation::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::GroupedAllocation::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute grouped_allocation_config
        #   Configuration for grouped_allocation pricing
        #
        #   @return [Orb::Models::Price::GroupedAllocation::GroupedAllocationConfig]
        required :grouped_allocation_config, -> { Orb::Price::GroupedAllocation::GroupedAllocationConfig }

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :grouped_allocation]
        required :model_type, const: :grouped_allocation

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::GroupedAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedAllocation::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_allocation_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedAllocation::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_allocation_config [Orb::Models::Price::GroupedAllocation::GroupedAllocationConfig] Configuration for grouped_allocation pricing
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedAllocation::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_allocation] The pricing model type

        # @see Orb::Models::Price::GroupedAllocation#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedAllocation#grouped_allocation_config
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

        # @see Orb::Models::Price::GroupedAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class BulkWithProration < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute bulk_with_proration_config
        #   Configuration for bulk_with_proration pricing
        #
        #   @return [Orb::Models::Price::BulkWithProration::BulkWithProrationConfig]
        required :bulk_with_proration_config, -> { Orb::Price::BulkWithProration::BulkWithProrationConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BulkWithProration::Cadence]
        required :cadence, enum: -> { Orb::Price::BulkWithProration::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::BulkWithProration::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :bulk_with_proration]
        required :model_type, const: :bulk_with_proration

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::BulkWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::BulkWithProration::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_with_proration_config:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :bulk_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::BulkWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param bulk_with_proration_config [Orb::Models::Price::BulkWithProration::BulkWithProrationConfig] Configuration for bulk_with_proration pricing
        #
        #   @param cadence [Symbol, Orb::Models::Price::BulkWithProration::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::BulkWithProration::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk_with_proration] The pricing model type

        # @see Orb::Models::Price::BulkWithProration#bulk_with_proration_config
        class BulkWithProrationConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Bulk tiers for rating based on total usage volume
          #
          #   @return [Array<Orb::Models::Price::BulkWithProration::BulkWithProrationConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::BulkWithProration::BulkWithProrationConfig::Tier] }

          # @!method initialize(tiers:)
          #   Configuration for bulk_with_proration pricing
          #
          #   @param tiers [Array<Orb::Models::Price::BulkWithProration::BulkWithProrationConfig::Tier>] Bulk tiers for rating based on total usage volume

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

        # @see Orb::Models::Price::BulkWithProration#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::BulkWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedWithProratedMinimum::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::GroupedWithProratedMinimum::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute grouped_with_prorated_minimum_config
        #   Configuration for grouped_with_prorated_minimum pricing
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig]
        required :grouped_with_prorated_minimum_config,
                 -> { Orb::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig }

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :grouped_with_prorated_minimum]
        required :model_type, const: :grouped_with_prorated_minimum

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedWithProratedMinimum::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_prorated_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_with_prorated_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedWithProratedMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_with_prorated_minimum_config [Orb::Models::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig] Configuration for grouped_with_prorated_minimum pricing
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_with_prorated_minimum] The pricing model type

        # @see Orb::Models::Price::GroupedWithProratedMinimum#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimum#grouped_with_prorated_minimum_config
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

        # @see Orb::Models::Price::GroupedWithProratedMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedWithMeteredMinimum::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::GroupedWithMeteredMinimum::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute grouped_with_metered_minimum_config
        #   Configuration for grouped_with_metered_minimum pricing
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig]
        required :grouped_with_metered_minimum_config,
                 -> { Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig }

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :grouped_with_metered_minimum]
        required :model_type, const: :grouped_with_metered_minimum

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedWithMeteredMinimum::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_metered_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_with_metered_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedWithMeteredMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_with_metered_minimum_config [Orb::Models::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig] Configuration for grouped_with_metered_minimum pricing
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_with_metered_minimum] The pricing model type

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#grouped_with_metered_minimum_config
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
          #   @return [Array<Orb::Models::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::ScalingFactor>]
          required :scaling_factors,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::ScalingFactor] }

          # @!attribute scaling_key
          #   Used to determine the unit rate scaling factor
          #
          #   @return [String]
          required :scaling_key, String

          # @!attribute unit_amounts
          #   Apply per unit pricing to each pricing value. The minimum amount is applied any
          #   unmatched usage.
          #
          #   @return [Array<Orb::Models::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::UnitAmount>]
          required :unit_amounts,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::UnitAmount] }

          # @!method initialize(grouping_key:, minimum_unit_amount:, pricing_key:, scaling_factors:, scaling_key:, unit_amounts:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig}
          #   for more details.
          #
          #   Configuration for grouped_with_metered_minimum pricing
          #
          #   @param grouping_key [String] Used to partition the usage into groups. The minimum amount is applied to each g
          #
          #   @param minimum_unit_amount [String] The minimum amount to charge per group per unit
          #
          #   @param pricing_key [String] Used to determine the unit rate
          #
          #   @param scaling_factors [Array<Orb::Models::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::ScalingFactor>] Scale the unit rates by the scaling factor.
          #
          #   @param scaling_key [String] Used to determine the unit rate scaling factor
          #
          #   @param unit_amounts [Array<Orb::Models::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::UnitAmount>] Apply per unit pricing to each pricing value. The minimum amount is applied any

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

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithMinMaxThresholds::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedWithMinMaxThresholds::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::GroupedWithMinMaxThresholds::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute grouped_with_min_max_thresholds_config
        #   Configuration for grouped_with_min_max_thresholds pricing
        #
        #   @return [Orb::Models::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig]
        required :grouped_with_min_max_thresholds_config,
                 -> { Orb::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig }

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :grouped_with_min_max_thresholds]
        required :model_type, const: :grouped_with_min_max_thresholds

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithMinMaxThresholds::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedWithMinMaxThresholds::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_min_max_thresholds_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_with_min_max_thresholds)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedWithMinMaxThresholds} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedWithMinMaxThresholds::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_with_min_max_thresholds_config [Orb::Models::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig] Configuration for grouped_with_min_max_thresholds pricing
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedWithMinMaxThresholds::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_with_min_max_thresholds] The pricing model type

        # @see Orb::Models::Price::GroupedWithMinMaxThresholds#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedWithMinMaxThresholds#grouped_with_min_max_thresholds_config
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

        # @see Orb::Models::Price::GroupedWithMinMaxThresholds#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayName::Cadence]
        required :cadence, enum: -> { Orb::Price::MatrixWithDisplayName::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::MatrixWithDisplayName::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute matrix_with_display_name_config
        #   Configuration for matrix_with_display_name pricing
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig]
        required :matrix_with_display_name_config,
                 -> { Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :matrix_with_display_name]
        required :model_type, const: :matrix_with_display_name

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayName::PriceType]
        required :price_type, enum: -> { Orb::Price::MatrixWithDisplayName::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_display_name_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :matrix_with_display_name)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::MatrixWithDisplayName} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::MatrixWithDisplayName::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param matrix_with_display_name_config [Orb::Models::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig] Configuration for matrix_with_display_name pricing
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::MatrixWithDisplayName::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix_with_display_name] The pricing model type

        # @see Orb::Models::Price::MatrixWithDisplayName#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MatrixWithDisplayName#matrix_with_display_name_config
        class MatrixWithDisplayNameConfig < Orb::Internal::Type::BaseModel
          # @!attribute dimension
          #   Used to determine the unit rate
          #
          #   @return [String]
          required :dimension, String

          # @!attribute unit_amounts
          #   Apply per unit pricing to each dimension value
          #
          #   @return [Array<Orb::Models::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::UnitAmount>]
          required :unit_amounts,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::UnitAmount] }

          # @!method initialize(dimension:, unit_amounts:)
          #   Configuration for matrix_with_display_name pricing
          #
          #   @param dimension [String] Used to determine the unit rate
          #
          #   @param unit_amounts [Array<Orb::Models::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::UnitAmount>] Apply per unit pricing to each dimension value

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

        # @see Orb::Models::Price::MatrixWithDisplayName#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class GroupedTieredPackage < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPackage::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedTieredPackage::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::GroupedTieredPackage::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute grouped_tiered_package_config
        #   Configuration for grouped_tiered_package pricing
        #
        #   @return [Orb::Models::Price::GroupedTieredPackage::GroupedTieredPackageConfig]
        required :grouped_tiered_package_config,
                 -> { Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig }

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :grouped_tiered_package]
        required :model_type, const: :grouped_tiered_package

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedTieredPackage::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_package_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedTieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedTieredPackage::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_tiered_package_config [Orb::Models::Price::GroupedTieredPackage::GroupedTieredPackageConfig] Configuration for grouped_tiered_package pricing
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedTieredPackage::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_tiered_package] The pricing model type

        # @see Orb::Models::Price::GroupedTieredPackage#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedTieredPackage#grouped_tiered_package_config
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
          #   @return [Array<Orb::Models::Price::GroupedTieredPackage::GroupedTieredPackageConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig::Tier] }

          # @!method initialize(grouping_key:, package_size:, tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedTieredPackage::GroupedTieredPackageConfig} for more
          #   details.
          #
          #   Configuration for grouped_tiered_package pricing
          #
          #   @param grouping_key [String] The event property used to group before tiering
          #
          #   @param package_size [String] Package size
          #
          #   @param tiers [Array<Orb::Models::Price::GroupedTieredPackage::GroupedTieredPackageConfig::Tier>] Apply tiered pricing after rounding up the quantity to the package size. Tiers a

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

        # @see Orb::Models::Price::GroupedTieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackage::Cadence]
        required :cadence, enum: -> { Orb::Price::MaxGroupTieredPackage::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::MaxGroupTieredPackage::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute max_group_tiered_package_config
        #   Configuration for max_group_tiered_package pricing
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig]
        required :max_group_tiered_package_config,
                 -> { Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :max_group_tiered_package]
        required :model_type, const: :max_group_tiered_package

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::MaxGroupTieredPackage::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, max_group_tiered_package_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :max_group_tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::MaxGroupTieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::MaxGroupTieredPackage::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param max_group_tiered_package_config [Orb::Models::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig] Configuration for max_group_tiered_package pricing
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::MaxGroupTieredPackage::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :max_group_tiered_package] The pricing model type

        # @see Orb::Models::Price::MaxGroupTieredPackage#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackage#max_group_tiered_package_config
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
          #   @return [Array<Orb::Models::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::Tier] }

          # @!method initialize(grouping_key:, package_size:, tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig} for
          #   more details.
          #
          #   Configuration for max_group_tiered_package pricing
          #
          #   @param grouping_key [String] The event property used to group before tiering the group with the highest value
          #
          #   @param package_size [String] Package size
          #
          #   @param tiers [Array<Orb::Models::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::Tier>] Apply tiered pricing to the largest group after grouping with the provided key.

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

        # @see Orb::Models::Price::MaxGroupTieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence]
        required :cadence, enum: -> { Orb::Price::ScalableMatrixWithUnitPricing::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::ScalableMatrixWithUnitPricing::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :scalable_matrix_with_unit_pricing]
        required :model_type, const: :scalable_matrix_with_unit_pricing

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType]
        required :price_type, enum: -> { Orb::Price::ScalableMatrixWithUnitPricing::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute scalable_matrix_with_unit_pricing_config
        #   Configuration for scalable_matrix_with_unit_pricing pricing
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig]
        required :scalable_matrix_with_unit_pricing_config,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, scalable_matrix_with_unit_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_unit_pricing)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::ScalableMatrixWithUnitPricing} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param scalable_matrix_with_unit_pricing_config [Orb::Models::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig] Configuration for scalable_matrix_with_unit_pricing pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing] The pricing model type

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#scalable_matrix_with_unit_pricing_config
        class ScalableMatrixWithUnitPricingConfig < Orb::Internal::Type::BaseModel
          # @!attribute first_dimension
          #   Used to determine the unit rate
          #
          #   @return [String]
          required :first_dimension, String

          # @!attribute matrix_scaling_factors
          #   Apply a scaling factor to each dimension
          #
          #   @return [Array<Orb::Models::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor>]
          required :matrix_scaling_factors,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor] }

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
          #   @param matrix_scaling_factors [Array<Orb::Models::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor>] Apply a scaling factor to each dimension
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
      end

      class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence]
        required :cadence, enum: -> { Orb::Price::ScalableMatrixWithTieredPricing::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::ScalableMatrixWithTieredPricing::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :scalable_matrix_with_tiered_pricing]
        required :model_type, const: :scalable_matrix_with_tiered_pricing

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType]
        required :price_type, enum: -> { Orb::Price::ScalableMatrixWithTieredPricing::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute scalable_matrix_with_tiered_pricing_config
        #   Configuration for scalable_matrix_with_tiered_pricing pricing
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig]
        required :scalable_matrix_with_tiered_pricing_config,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, scalable_matrix_with_tiered_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_tiered_pricing)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::ScalableMatrixWithTieredPricing} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param scalable_matrix_with_tiered_pricing_config [Orb::Models::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig] Configuration for scalable_matrix_with_tiered_pricing pricing
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing] The pricing model type

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#scalable_matrix_with_tiered_pricing_config
        class ScalableMatrixWithTieredPricingConfig < Orb::Internal::Type::BaseModel
          # @!attribute first_dimension
          #   Used for the scalable matrix first dimension
          #
          #   @return [String]
          required :first_dimension, String

          # @!attribute matrix_scaling_factors
          #   Apply a scaling factor to each dimension
          #
          #   @return [Array<Orb::Models::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor>]
          required :matrix_scaling_factors,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor] }

          # @!attribute tiers
          #   Tier pricing structure
          #
          #   @return [Array<Orb::Models::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::Tier] }

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
          #   @param matrix_scaling_factors [Array<Orb::Models::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor>] Apply a scaling factor to each dimension
          #
          #   @param tiers [Array<Orb::Models::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::Tier>] Tier pricing structure
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
      end

      class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulk::Cadence]
        required :cadence, enum: -> { Orb::Price::CumulativeGroupedBulk::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> { Orb::Price::CumulativeGroupedBulk::ConversionRateConfig },
                 nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute cumulative_grouped_bulk_config
        #   Configuration for cumulative_grouped_bulk pricing
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig]
        required :cumulative_grouped_bulk_config,
                 -> { Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :cumulative_grouped_bulk]
        required :model_type, const: :cumulative_grouped_bulk

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulk::PriceType]
        required :price_type, enum: -> { Orb::Price::CumulativeGroupedBulk::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, cumulative_grouped_bulk_config:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :cumulative_grouped_bulk)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::CumulativeGroupedBulk} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::CumulativeGroupedBulk::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param cumulative_grouped_bulk_config [Orb::Models::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig] Configuration for cumulative_grouped_bulk pricing
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::CumulativeGroupedBulk::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :cumulative_grouped_bulk] The pricing model type

        # @see Orb::Models::Price::CumulativeGroupedBulk#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulk#cumulative_grouped_bulk_config
        class CumulativeGroupedBulkConfig < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #   Each tier lower bound must have the same group of values.
          #
          #   @return [Array<Orb::Models::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::DimensionValue>]
          required :dimension_values,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::DimensionValue] }

          # @!attribute group
          #   Grouping key name
          #
          #   @return [String]
          required :group, String

          # @!method initialize(dimension_values:, group:)
          #   Configuration for cumulative_grouped_bulk pricing
          #
          #   @param dimension_values [Array<Orb::Models::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::DimensionValue>] Each tier lower bound must have the same group of values.
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

        # @see Orb::Models::Price::CumulativeGroupedBulk#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Minimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTiny, nil]
        required :billable_metric, -> { Orb::BillableMetricTiny }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Minimum::Cadence]
        required :cadence, enum: -> { Orb::Price::Minimum::Cadence }

        # @!attribute composite_price_filters
        #
        #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
        required :composite_price_filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] },
                 nil?: true

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::Minimum::ConversionRateConfig }, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Allocation, nil]
        required :credit_allocation, -> { Orb::Allocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   @deprecated
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute external_price_id
        #
        #   @return [String, nil]
        required :external_price_id, String, nil?: true

        # @!attribute fixed_price_quantity
        #
        #   @return [Float, nil]
        required :fixed_price_quantity, Float, nil?: true

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfiguration, nil]
        required :invoicing_cycle_configuration, -> { Orb::BillingCycleConfiguration }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlim]
        required :item, -> { Orb::ItemSlim }

        # @!attribute maximum
        #   @deprecated
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

        # @!attribute minimum
        #   @deprecated
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

        # @!attribute minimum_amount
        #   @deprecated
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute minimum_config
        #   Configuration for minimum pricing
        #
        #   @return [Orb::Models::Price::Minimum::MinimumConfig]
        required :minimum_config, -> { Orb::Price::Minimum::MinimumConfig }

        # @!attribute model_type
        #   The pricing model type
        #
        #   @return [Symbol, :minimum]
        required :model_type, const: :minimum

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::Minimum::PriceType]
        required :price_type, enum: -> { Orb::Price::Minimum::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, composite_price_filters:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, minimum_config:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::Minimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Minimum::Cadence]
        #
        #   @param composite_price_filters [Array<Orb::Models::TransformPriceFilter>, nil]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::ItemSlim]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param minimum_config [Orb::Models::Price::Minimum::MinimumConfig] Configuration for minimum pricing
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Minimum::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :minimum] The pricing model type

        # @see Orb::Models::Price::Minimum#cadence
        module Cadence
          extend Orb::Internal::Type::Enum

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Minimum#minimum_config
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

        # @see Orb::Models::Price::Minimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Orb::Models::Price::Unit, Orb::Models::Price::Tiered, Orb::Models::Price::Bulk, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::GroupedWithMinMaxThresholds, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::Minimum)]
    end
  end
end
