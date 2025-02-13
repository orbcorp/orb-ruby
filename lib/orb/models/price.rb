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
    # in {model_type: "unit", id: String, billable_metric: Orb::Models::Price::UnitPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::UnitPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::UnitPrice ...
    # in {model_type: "package", id: String, billable_metric: Orb::Models::Price::PackagePrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::PackagePrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::PackagePrice ...
    # in {model_type: "matrix", id: String, billable_metric: Orb::Models::Price::MatrixPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::MatrixPrice ...
    # in {model_type: "tiered", id: String, billable_metric: Orb::Models::Price::TieredPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::TieredPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::TieredPrice ...
    # in {model_type: "tiered_bps", id: String, billable_metric: Orb::Models::Price::TieredBpsPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::TieredBpsPrice ...
    # in {model_type: "bps", id: String, billable_metric: Orb::Models::Price::BpsPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::BpsPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::BpsPrice ...
    # in {model_type: "bulk_bps", id: String, billable_metric: Orb::Models::Price::BulkBpsPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::BulkBpsPrice ...
    # in {model_type: "bulk", id: String, billable_metric: Orb::Models::Price::BulkPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::BulkPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::BulkPrice ...
    # in {model_type: "threshold_total_amount", id: String, billable_metric: Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::ThresholdTotalAmountPrice ...
    # in {model_type: "tiered_package", id: String, billable_metric: Orb::Models::Price::TieredPackagePrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::TieredPackagePrice ...
    # in {model_type: "grouped_tiered", id: String, billable_metric: Orb::Models::Price::GroupedTieredPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::GroupedTieredPrice ...
    # in {model_type: "tiered_with_minimum", id: String, billable_metric: Orb::Models::Price::TieredWithMinimumPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::TieredWithMinimumPrice ...
    # in {model_type: "tiered_package_with_minimum", id: String, billable_metric: Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::TieredPackageWithMinimumPrice ...
    # in {model_type: "package_with_allocation", id: String, billable_metric: Orb::Models::Price::PackageWithAllocationPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::PackageWithAllocationPrice ...
    # in {model_type: "unit_with_percent", id: String, billable_metric: Orb::Models::Price::UnitWithPercentPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::UnitWithPercentPrice ...
    # in {model_type: "matrix_with_allocation", id: String, billable_metric: Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::MatrixWithAllocationPrice ...
    # in {model_type: "tiered_with_proration", id: String, billable_metric: Orb::Models::Price::TieredWithProrationPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::TieredWithProrationPrice ...
    # in {model_type: "unit_with_proration", id: String, billable_metric: Orb::Models::Price::UnitWithProrationPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::UnitWithProrationPrice ...
    # in {model_type: "grouped_allocation", id: String, billable_metric: Orb::Models::Price::GroupedAllocationPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::GroupedAllocationPrice ...
    # in {model_type: "grouped_with_prorated_minimum", id: String, billable_metric: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::GroupedWithProratedMinimumPrice ...
    # in {model_type: "grouped_with_metered_minimum", id: String, billable_metric: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::GroupedWithMeteredMinimumPrice ...
    # in {model_type: "matrix_with_display_name", id: String, billable_metric: Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::MatrixWithDisplayNamePrice ...
    # in {model_type: "bulk_with_proration", id: String, billable_metric: Orb::Models::Price::BulkWithProrationPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::BulkWithProrationPrice ...
    # in {model_type: "grouped_tiered_package", id: String, billable_metric: Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::GroupedTieredPackagePrice ...
    # in {model_type: "max_group_tiered_package", id: String, billable_metric: Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::MaxGroupTieredPackagePrice ...
    # in {model_type: "scalable_matrix_with_unit_pricing", id: String, billable_metric: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::ScalableMatrixWithUnitPricingPrice ...
    # in {model_type: "scalable_matrix_with_tiered_pricing", id: String, billable_metric: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration}
    #   # Orb::Models::Price::ScalableMatrixWithTieredPricingPrice ...
    # in {model_type: "cumulative_grouped_bulk", id: String, billable_metric: Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric, billing_cycle_configuration: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration}
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

      variant :scalable_matrix_with_unit_pricing,
              -> {
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice
              }

      variant :scalable_matrix_with_tiered_pricing,
              -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice }

      variant :cumulative_grouped_bulk, -> { Orb::Models::Price::CumulativeGroupedBulkPrice }

      # @example
      # ```ruby
      # unit_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::UnitPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::UnitPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::UnitPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class UnitPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::UnitPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::UnitPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::UnitPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Models::Price::UnitPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::UnitPrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::UnitPrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::UnitPrice::Item]
        required :item, -> { Orb::Models::Price::UnitPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::UnitPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::UnitPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::UnitPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitPrice::UnitConfig]
        required :unit_config, -> { Orb::Models::Price::UnitPrice::UnitConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::UnitPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::UnitPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::UnitPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::UnitPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::UnitPrice::Item]
        #   # @param maximum [Orb::Models::Price::UnitPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::UnitPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::UnitPrice::PriceType]
        #   # @param unit_config [Orb::Models::Price::UnitPrice::UnitConfig]
        #   # @param dimensional_price_configuration [Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # unit_config => {
        #   unit_amount: String
        # }
        # ```
        class UnitConfig < Orb::BaseModel
          # @!attribute unit_amount
          #   Rate per unit of usage
          #
          #   @return [String]
          required :unit_amount, String

          # @!parse
          #   # @param unit_amount [String]
          #   #
          #   def initialize(unit_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # package_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::PackagePrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::PackagePrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::PackagePrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class PackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::PackagePrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::PackagePrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::PackagePrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Models::Price::PackagePrice::BillingCycleConfiguration
                 }

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
        #   @return [Orb::Models::Price::PackagePrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::PackagePrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::PackagePrice::Item]
        required :item, -> { Orb::Models::Price::PackagePrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::PackagePrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::PackagePrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::PackagePrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::PackagePrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::PackagePrice::PackageConfig]
        required :package_config, -> { Orb::Models::Price::PackagePrice::PackageConfig }

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
        #   @return [Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::PackagePrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::PackagePrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::PackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::PackagePrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::PackagePrice::Item]
        #   # @param maximum [Orb::Models::Price::PackagePrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::PackagePrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param package_config [Orb::Models::Price::PackagePrice::PackageConfig]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::PackagePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # package_config => {
        #   package_amount: String,
        #   package_size: Integer
        # }
        # ```
        class PackageConfig < Orb::BaseModel
          # @!attribute package_amount
          #   A currency amount to rate usage by
          #
          #   @return [String]
          required :package_amount, String

          # @!attribute package_size
          #   An integer amount to represent package size. For example, 1000 here would divide
          #     usage by 1000 before multiplying by package_amount in rating
          #
          #   @return [Integer]
          required :package_size, Integer

          # @!parse
          #   # @param package_amount [String]
          #   # @param package_size [Integer]
          #   #
          #   def initialize(package_amount:, package_size:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # matrix_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::MatrixPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::MatrixPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class MatrixPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::MatrixPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::MatrixPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::MatrixPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Models::Price::MatrixPrice::BillingCycleConfiguration
                 }

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
        #   @return [Orb::Models::Price::MatrixPrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::MatrixPrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::MatrixPrice::Item]
        required :item, -> { Orb::Models::Price::MatrixPrice::Item }

        # @!attribute matrix_config
        #
        #   @return [Orb::Models::Price::MatrixPrice::MatrixConfig]
        required :matrix_config, -> { Orb::Models::Price::MatrixPrice::MatrixConfig }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::MatrixPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::MatrixPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::MatrixPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::MatrixPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::MatrixPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::MatrixPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::MatrixPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::MatrixPrice::Item]
        #   # @param matrix_config [Orb::Models::Price::MatrixPrice::MatrixConfig]
        #   # @param maximum [Orb::Models::Price::MatrixPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::MatrixPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MatrixPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # matrix_config => {
        #   default_unit_amount: String,
        #   dimensions: -> { Orb::ArrayOf[String, nil?: true] === _1 },
        #   matrix_values: -> { Orb::ArrayOf[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue] === _1 }
        # }
        # ```
        class MatrixConfig < Orb::BaseModel
          # @!attribute default_unit_amount
          #   Default per unit rate for any usage not bucketed into a specified matrix_value
          #
          #   @return [String]
          required :default_unit_amount, String

          # @!attribute dimensions
          #   One or two event property values to evaluate matrix groups by
          #
          #   @return [Array<String, nil>]
          required :dimensions, Orb::ArrayOf[String, nil?: true]

          # @!attribute matrix_values
          #   Matrix values for specified matrix grouping keys
          #
          #   @return [Array<Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue>]
          required :matrix_values,
                   -> {
                     Orb::ArrayOf[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]
                   }

          # @!parse
          #   # @param default_unit_amount [String]
          #   # @param dimensions [Array<String, nil>]
          #   # @param matrix_values [Array<Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue>]
          #   #
          #   def initialize(default_unit_amount:, dimensions:, matrix_values:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # matrix_value => {
          #   dimension_values: -> { Orb::ArrayOf[String, nil?: true] === _1 },
          #   unit_amount: String
          # }
          # ```
          class MatrixValue < Orb::BaseModel
            # @!attribute dimension_values
            #   One or two matrix keys to filter usage to this Matrix value by. For example,
            #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            #     instance tier.
            #
            #   @return [Array<String, nil>]
            required :dimension_values, Orb::ArrayOf[String, nil?: true]

            # @!attribute unit_amount
            #   Unit price for the specified dimension_values
            #
            #   @return [String]
            required :unit_amount, String

            # @!parse
            #   # @param dimension_values [Array<String, nil>]
            #   # @param unit_amount [String]
            #   #
            #   def initialize(dimension_values:, unit_amount:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # tiered_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::TieredPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::TieredPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::TieredPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class TieredPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::TieredPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Models::Price::TieredPrice::BillingCycleConfiguration
                 }

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
        #   @return [Orb::Models::Price::TieredPrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::TieredPrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredPrice::Item]
        required :item, -> { Orb::Models::Price::TieredPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::TieredPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::TieredPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPrice::TieredConfig]
        required :tiered_config, -> { Orb::Models::Price::TieredPrice::TieredConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::TieredPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::TieredPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::TieredPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::TieredPrice::Item]
        #   # @param maximum [Orb::Models::Price::TieredPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::TieredPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredPrice::PriceType]
        #   # @param tiered_config [Orb::Models::Price::TieredPrice::TieredConfig]
        #   # @param dimensional_price_configuration [Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # tiered_config => {
        #   tiers: -> { Orb::ArrayOf[Orb::Models::Price::TieredPrice::TieredConfig::Tier] === _1 }
        # }
        # ```
        class TieredConfig < Orb::BaseModel
          # @!attribute tiers
          #   Tiers for rating based on total usage quantities into the specified tier
          #
          #   @return [Array<Orb::Models::Price::TieredPrice::TieredConfig::Tier>]
          required :tiers, -> { Orb::ArrayOf[Orb::Models::Price::TieredPrice::TieredConfig::Tier] }

          # @!parse
          #   # @param tiers [Array<Orb::Models::Price::TieredPrice::TieredConfig::Tier>]
          #   #
          #   def initialize(tiers:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # tier => {
          #   first_unit: Float,
          #   unit_amount: String,
          #   last_unit: Float
          # }
          # ```
          class Tier < Orb::BaseModel
            # @!attribute first_unit
            #   Inclusive tier starting value
            #
            #   @return [Float]
            required :first_unit, Float

            # @!attribute unit_amount
            #   Amount per unit
            #
            #   @return [String]
            required :unit_amount, String

            # @!attribute last_unit
            #   Exclusive tier ending value. If null, this is treated as the last tier
            #
            #   @return [Float, nil]
            optional :last_unit, Float, nil?: true

            # @!parse
            #   # @param first_unit [Float]
            #   # @param unit_amount [String]
            #   # @param last_unit [Float, nil]
            #   #
            #   def initialize(first_unit:, unit_amount:, last_unit: nil, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # tiered_bps_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::TieredBpsPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::TieredBpsPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class TieredBpsPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredBpsPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::TieredBpsPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::TieredBpsPrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::TieredBpsPrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredBpsPrice::Item]
        required :item, -> { Orb::Models::Price::TieredBpsPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredBpsPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::TieredBpsPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredBpsPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::TieredBpsPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredBpsPrice::TieredBpsConfig]
        required :tiered_bps_config, -> { Orb::Models::Price::TieredBpsPrice::TieredBpsConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::TieredBpsPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredBpsPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::TieredBpsPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::TieredBpsPrice::Item]
        #   # @param maximum [Orb::Models::Price::TieredBpsPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::TieredBpsPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredBpsPrice::PriceType]
        #   # @param tiered_bps_config [Orb::Models::Price::TieredBpsPrice::TieredBpsConfig]
        #   # @param dimensional_price_configuration [Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # tiered_bps_config => {
        #   tiers: -> { Orb::ArrayOf[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier] === _1 }
        # }
        # ```
        class TieredBpsConfig < Orb::BaseModel
          # @!attribute tiers
          #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          #     tiers
          #
          #   @return [Array<Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier>]
          required :tiers, -> { Orb::ArrayOf[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier] }

          # @!parse
          #   # @param tiers [Array<Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier>]
          #   #
          #   def initialize(tiers:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # tier => {
          #   bps: Float,
          #   minimum_amount: String,
          #   maximum_amount: String,
          #   per_unit_maximum: String
          # }
          # ```
          class Tier < Orb::BaseModel
            # @!attribute bps
            #   Per-event basis point rate
            #
            #   @return [Float]
            required :bps, Float

            # @!attribute minimum_amount
            #   Inclusive tier starting value
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute maximum_amount
            #   Exclusive tier ending value
            #
            #   @return [String, nil]
            optional :maximum_amount, String, nil?: true

            # @!attribute per_unit_maximum
            #   Per unit maximum to charge
            #
            #   @return [String, nil]
            optional :per_unit_maximum, String, nil?: true

            # @!parse
            #   # @param bps [Float]
            #   # @param minimum_amount [String]
            #   # @param maximum_amount [String, nil]
            #   # @param per_unit_maximum [String, nil]
            #   #
            #   def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # bps_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::BpsPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::BpsPrice::BillingCycleConfiguration,
      #   bps_config: Orb::Models::Price::BpsPrice::BpsConfig,
      #   cadence: Orb::Models::Price::BpsPrice::Cadence,
      #   **_
      # }
      # ```
      class BpsPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::BpsPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::BpsPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::BpsPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Models::Price::BpsPrice::BillingCycleConfiguration }

        # @!attribute bps_config
        #
        #   @return [Orb::Models::Price::BpsPrice::BpsConfig]
        required :bps_config, -> { Orb::Models::Price::BpsPrice::BpsConfig }

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
        #   @return [Orb::Models::Price::BpsPrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::BpsPrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::BpsPrice::Item]
        required :item, -> { Orb::Models::Price::BpsPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::BpsPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::BpsPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::BpsPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::BpsPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::BpsPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::BpsPrice::BillingCycleConfiguration]
        #   # @param bps_config [Orb::Models::Price::BpsPrice::BpsConfig]
        #   # @param cadence [Symbol, Orb::Models::Price::BpsPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::BpsPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::BpsPrice::Item]
        #   # @param maximum [Orb::Models::Price::BpsPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::BpsPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BpsPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # bps_config => {
        #   bps: Float,
        #   per_unit_maximum: String
        # }
        # ```
        class BpsConfig < Orb::BaseModel
          # @!attribute bps
          #   Basis point take rate per event
          #
          #   @return [Float]
          required :bps, Float

          # @!attribute per_unit_maximum
          #   Optional currency amount maximum to cap spend per event
          #
          #   @return [String, nil]
          optional :per_unit_maximum, String, nil?: true

          # @!parse
          #   # @param bps [Float]
          #   # @param per_unit_maximum [String, nil]
          #   #
          #   def initialize(bps:, per_unit_maximum: nil, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # bulk_bps_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::BulkBpsPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration,
      #   bulk_bps_config: Orb::Models::Price::BulkBpsPrice::BulkBpsConfig,
      #   cadence: Orb::Models::Price::BulkBpsPrice::Cadence,
      #   **_
      # }
      # ```
      class BulkBpsPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::BulkBpsPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::BulkBpsPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration
                 }

        # @!attribute bulk_bps_config
        #
        #   @return [Orb::Models::Price::BulkBpsPrice::BulkBpsConfig]
        required :bulk_bps_config, -> { Orb::Models::Price::BulkBpsPrice::BulkBpsConfig }

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
        #   @return [Orb::Models::Price::BulkBpsPrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::BulkBpsPrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::BulkBpsPrice::Item]
        required :item, -> { Orb::Models::Price::BulkBpsPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::BulkBpsPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::BulkBpsPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkBpsPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::BulkBpsPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::BulkBpsPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration]
        #   # @param bulk_bps_config [Orb::Models::Price::BulkBpsPrice::BulkBpsConfig]
        #   # @param cadence [Symbol, Orb::Models::Price::BulkBpsPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::BulkBpsPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::BulkBpsPrice::Item]
        #   # @param maximum [Orb::Models::Price::BulkBpsPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::BulkBpsPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BulkBpsPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # bulk_bps_config => {
        #   tiers: -> { Orb::ArrayOf[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier] === _1 }
        # }
        # ```
        class BulkBpsConfig < Orb::BaseModel
          # @!attribute tiers
          #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          #     tier based on total volume
          #
          #   @return [Array<Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier>]
          required :tiers, -> { Orb::ArrayOf[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier] }

          # @!parse
          #   # @param tiers [Array<Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier>]
          #   #
          #   def initialize(tiers:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # tier => {
          #   bps: Float,
          #   maximum_amount: String,
          #   per_unit_maximum: String
          # }
          # ```
          class Tier < Orb::BaseModel
            # @!attribute bps
            #   Basis points to rate on
            #
            #   @return [Float]
            required :bps, Float

            # @!attribute maximum_amount
            #   Upper bound for tier
            #
            #   @return [String, nil]
            optional :maximum_amount, String, nil?: true

            # @!attribute per_unit_maximum
            #   The maximum amount to charge for any one event
            #
            #   @return [String, nil]
            optional :per_unit_maximum, String, nil?: true

            # @!parse
            #   # @param bps [Float]
            #   # @param maximum_amount [String, nil]
            #   # @param per_unit_maximum [String, nil]
            #   #
            #   def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # bulk_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::BulkPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::BulkPrice::BillingCycleConfiguration,
      #   bulk_config: Orb::Models::Price::BulkPrice::BulkConfig,
      #   cadence: Orb::Models::Price::BulkPrice::Cadence,
      #   **_
      # }
      # ```
      class BulkPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::BulkPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::BulkPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::BulkPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Models::Price::BulkPrice::BillingCycleConfiguration }

        # @!attribute bulk_config
        #
        #   @return [Orb::Models::Price::BulkPrice::BulkConfig]
        required :bulk_config, -> { Orb::Models::Price::BulkPrice::BulkConfig }

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
        #   @return [Orb::Models::Price::BulkPrice::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Models::Price::BulkPrice::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::BulkPrice::Item]
        required :item, -> { Orb::Models::Price::BulkPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::BulkPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::BulkPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::BulkPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::BulkPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::BulkPrice::BillingCycleConfiguration]
        #   # @param bulk_config [Orb::Models::Price::BulkPrice::BulkConfig]
        #   # @param cadence [Symbol, Orb::Models::Price::BulkPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::BulkPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::BulkPrice::Item]
        #   # @param maximum [Orb::Models::Price::BulkPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::BulkPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BulkPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # bulk_config => {
        #   tiers: -> { Orb::ArrayOf[Orb::Models::Price::BulkPrice::BulkConfig::Tier] === _1 }
        # }
        # ```
        class BulkConfig < Orb::BaseModel
          # @!attribute tiers
          #   Bulk tiers for rating based on total usage volume
          #
          #   @return [Array<Orb::Models::Price::BulkPrice::BulkConfig::Tier>]
          required :tiers, -> { Orb::ArrayOf[Orb::Models::Price::BulkPrice::BulkConfig::Tier] }

          # @!parse
          #   # @param tiers [Array<Orb::Models::Price::BulkPrice::BulkConfig::Tier>]
          #   #
          #   def initialize(tiers:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # tier => {
          #   unit_amount: String,
          #   maximum_units: Float
          # }
          # ```
          class Tier < Orb::BaseModel
            # @!attribute unit_amount
            #   Amount per unit
            #
            #   @return [String]
            required :unit_amount, String

            # @!attribute maximum_units
            #   Upper bound for this tier
            #
            #   @return [Float, nil]
            optional :maximum_units, Float, nil?: true

            # @!parse
            #   # @param unit_amount [String]
            #   # @param maximum_units [Float, nil]
            #   #
            #   def initialize(unit_amount:, maximum_units: nil, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # threshold_total_amount_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::ThresholdTotalAmountPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class ThresholdTotalAmountPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::Item]
        required :item, -> { Orb::Models::Price::ThresholdTotalAmountPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::ThresholdTotalAmountPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::ThresholdTotalAmountPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::ThresholdTotalAmountPrice::Item]
        #   # @param maximum [Orb::Models::Price::ThresholdTotalAmountPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::ThresholdTotalAmountPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType]
        #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # tiered_package_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::TieredPackagePrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::TieredPackagePrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class TieredPackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredPackagePrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::TieredPackagePrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::TieredPackagePrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> {
                   Orb::Models::Price::TieredPackagePrice::CreditAllocation
                 },
                 nil?: true

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
        #   @return [Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredPackagePrice::Item]
        required :item, -> { Orb::Models::Price::TieredPackagePrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredPackagePrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::TieredPackagePrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPackagePrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::TieredPackagePrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::TieredPackagePrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredPackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::TieredPackagePrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::TieredPackagePrice::Item]
        #   # @param maximum [Orb::Models::Price::TieredPackagePrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::TieredPackagePrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredPackagePrice::PriceType]
        #   # @param tiered_package_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # grouped_tiered_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::GroupedTieredPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::GroupedTieredPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class GroupedTieredPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedTieredPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::GroupedTieredPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::GroupedTieredPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> {
                   Orb::Models::Price::GroupedTieredPrice::CreditAllocation
                 },
                 nil?: true

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
        #   @return [Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedTieredPrice::Item]
        required :item, -> { Orb::Models::Price::GroupedTieredPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedTieredPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::GroupedTieredPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedTieredPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::GroupedTieredPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::GroupedTieredPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedTieredPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::GroupedTieredPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_tiered_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::GroupedTieredPrice::Item]
        #   # @param maximum [Orb::Models::Price::GroupedTieredPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::GroupedTieredPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedTieredPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # tiered_with_minimum_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::TieredWithMinimumPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::TieredWithMinimumPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class TieredWithMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Models::Price::TieredWithMinimumPrice::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::Item]
        required :item, -> { Orb::Models::Price::TieredWithMinimumPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::TieredWithMinimumPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::TieredWithMinimumPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::TieredWithMinimumPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredWithMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::TieredWithMinimumPrice::Item]
        #   # @param maximum [Orb::Models::Price::TieredWithMinimumPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::TieredWithMinimumPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredWithMinimumPrice::PriceType]
        #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # tiered_package_with_minimum_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class TieredPackageWithMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::Item]
        required :item, -> { Orb::Models::Price::TieredPackageWithMinimumPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::TieredPackageWithMinimumPrice::Item]
        #   # @param maximum [Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType]
        #   # @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # package_with_allocation_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::PackageWithAllocationPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::PackageWithAllocationPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class PackageWithAllocationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::PackageWithAllocationPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::Item]
        required :item, -> { Orb::Models::Price::PackageWithAllocationPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::PackageWithAllocationPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::PackageWithAllocationPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::PackageWithAllocationPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::PackageWithAllocationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::PackageWithAllocationPrice::Item]
        #   # @param maximum [Orb::Models::Price::PackageWithAllocationPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::PackageWithAllocationPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::PackageWithAllocationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # unit_with_percent_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::UnitWithPercentPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::UnitWithPercentPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class UnitWithPercentPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::UnitWithPercentPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::UnitWithPercentPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::UnitWithPercentPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> {
                   Orb::Models::Price::UnitWithPercentPrice::CreditAllocation
                 },
                 nil?: true

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
        #   @return [Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::UnitWithPercentPrice::Item]
        required :item, -> { Orb::Models::Price::UnitWithPercentPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::UnitWithPercentPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::UnitWithPercentPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitWithPercentPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::UnitWithPercentPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::UnitWithPercentPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::UnitWithPercentPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::UnitWithPercentPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::UnitWithPercentPrice::Item]
        #   # @param maximum [Orb::Models::Price::UnitWithPercentPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::UnitWithPercentPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::UnitWithPercentPrice::PriceType]
        #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # matrix_with_allocation_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::MatrixWithAllocationPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class MatrixWithAllocationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::Item]
        required :item, -> { Orb::Models::Price::MatrixWithAllocationPrice::Item }

        # @!attribute matrix_with_allocation_config
        #
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig]
        required :matrix_with_allocation_config,
                 -> { Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::MatrixWithAllocationPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::MatrixWithAllocationPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::MatrixWithAllocationPrice::Item]
        #   # @param matrix_with_allocation_config [Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig]
        #   # @param maximum [Orb::Models::Price::MatrixWithAllocationPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::MatrixWithAllocationPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # matrix_with_allocation_config => {
        #   allocation: Float,
        #   default_unit_amount: String,
        #   dimensions: -> { Orb::ArrayOf[String, nil?: true] === _1 },
        #   matrix_values: -> { Orb::ArrayOf[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue] === _1 }
        # }
        # ```
        class MatrixWithAllocationConfig < Orb::BaseModel
          # @!attribute allocation
          #   Allocation to be used to calculate the price
          #
          #   @return [Float]
          required :allocation, Float

          # @!attribute default_unit_amount
          #   Default per unit rate for any usage not bucketed into a specified matrix_value
          #
          #   @return [String]
          required :default_unit_amount, String

          # @!attribute dimensions
          #   One or two event property values to evaluate matrix groups by
          #
          #   @return [Array<String, nil>]
          required :dimensions, Orb::ArrayOf[String, nil?: true]

          # @!attribute matrix_values
          #   Matrix values for specified matrix grouping keys
          #
          #   @return [Array<Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>]
          required :matrix_values,
                   -> {
                     Orb::ArrayOf[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
                   }

          # @!parse
          #   # @param allocation [Float]
          #   # @param default_unit_amount [String]
          #   # @param dimensions [Array<String, nil>]
          #   # @param matrix_values [Array<Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>]
          #   #
          #   def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @example
          # ```ruby
          # matrix_value => {
          #   dimension_values: -> { Orb::ArrayOf[String, nil?: true] === _1 },
          #   unit_amount: String
          # }
          # ```
          class MatrixValue < Orb::BaseModel
            # @!attribute dimension_values
            #   One or two matrix keys to filter usage to this Matrix value by. For example,
            #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            #     instance tier.
            #
            #   @return [Array<String, nil>]
            required :dimension_values, Orb::ArrayOf[String, nil?: true]

            # @!attribute unit_amount
            #   Unit price for the specified dimension_values
            #
            #   @return [String]
            required :unit_amount, String

            # @!parse
            #   # @param dimension_values [Array<String, nil>]
            #   # @param unit_amount [String]
            #   #
            #   def initialize(dimension_values:, unit_amount:, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # tiered_with_proration_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::TieredWithProrationPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::TieredWithProrationPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class TieredWithProrationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredWithProrationPrice::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Models::Price::TieredWithProrationPrice::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::TieredWithProrationPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::TieredWithProrationPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredWithProrationPrice::Item]
        required :item, -> { Orb::Models::Price::TieredWithProrationPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredWithProrationPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::TieredWithProrationPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredWithProrationPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::TieredWithProrationPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::TieredWithProrationPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::TieredWithProrationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::TieredWithProrationPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::TieredWithProrationPrice::Item]
        #   # @param maximum [Orb::Models::Price::TieredWithProrationPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::TieredWithProrationPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::TieredWithProrationPrice::PriceType]
        #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # unit_with_proration_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::UnitWithProrationPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::UnitWithProrationPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class UnitWithProrationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::UnitWithProrationPrice::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Models::Price::UnitWithProrationPrice::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::UnitWithProrationPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::UnitWithProrationPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::UnitWithProrationPrice::Item]
        required :item, -> { Orb::Models::Price::UnitWithProrationPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::UnitWithProrationPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::UnitWithProrationPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitWithProrationPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::UnitWithProrationPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::UnitWithProrationPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::UnitWithProrationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::UnitWithProrationPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::UnitWithProrationPrice::Item]
        #   # @param maximum [Orb::Models::Price::UnitWithProrationPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::UnitWithProrationPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::UnitWithProrationPrice::PriceType]
        #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # grouped_allocation_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::GroupedAllocationPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::GroupedAllocationPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class GroupedAllocationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedAllocationPrice::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Models::Price::GroupedAllocationPrice::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::GroupedAllocationPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::GroupedAllocationPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedAllocationPrice::Item]
        required :item, -> { Orb::Models::Price::GroupedAllocationPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedAllocationPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::GroupedAllocationPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedAllocationPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::GroupedAllocationPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::GroupedAllocationPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedAllocationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::GroupedAllocationPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::GroupedAllocationPrice::Item]
        #   # @param maximum [Orb::Models::Price::GroupedAllocationPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::GroupedAllocationPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedAllocationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # grouped_with_prorated_minimum_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class GroupedWithProratedMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::Item]
        required :item, -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::GroupedWithProratedMinimumPrice::Item]
        #   # @param maximum [Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # grouped_with_metered_minimum_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class GroupedWithMeteredMinimumPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item]
        required :item, -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item]
        #   # @param maximum [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # matrix_with_display_name_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class MatrixWithDisplayNamePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::Item]
        required :item, -> { Orb::Models::Price::MatrixWithDisplayNamePrice::Item }

        # @!attribute matrix_with_display_name_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :matrix_with_display_name_config, Orb::HashOf[Orb::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::MatrixWithDisplayNamePrice::Item]
        #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
        #   # @param maximum [Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # bulk_with_proration_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::BulkWithProrationPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration,
      #   bulk_with_proration_config: -> { Orb::HashOf[Orb::Unknown] === _1 },
      #   cadence: Orb::Models::Price::BulkWithProrationPrice::Cadence,
      #   **_
      # }
      # ```
      class BulkWithProrationPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::BulkWithProrationPrice::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Models::Price::BulkWithProrationPrice::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::BulkWithProrationPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::BulkWithProrationPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::BulkWithProrationPrice::Item]
        required :item, -> { Orb::Models::Price::BulkWithProrationPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::BulkWithProrationPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::BulkWithProrationPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkWithProrationPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::BulkWithProrationPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::BulkWithProrationPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration]
        #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #   # @param cadence [Symbol, Orb::Models::Price::BulkWithProrationPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::BulkWithProrationPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::BulkWithProrationPrice::Item]
        #   # @param maximum [Orb::Models::Price::BulkWithProrationPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::BulkWithProrationPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::BulkWithProrationPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # grouped_tiered_package_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::GroupedTieredPackagePrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class GroupedTieredPackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::Item]
        required :item, -> { Orb::Models::Price::GroupedTieredPackagePrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::GroupedTieredPackagePrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::GroupedTieredPackagePrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::GroupedTieredPackagePrice::Item]
        #   # @param maximum [Orb::Models::Price::GroupedTieredPackagePrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::GroupedTieredPackagePrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # max_group_tiered_package_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class MaxGroupTieredPackagePrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::Item]
        required :item, -> { Orb::Models::Price::MaxGroupTieredPackagePrice::Item }

        # @!attribute max_group_tiered_package_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :max_group_tiered_package_config, Orb::HashOf[Orb::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::MaxGroupTieredPackagePrice::Item]
        #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param maximum [Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # scalable_matrix_with_unit_pricing_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class ScalableMatrixWithUnitPricingPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item]
        required :item, -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item]
        #   # @param maximum [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType]
        #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # scalable_matrix_with_tiered_pricing_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class ScalableMatrixWithTieredPricingPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item]
        required :item, -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum, nil]
        required :maximum,
                 -> {
                   Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum
                 },
                 nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum, nil]
        required :minimum,
                 -> {
                   Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum
                 },
                 nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> {
                   Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration
                 },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation, nil]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item]
        #   # @param maximum [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType]
        #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #   # @param dimensional_price_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # cumulative_grouped_bulk_price => {
      #   id: String,
      #   billable_metric: Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric,
      #   billing_cycle_configuration: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration,
      #   cadence: Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence,
      #   conversion_rate: Float,
      #   **_
      # }
      # ```
      class CumulativeGroupedBulkPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric, nil]
        required :billable_metric,
                 -> { Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation },
                 nil?: true

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
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::Item]
        required :item, -> { Orb::Models::Price::CumulativeGroupedBulkPrice::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum, nil]
        required :maximum, -> { Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param billable_metric [Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric, nil]
        #   # @param billing_cycle_configuration [Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration]
        #   # @param cadence [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence]
        #   # @param conversion_rate [Float, nil]
        #   # @param created_at [Time]
        #   # @param credit_allocation [Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation, nil]
        #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
        #   # @param currency [String]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
        #   # @param item [Orb::Models::Price::CumulativeGroupedBulkPrice::Item]
        #   # @param maximum [Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param minimum [Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param price_type [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType]
        #   # @param dimensional_price_configuration [Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration, nil]
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

        # @example
        # ```ruby
        # billable_metric => {
        #   id: String
        # }
        # ```
        class BillableMetric < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # billing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit
        # }
        # ```
        class BillingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

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

        # @example
        # ```ruby
        # credit_allocation => {
        #   allows_rollover: Orb::BooleanModel,
        #   currency: String
        # }
        # ```
        class CreditAllocation < Orb::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::BooleanModel

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!parse
          #   # @param allows_rollover [Boolean]
          #   # @param currency [String]
          #   #
          #   def initialize(allows_rollover:, currency:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # invoicing_cycle_configuration => {
        #   duration: Integer,
        #   duration_unit: Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit
        # }
        # ```
        class InvoicingCycleConfiguration < Orb::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!parse
          #   # @param duration [Integer]
          #   # @param duration_unit [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
          #   #
          #   def initialize(duration:, duration_unit:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case duration_unit
          # in :day
          #   # ...
          # in :month
          #   # ...
          # end
          # ```
          class DurationUnit < Orb::Enum
            DAY = :day
            MONTH = :month

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        # @example
        # ```ruby
        # item => {
        #   id: String,
        #   name: String
        # }
        # ```
        class Item < Orb::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # maximum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   maximum_amount: String
        # }
        # ```
        class Maximum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #     maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # minimum => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   minimum_amount: String
        # }
        # ```
        class Minimum < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #     minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param minimum_amount [String]
          #   #
          #   def initialize(applies_to_price_ids:, minimum_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
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

        # @example
        # ```ruby
        # dimensional_price_configuration => {
        #   dimension_values: -> { Orb::ArrayOf[String] === _1 },
        #   dimensional_price_group_id: String
        # }
        # ```
        class DimensionalPriceConfiguration < Orb::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!parse
          #   # @param dimension_values [Array<String>]
          #   # @param dimensional_price_group_id [String]
          #   #
          #   def initialize(dimension_values:, dimensional_price_group_id:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
