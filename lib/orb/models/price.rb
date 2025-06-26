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

      variant :package, -> { Orb::Price::Package }

      variant :matrix, -> { Orb::Price::Matrix }

      variant :tiered, -> { Orb::Price::Tiered }

      variant :tiered_bps, -> { Orb::Price::TieredBPS }

      variant :bps, -> { Orb::Price::BPS }

      variant :bulk_bps, -> { Orb::Price::BulkBPS }

      variant :bulk, -> { Orb::Price::Bulk }

      variant :threshold_total_amount, -> { Orb::Price::ThresholdTotalAmount }

      variant :tiered_package, -> { Orb::Price::TieredPackage }

      variant :grouped_tiered, -> { Orb::Price::GroupedTiered }

      variant :tiered_with_minimum, -> { Orb::Price::TieredWithMinimum }

      variant :tiered_package_with_minimum, -> { Orb::Price::TieredPackageWithMinimum }

      variant :package_with_allocation, -> { Orb::Price::PackageWithAllocation }

      variant :unit_with_percent, -> { Orb::Price::UnitWithPercent }

      variant :matrix_with_allocation, -> { Orb::Price::MatrixWithAllocation }

      variant :tiered_with_proration, -> { Orb::Price::TieredWithProration }

      variant :unit_with_proration, -> { Orb::Price::UnitWithProration }

      variant :grouped_allocation, -> { Orb::Price::GroupedAllocation }

      variant :grouped_with_prorated_minimum, -> { Orb::Price::GroupedWithProratedMinimum }

      variant :grouped_with_metered_minimum, -> { Orb::Price::GroupedWithMeteredMinimum }

      variant :matrix_with_display_name, -> { Orb::Price::MatrixWithDisplayName }

      variant :bulk_with_proration, -> { Orb::Price::BulkWithProration }

      variant :grouped_tiered_package, -> { Orb::Price::GroupedTieredPackage }

      variant :max_group_tiered_package, -> { Orb::Price::MaxGroupTieredPackage }

      variant :scalable_matrix_with_unit_pricing, -> { Orb::Price::ScalableMatrixWithUnitPricing }

      variant :scalable_matrix_with_tiered_pricing, -> { Orb::Price::ScalableMatrixWithTieredPricing }

      variant :cumulative_grouped_bulk, -> { Orb::Price::CumulativeGroupedBulk }

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
        #
        #   @return [Orb::Models::UnitConfig]
        required :unit_config, -> { Orb::UnitConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, unit_config:, dimensional_price_configuration: nil, model_type: :unit)
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
        #   @param unit_config [Orb::Models::UnitConfig]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit]

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

        # @see Orb::Models::Price::Unit#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Symbol, :package]
        required :model_type, const: :package

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute package_config
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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_config:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :package)
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
        #   @param package_config [Orb::Models::PackageConfig]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Package::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package]

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

        # @see Orb::Models::Price::Package#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :matrix)
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
        #   @param matrix_config [Orb::Models::MatrixConfig]
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
        #   @param model_type [Symbol, :matrix]

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

        # @see Orb::Models::Price::Matrix#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Orb::Models::TieredConfig]
        required :tiered_config, -> { Orb::TieredConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_config:, dimensional_price_configuration: nil, model_type: :tiered)
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
        #   @param tiered_config [Orb::Models::TieredConfig]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered]

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

        # @see Orb::Models::Price::Tiered#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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

      class TieredBPS < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Price::TieredBPS::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredBPS::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config,
                 union: -> {
                   Orb::Price::TieredBPS::ConversionRateConfig
                 },
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
        #
        #   @return [Symbol, :tiered_bps]
        required :model_type, const: :tiered_bps

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
        #   @return [Symbol, Orb::Models::Price::TieredBPS::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredBPS::PriceType }

        # @!attribute replaces_price_id
        #   The price id this price replaces. This price will take the place of the replaced
        #   price in plan version migrations.
        #
        #   @return [String, nil]
        required :replaces_price_id, String, nil?: true

        # @!attribute tiered_bps_config
        #
        #   @return [Orb::Models::TieredBPSConfig]
        required :tiered_bps_config, -> { Orb::TieredBPSConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_bps_config:, dimensional_price_configuration: nil, model_type: :tiered_bps)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredBPS} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredBPS::Cadence]
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
        #   @param price_type [Symbol, Orb::Models::Price::TieredBPS::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param tiered_bps_config [Orb::Models::TieredBPSConfig]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_bps]

        # @see Orb::Models::Price::TieredBPS#cadence
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

        # @see Orb::Models::Price::TieredBPS#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::TieredBPS#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class BPS < Orb::Internal::Type::BaseModel
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

        # @!attribute bps_config
        #
        #   @return [Orb::Models::BPSConfig]
        required :bps_config, -> { Orb::BPSConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BPS::Cadence]
        required :cadence, enum: -> { Orb::Price::BPS::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::BPS::ConversionRateConfig }, nil?: true

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
        #
        #   @return [Symbol, :bps]
        required :model_type, const: :bps

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
        #   @return [Symbol, Orb::Models::Price::BPS::PriceType]
        required :price_type, enum: -> { Orb::Price::BPS::PriceType }

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bps_config:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :bps)
        #   Some parameter documentations has been truncated, see {Orb::Models::Price::BPS}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param bps_config [Orb::Models::BPSConfig]
        #
        #   @param cadence [Symbol, Orb::Models::Price::BPS::Cadence]
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
        #   @param price_type [Symbol, Orb::Models::Price::BPS::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bps]

        # @see Orb::Models::Price::BPS#cadence
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

        # @see Orb::Models::Price::BPS#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::BPS#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class BulkBPS < Orb::Internal::Type::BaseModel
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

        # @!attribute bulk_bps_config
        #
        #   @return [Orb::Models::BulkBPSConfig]
        required :bulk_bps_config, -> { Orb::BulkBPSConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BulkBPS::Cadence]
        required :cadence, enum: -> { Orb::Price::BulkBPS::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute conversion_rate_config
        #
        #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        required :conversion_rate_config, union: -> { Orb::Price::BulkBPS::ConversionRateConfig }, nil?: true

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
        #
        #   @return [Symbol, :bulk_bps]
        required :model_type, const: :bulk_bps

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
        #   @return [Symbol, Orb::Models::Price::BulkBPS::PriceType]
        required :price_type, enum: -> { Orb::Price::BulkBPS::PriceType }

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_bps_config:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :bulk_bps)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::BulkBPS} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param bulk_bps_config [Orb::Models::BulkBPSConfig]
        #
        #   @param cadence [Symbol, Orb::Models::Price::BulkBPS::Cadence]
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
        #   @param price_type [Symbol, Orb::Models::Price::BulkBPS::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk_bps]

        # @see Orb::Models::Price::BulkBPS#cadence
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

        # @see Orb::Models::Price::BulkBPS#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::BulkBPS#price_type
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
        #
        #   @return [Orb::Models::BulkConfig]
        required :bulk_config, -> { Orb::BulkConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Bulk::Cadence]
        required :cadence, enum: -> { Orb::Price::Bulk::Cadence }

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_config:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :bulk)
        #   Some parameter documentations has been truncated, see {Orb::Models::Price::Bulk}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param bulk_config [Orb::Models::BulkConfig]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Bulk::Cadence]
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
        #   @param model_type [Symbol, :bulk]

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

        # @see Orb::Models::Price::Bulk#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, threshold_total_amount_config:, dimensional_price_configuration: nil, model_type: :threshold_total_amount)
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
        #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :threshold_total_amount]

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

        # @see Orb::Models::Price::ThresholdTotalAmount#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_package_config:, dimensional_price_configuration: nil, model_type: :tiered_package)
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
        #   @param tiered_package_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package]

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

        # @see Orb::Models::Price::TieredPackage#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::TieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :grouped_tiered_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_tiered)
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
        #   @param grouped_tiered_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :grouped_tiered]

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

        # @see Orb::Models::Price::GroupedTiered#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_with_minimum)
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
        #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_minimum]

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

        # @see Orb::Models::Price::TieredWithMinimum#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::TieredWithMinimum#price_type
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_with_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_package_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_package_with_minimum)
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
        #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package_with_minimum]

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

        # @see Orb::Models::Price::TieredPackageWithMinimum#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        #   @return [Symbol, :package_with_allocation]
        required :model_type, const: :package_with_allocation

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute package_with_allocation_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :package_with_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_with_allocation_config:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :package_with_allocation)
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
        #   @param package_with_allocation_config [Hash{Symbol=>Object}]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::PackageWithAllocation::PriceType]
        #
        #   @param replaces_price_id [String, nil] The price id this price replaces. This price will take the place of the replaced
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package_with_allocation]

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

        # @see Orb::Models::Price::PackageWithAllocation#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, unit_with_percent_config:, dimensional_price_configuration: nil, model_type: :unit_with_percent)
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
        #   @param unit_with_percent_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_percent]

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

        # @see Orb::Models::Price::UnitWithPercent#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::UnitWithPercent#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_allocation_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :matrix_with_allocation)
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
        #   @param matrix_with_allocation_config [Orb::Models::MatrixWithAllocationConfig]
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
        #   @param model_type [Symbol, :matrix_with_allocation]

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

        # @see Orb::Models::Price::MatrixWithAllocation#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, tiered_with_proration_config:, dimensional_price_configuration: nil, model_type: :tiered_with_proration)
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
        #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_proration]

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

        # @see Orb::Models::Price::TieredWithProration#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::TieredWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, unit_with_proration_config:, dimensional_price_configuration: nil, model_type: :unit_with_proration)
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
        #   @param unit_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_proration]

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

        # @see Orb::Models::Price::UnitWithProration#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::UnitWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_allocation_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_allocation)
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
        #   @param grouped_allocation_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :grouped_allocation]

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

        # @see Orb::Models::Price::GroupedAllocation#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :grouped_with_prorated_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_prorated_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_with_prorated_minimum)
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
        #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :grouped_with_prorated_minimum]

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

        # @see Orb::Models::Price::GroupedWithProratedMinimum#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :grouped_with_metered_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_metered_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_with_metered_minimum)
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
        #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :grouped_with_metered_minimum]

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

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :matrix_with_display_name_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_display_name_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :matrix_with_display_name)
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
        #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :matrix_with_display_name]

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

        # @see Orb::Models::Price::MatrixWithDisplayName#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BulkWithProration::Cadence]
        required :cadence, enum: -> { Orb::Price::BulkWithProration::Cadence }

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_with_proration_config:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :bulk_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::BulkWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::BillableMetricTiny, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::BillingCycleConfiguration]
        #
        #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param cadence [Symbol, Orb::Models::Price::BulkWithProration::Cadence]
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
        #   @param model_type [Symbol, :bulk_with_proration]

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

        # @see Orb::Models::Price::BulkWithProration#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_package_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :grouped_tiered_package)
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
        #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :grouped_tiered_package]

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

        # @see Orb::Models::Price::GroupedTieredPackage#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :max_group_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, max_group_tiered_package_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :max_group_tiered_package)
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
        #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :max_group_tiered_package]

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

        # @see Orb::Models::Price::MaxGroupTieredPackage#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_unit_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, scalable_matrix_with_unit_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_unit_pricing)
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
        #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

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

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_tiered_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration, -> { Orb::DimensionalPriceConfiguration }, nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, scalable_matrix_with_tiered_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_tiered_pricing)
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
        #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

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

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
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
        #
        #   @return [Hash{Symbol=>Object}]
        required :cumulative_grouped_bulk_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, conversion_rate_config:, created_at:, credit_allocation:, cumulative_grouped_bulk_config:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, replaces_price_id:, dimensional_price_configuration: nil, model_type: :cumulative_grouped_bulk)
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
        #   @param conversion_rate [Float, nil]
        #
        #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Allocation, nil]
        #
        #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
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
        #   @param model_type [Symbol, :cumulative_grouped_bulk]

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

        # @see Orb::Models::Price::CumulativeGroupedBulk#conversion_rate_config
        module ConversionRateConfig
          extend Orb::Internal::Type::Union

          discriminator :conversion_rate_type

          variant :unit, -> { Orb::UnitConversionRateConfig }

          variant :tiered, -> { Orb::TieredConversionRateConfig }

          # @!method self.variants
          #   @return [Array(Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig)]
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

      # @!method self.variants
      #   @return [Array(Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk)]
    end
  end
end
