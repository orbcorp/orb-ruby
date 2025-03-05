# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # The Price resource represents a price that can be billed on a subscription,
    #   resulting in a charge on an invoice in the form of an invoice line item. Prices
    #   take a quantity and determine an amount to bill.
    #
    #   Orb supports a few different pricing models out of the box. Each of these models
    #   is serialized differently in a given Price object. The model_type field
    #   determines the key for the configuration object that is present.
    #
    #   For more on the types of prices, see
    #   [the core concepts documentation](/core-concepts#plan-and-price)
    #
    # @example
    # ```ruby
    # case price
    # in {
    #   model_type: "unit",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::UnitPrice ...
    # in {
    #   model_type: "package",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::PackagePrice ...
    # in {
    #   model_type: "matrix",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::MatrixPrice ...
    # in {
    #   model_type: "tiered",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::TieredPrice ...
    # in {
    #   model_type: "tiered_bps",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::TieredBpsPrice ...
    # in {
    #   model_type: "bps",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::BpsPrice ...
    # in {
    #   model_type: "bulk_bps",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::BulkBpsPrice ...
    # in {
    #   model_type: "bulk",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::BulkPrice ...
    # in {
    #   model_type: "threshold_total_amount",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::ThresholdTotalAmountPrice ...
    # in {
    #   model_type: "tiered_package",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::TieredPackagePrice ...
    # in {
    #   model_type: "grouped_tiered",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::GroupedTieredPrice ...
    # in {
    #   model_type: "tiered_with_minimum",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::TieredWithMinimumPrice ...
    # in {
    #   model_type: "tiered_package_with_minimum",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::TieredPackageWithMinimumPrice ...
    # in {
    #   model_type: "package_with_allocation",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::PackageWithAllocationPrice ...
    # in {
    #   model_type: "unit_with_percent",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::UnitWithPercentPrice ...
    # in {
    #   model_type: "matrix_with_allocation",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::MatrixWithAllocationPrice ...
    # in {
    #   model_type: "tiered_with_proration",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::TieredWithProrationPrice ...
    # in {
    #   model_type: "unit_with_proration",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::UnitWithProrationPrice ...
    # in {
    #   model_type: "grouped_allocation",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::GroupedAllocationPrice ...
    # in {
    #   model_type: "grouped_with_prorated_minimum",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::GroupedWithProratedMinimumPrice ...
    # in {
    #   model_type: "grouped_with_metered_minimum",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::GroupedWithMeteredMinimumPrice ...
    # in {
    #   model_type: "matrix_with_display_name",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::MatrixWithDisplayNamePrice ...
    # in {
    #   model_type: "bulk_with_proration",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::BulkWithProrationPrice ...
    # in {
    #   model_type: "grouped_tiered_package",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::GroupedTieredPackagePrice ...
    # in {
    #   model_type: "max_group_tiered_package",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::MaxGroupTieredPackagePrice ...
    # in {
    #   model_type: "scalable_matrix_with_unit_pricing",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::ScalableMatrixWithUnitPricingPrice ...
    # in {
    #   model_type: "scalable_matrix_with_tiered_pricing",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::ScalableMatrixWithTieredPricingPrice ...
    # in {
    #   model_type: "cumulative_grouped_bulk",
    #   id: String,
    #   billable_metric: Orb::Models::BillableMetricTinyModel,
    #   billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel
    # }
    #   # Orb::Models::Price::CumulativeGroupedBulkPrice ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case price
    # in Orb::Models::Price::UnitPrice
    #   # ...
    # in Orb::Models::Price::PackagePrice
    #   # ...
    # in Orb::Models::Price::MatrixPrice
    #   # ...
    # in Orb::Models::Price::TieredPrice
    #   # ...
    # in Orb::Models::Price::TieredBpsPrice
    #   # ...
    # in Orb::Models::Price::BpsPrice
    #   # ...
    # in Orb::Models::Price::BulkBpsPrice
    #   # ...
    # in Orb::Models::Price::BulkPrice
    #   # ...
    # in Orb::Models::Price::ThresholdTotalAmountPrice
    #   # ...
    # in Orb::Models::Price::TieredPackagePrice
    #   # ...
    # in Orb::Models::Price::GroupedTieredPrice
    #   # ...
    # in Orb::Models::Price::TieredWithMinimumPrice
    #   # ...
    # in Orb::Models::Price::TieredPackageWithMinimumPrice
    #   # ...
    # in Orb::Models::Price::PackageWithAllocationPrice
    #   # ...
    # in Orb::Models::Price::UnitWithPercentPrice
    #   # ...
    # in Orb::Models::Price::MatrixWithAllocationPrice
    #   # ...
    # in Orb::Models::Price::TieredWithProrationPrice
    #   # ...
    # in Orb::Models::Price::UnitWithProrationPrice
    #   # ...
    # in Orb::Models::Price::GroupedAllocationPrice
    #   # ...
    # in Orb::Models::Price::GroupedWithProratedMinimumPrice
    #   # ...
    # in Orb::Models::Price::GroupedWithMeteredMinimumPrice
    #   # ...
    # in Orb::Models::Price::MatrixWithDisplayNamePrice
    #   # ...
    # in Orb::Models::Price::BulkWithProrationPrice
    #   # ...
    # in Orb::Models::Price::GroupedTieredPackagePrice
    #   # ...
    # in Orb::Models::Price::MaxGroupTieredPackagePrice
    #   # ...
    # in Orb::Models::Price::ScalableMatrixWithUnitPricingPrice
    #   # ...
    # in Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
    #   # ...
    # in Orb::Models::Price::CumulativeGroupedBulkPrice
    #   # ...
    # end
    # ```
    class Price < Orb::Union
      discriminator :model_type

      variant :unit, -> { Orb::Models::Price::UnitPrice }

      variant :package, -> { Orb::Models::Price::PackagePrice }

      variant :matrix, -> { Orb::Models::Price::MatrixPrice }

      variant :tiered, -> { Orb::Models::Price::TieredPrice }

      variant :tiered_bps, -> { Orb::Models::Price::TieredBpsPrice }

      variant :bps, -> { Orb::Models::Price::BpsPrice }

      variant :bulk_bps, -> { Orb::Models::Price::BulkBpsPrice }

      variant :bulk, -> { Orb::Models::Price::BulkPrice }

      variant :threshold_total_amount, -> { Orb::Models::Price::ThresholdTotalAmountPrice }

      variant :tiered_package, -> { Orb::Models::Price::TieredPackagePrice }

      variant :grouped_tiered, -> { Orb::Models::Price::GroupedTieredPrice }

      variant :tiered_with_minimum, -> { Orb::Models::Price::TieredWithMinimumPrice }

      variant :tiered_package_with_minimum, -> { Orb::Models::Price::TieredPackageWithMinimumPrice }

      variant :package_with_allocation, -> { Orb::Models::Price::PackageWithAllocationPrice }

      variant :unit_with_percent, -> { Orb::Models::Price::UnitWithPercentPrice }

      variant :matrix_with_allocation, -> { Orb::Models::Price::MatrixWithAllocationPrice }

      variant :tiered_with_proration, -> { Orb::Models::Price::TieredWithProrationPrice }

      variant :unit_with_proration, -> { Orb::Models::Price::UnitWithProrationPrice }

      variant :grouped_allocation, -> { Orb::Models::Price::GroupedAllocationPrice }

      variant :grouped_with_prorated_minimum, -> { Orb::Models::Price::GroupedWithProratedMinimumPrice }

      variant :grouped_with_metered_minimum, -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice }

      variant :matrix_with_display_name, -> { Orb::Models::Price::MatrixWithDisplayNamePrice }

      variant :bulk_with_proration, -> { Orb::Models::Price::BulkWithProrationPrice }

      variant :grouped_tiered_package, -> { Orb::Models::Price::GroupedTieredPackagePrice }

      variant :max_group_tiered_package, -> { Orb::Models::Price::MaxGroupTieredPackagePrice }

      variant :scalable_matrix_with_unit_pricing, -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice }

      variant :scalable_matrix_with_tiered_pricing,
              -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice }

      variant :cumulative_grouped_bulk, -> { Orb::Models::Price::CumulativeGroupedBulkPrice }

      class UnitPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::UnitPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::UnitPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::UnitPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::UnitPrice::PriceType }

        # @!attribute unit_config
        #
        #   @return [Orb::Models::UnitConfigModel]
        required :unit_config, -> { Orb::Models::UnitConfigModel }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::UnitPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::UnitPrice::PriceType]
        #   # @param unit_config [Orb::Models::UnitConfigModel]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :unit]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     unit_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :unit,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class PackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::PackagePrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::PackagePrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Orb::Models::PackageConfigModel]
        required :package_config, -> { Orb::Models::PackageConfigModel }

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::PackagePrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::PackagePrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::PackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param package_config [Orb::Models::PackageConfigModel]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::PackagePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :package]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     package_config:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :package,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class MatrixPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MatrixPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::MatrixPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute matrix_config
        #
        #   @return [Orb::Models::MatrixConfigModel]
        required :matrix_config, -> { Orb::Models::MatrixConfigModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::MatrixPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::MatrixPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::MatrixPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param matrix_config [Orb::Models::MatrixConfigModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MatrixPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :matrix]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     matrix_config:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :matrix,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class TieredPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::TieredPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::TieredPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::TieredPrice::PriceType }

        # @!attribute tiered_config
        #
        #   @return [Orb::Models::TieredConfigModel]
        required :tiered_config, -> { Orb::Models::TieredConfigModel }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredPrice::PriceType]
        #   # @param tiered_config [Orb::Models::TieredConfigModel]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :tiered]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     tiered_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :tiered,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class TieredBpsPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredBpsPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::TieredBpsPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::TieredBpsPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::TieredBpsPrice::PriceType }

        # @!attribute tiered_bps_config
        #
        #   @return [Orb::Models::TieredBpsConfigModel]
        required :tiered_bps_config, -> { Orb::Models::TieredBpsConfigModel }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredBpsPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredBpsPrice::PriceType]
        #   # @param tiered_bps_config [Orb::Models::TieredBpsConfigModel]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :tiered_bps]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     tiered_bps_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :tiered_bps,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class BpsPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute bps_config
        #
        #   @return [Orb::Models::BpsConfigModel]
        required :bps_config, -> { Orb::Models::BpsConfigModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BpsPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::BpsPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::BpsPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::BpsPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param bps_config [Orb::Models::BpsConfigModel]
        #   # @param cadence [Symbol, Orb::Models::Price::BpsPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BpsPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :bps]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     bps_config:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :bps,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class BulkBpsPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute bulk_bps_config
        #
        #   @return [Orb::Models::BulkBpsConfigModel]
        required :bulk_bps_config, -> { Orb::Models::BulkBpsConfigModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BulkBpsPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::BulkBpsPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::BulkBpsPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::BulkBpsPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param bulk_bps_config [Orb::Models::BulkBpsConfigModel]
        #   # @param cadence [Symbol, Orb::Models::Price::BulkBpsPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BulkBpsPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :bulk_bps]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     bulk_bps_config:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :bulk_bps,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class BulkPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute bulk_config
        #
        #   @return [Orb::Models::BulkConfigModel]
        required :bulk_config, -> { Orb::Models::BulkConfigModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BulkPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::BulkPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::BulkPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::BulkPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param bulk_config [Orb::Models::BulkConfigModel]
        #   # @param cadence [Symbol, Orb::Models::Price::BulkPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BulkPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :bulk]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     bulk_config:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :bulk,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class ThresholdTotalAmountPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::ThresholdTotalAmountPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::ThresholdTotalAmountPrice::PriceType }

        # @!attribute threshold_total_amount_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :threshold_total_amount_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType]
        #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :threshold_total_amount]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     threshold_total_amount_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :threshold_total_amount,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class TieredPackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackagePrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::TieredPackagePrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::TieredPackagePrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::TieredPackagePrice::PriceType }

        # @!attribute tiered_package_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredPackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredPackagePrice::PriceType]
        #   # @param tiered_package_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :tiered_package]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     tiered_package_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :tiered_package,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class GroupedTieredPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::GroupedTieredPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        required :grouped_tiered_config, Orb::HashOf[Orb::Unknown]

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::GroupedTieredPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedTieredPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_tiered_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedTieredPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :grouped_tiered]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     grouped_tiered_config:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :grouped_tiered,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class TieredWithMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithMinimumPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::TieredWithMinimumPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::TieredWithMinimumPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::TieredWithMinimumPrice::PriceType }

        # @!attribute tiered_with_minimum_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_minimum_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredWithMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredWithMinimumPrice::PriceType]
        #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :tiered_with_minimum]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     tiered_with_minimum_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :tiered_with_minimum,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class TieredPackageWithMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType }

        # @!attribute tiered_package_with_minimum_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_with_minimum_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType]
        #   # @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :tiered_package_with_minimum]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     tiered_package_with_minimum_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :tiered_package_with_minimum,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class PackageWithAllocationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::PackageWithAllocationPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::PackageWithAllocationPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        required :package_with_allocation_config, Orb::HashOf[Orb::Unknown]

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::PackageWithAllocationPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::PackageWithAllocationPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::PackageWithAllocationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::PackageWithAllocationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :package_with_allocation]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     package_with_allocation_config:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :package_with_allocation,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class UnitWithPercentPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithPercentPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::UnitWithPercentPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::UnitWithPercentPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::UnitWithPercentPrice::PriceType }

        # @!attribute unit_with_percent_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_percent_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::UnitWithPercentPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::UnitWithPercentPrice::PriceType]
        #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :unit_with_percent]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     unit_with_percent_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :unit_with_percent,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class MatrixWithAllocationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::MatrixWithAllocationPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute matrix_with_allocation_config
        #
        #   @return [Orb::Models::MatrixWithAllocationConfigModel]
        required :matrix_with_allocation_config, -> { Orb::Models::MatrixWithAllocationConfigModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::MatrixWithAllocationPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param matrix_with_allocation_config [Orb::Models::MatrixWithAllocationConfigModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :matrix_with_allocation]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     matrix_with_allocation_config:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :matrix_with_allocation,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class TieredWithProrationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithProrationPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::TieredWithProrationPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::TieredWithProrationPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::TieredWithProrationPrice::PriceType }

        # @!attribute tiered_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_proration_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredWithProrationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredWithProrationPrice::PriceType]
        #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :tiered_with_proration]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     tiered_with_proration_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :tiered_with_proration,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class UnitWithProrationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithProrationPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::UnitWithProrationPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::UnitWithProrationPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::UnitWithProrationPrice::PriceType }

        # @!attribute unit_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_proration_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::UnitWithProrationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::UnitWithProrationPrice::PriceType]
        #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :unit_with_proration]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     unit_with_proration_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :unit_with_proration,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class GroupedAllocationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedAllocationPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::GroupedAllocationPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        required :grouped_allocation_config, Orb::HashOf[Orb::Unknown]

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::GroupedAllocationPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::GroupedAllocationPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedAllocationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedAllocationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :grouped_allocation]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     grouped_allocation_config:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :grouped_allocation,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class GroupedWithProratedMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        required :grouped_with_prorated_minimum_config, Orb::HashOf[Orb::Unknown]

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :grouped_with_prorated_minimum]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     grouped_with_prorated_minimum_config:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :grouped_with_prorated_minimum,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class GroupedWithMeteredMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        required :grouped_with_metered_minimum_config, Orb::HashOf[Orb::Unknown]

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :grouped_with_metered_minimum]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     grouped_with_metered_minimum_config:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :grouped_with_metered_minimum,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class MatrixWithDisplayNamePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute matrix_with_display_name_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :matrix_with_display_name_config, Orb::HashOf[Orb::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :matrix_with_display_name]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     matrix_with_display_name_config:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :matrix_with_display_name,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class BulkWithProrationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute bulk_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :bulk_with_proration_config, Orb::HashOf[Orb::Unknown]

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BulkWithProrationPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::BulkWithProrationPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::BulkWithProrationPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::BulkWithProrationPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #   # @param cadence [Symbol, Orb::Models::Price::BulkWithProrationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BulkWithProrationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :bulk_with_proration]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     bulk_with_proration_config:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :bulk_with_proration,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class GroupedTieredPackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::GroupedTieredPackagePrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        required :grouped_tiered_package_config, Orb::HashOf[Orb::Unknown]

        # @!attribute invoicing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::GroupedTieredPackagePrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :grouped_tiered_package]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     grouped_tiered_package_config:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :grouped_tiered_package,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class MaxGroupTieredPackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute max_group_tiered_package_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :max_group_tiered_package_config, Orb::HashOf[Orb::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :max_group_tiered_package]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     max_group_tiered_package_config:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :max_group_tiered_package,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class ScalableMatrixWithUnitPricingPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType }

        # @!attribute scalable_matrix_with_unit_pricing_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_unit_pricing_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType]
        #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :scalable_matrix_with_unit_pricing]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     scalable_matrix_with_unit_pricing_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :scalable_matrix_with_unit_pricing,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class ScalableMatrixWithTieredPricingPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType }

        # @!attribute scalable_matrix_with_tiered_pricing_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_tiered_pricing_config, Orb::HashOf[Orb::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType]
        #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     scalable_matrix_with_tiered_pricing_config:,
        #     dimensional_price_configuration: nil,
        #     model_type: :scalable_matrix_with_tiered_pricing,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class CumulativeGroupedBulkPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::BillableMetricTinyModel, nil]
        required :billable_metric, -> { Orb::Models::BillableMetricTinyModel }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::BillingCycleConfigurationModel]
        required :billing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence }

        # @!attribute conversion_rate
        #
        #   @return [Float, nil]
        required :conversion_rate, Float, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::AllocationModel, nil]
        required :credit_allocation, -> { Orb::Models::AllocationModel }, nil?: true

        # @!attribute cumulative_grouped_bulk_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :cumulative_grouped_bulk_config, Orb::HashOf[Orb::Unknown]

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

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
        #   @return [Orb::Models::BillingCycleConfigurationModel, nil]
        required :invoicing_cycle_configuration, -> { Orb::Models::BillingCycleConfigurationModel }, nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::ItemSlimModel]
        required :item, -> { Orb::Models::ItemSlimModel }

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

        # @!attribute minimum_amount
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
        #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType]
        required :price_type, enum: -> { Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::DimensionalPriceConfigurationModel, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::DimensionalPriceConfigurationModel },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::BillableMetricTinyModel, nil]
        #   # @param billing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel]
        #   # @param cadence [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::AllocationModel, nil]
        #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::BillingCycleConfigurationModel, nil]
        #   # @param item [Orb::Models::ItemSlimModel]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::DimensionalPriceConfigurationModel, nil]
        #   # @param model_type [Symbol, :cumulative_grouped_bulk]
        #   #
        #   def initialize(
        #     id:,
        #     billable_metric:,
        #     billing_cycle_configuration:,
        #     cadence:,
        #     conversion_rate:,
        #     created_at:,
        #     credit_allocation:,
        #     cumulative_grouped_bulk_config:,
        #     currency:,
        #     discount:,
        #     external_price_id:,
        #     fixed_price_quantity:,
        #     invoicing_cycle_configuration:,
        #     item:,
        #     maximum:,
        #     maximum_amount:,
        #     metadata:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     plan_phase_order:,
        #     price_type:,
        #     dimensional_price_configuration: nil,
        #     model_type: :cumulative_grouped_bulk,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case cadence
        # in :one_time
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case price_type
        # in :usage_price
        #   # ...
        # in :fixed_price
        #   # ...
        # end
        # ```
        class PriceType < Orb::Enum
          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
