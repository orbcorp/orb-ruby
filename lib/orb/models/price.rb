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
    #
    # @see Orb::Resources::Prices#create
    module Price
      extend Orb::Internal::Type::Union

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

      class UnitPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_config:, dimensional_price_configuration: nil, model_type: :unit)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::UnitPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::UnitPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::UnitPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::UnitPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::UnitPrice::Item]
        #   @param maximum [Orb::Models::Price::UnitPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::UnitPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::UnitPrice::PriceType]
        #   @param unit_config [Orb::Models::Price::UnitPrice::UnitConfig]
        #   @param dimensional_price_configuration [Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :unit]

        # @see Orb::Models::Price::UnitPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::UnitPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitPrice#cadence
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

        # @see Orb::Models::Price::UnitPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::UnitPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::UnitPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::UnitPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::UnitPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitPrice#unit_config
        class UnitConfig < Orb::Internal::Type::BaseModel
          # @!attribute unit_amount
          #   Rate per unit of usage
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(unit_amount:)
          #   @param unit_amount [String]
        end

        # @see Orb::Models::Price::UnitPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class PackagePrice < Orb::Internal::Type::BaseModel
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
        required :billing_cycle_configuration, -> { Orb::Models::Price::PackagePrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_config:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :package)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::PackagePrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::PackagePrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::PackagePrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::PackagePrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::PackagePrice::Item]
        #   @param maximum [Orb::Models::Price::PackagePrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::PackagePrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param package_config [Orb::Models::Price::PackagePrice::PackageConfig]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::PackagePrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :package]

        # @see Orb::Models::Price::PackagePrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::PackagePrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::PackagePrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::PackagePrice#cadence
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

        # @see Orb::Models::Price::PackagePrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::PackagePrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::PackagePrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::PackagePrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::PackagePrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::PackagePrice#package_config
        class PackageConfig < Orb::Internal::Type::BaseModel
          # @!attribute package_amount
          #   A currency amount to rate usage by
          #
          #   @return [String]
          required :package_amount, String

          # @!attribute package_size
          #   An integer amount to represent package size. For example, 1000 here would divide
          #   usage by 1000 before multiplying by package_amount in rating
          #
          #   @return [Integer]
          required :package_size, Integer

          # @!method initialize(package_amount:, package_size:)
          #   @param package_amount [String]
          #   @param package_size [Integer]
        end

        # @see Orb::Models::Price::PackagePrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::PackagePrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class MatrixPrice < Orb::Internal::Type::BaseModel
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
        required :billing_cycle_configuration, -> { Orb::Models::Price::MatrixPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::MatrixPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::MatrixPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::MatrixPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::MatrixPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::MatrixPrice::Item]
        #   @param matrix_config [Orb::Models::Price::MatrixPrice::MatrixConfig]
        #   @param maximum [Orb::Models::Price::MatrixPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::MatrixPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::MatrixPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :matrix]

        # @see Orb::Models::Price::MatrixPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::MatrixPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixPrice#cadence
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

        # @see Orb::Models::Price::MatrixPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::MatrixPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::MatrixPrice#matrix_config
        class MatrixConfig < Orb::Internal::Type::BaseModel
          # @!attribute default_unit_amount
          #   Default per unit rate for any usage not bucketed into a specified matrix_value
          #
          #   @return [String]
          required :default_unit_amount, String

          # @!attribute dimensions
          #   One or two event property values to evaluate matrix groups by
          #
          #   @return [Array<String, nil>]
          required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute matrix_values
          #   Matrix values for specified matrix grouping keys
          #
          #   @return [Array<Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue>]
          required :matrix_values,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue] }

          # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
          #   @param default_unit_amount [String]
          #   @param dimensions [Array<String, nil>]
          #   @param matrix_values [Array<Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue>]

          class MatrixValue < Orb::Internal::Type::BaseModel
            # @!attribute dimension_values
            #   One or two matrix keys to filter usage to this Matrix value by. For example,
            #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            #   instance tier.
            #
            #   @return [Array<String, nil>]
            required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

            # @!attribute unit_amount
            #   Unit price for the specified dimension_values
            #
            #   @return [String]
            required :unit_amount, String

            # @!method initialize(dimension_values:, unit_amount:)
            #   @param dimension_values [Array<String, nil>]
            #   @param unit_amount [String]
          end
        end

        # @see Orb::Models::Price::MatrixPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::MatrixPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::MatrixPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MatrixPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class TieredPrice < Orb::Internal::Type::BaseModel
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
        required :billing_cycle_configuration, -> { Orb::Models::Price::TieredPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_config:, dimensional_price_configuration: nil, model_type: :tiered)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::TieredPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::TieredPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::TieredPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::TieredPrice::Item]
        #   @param maximum [Orb::Models::Price::TieredPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::TieredPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::TieredPrice::PriceType]
        #   @param tiered_config [Orb::Models::Price::TieredPrice::TieredConfig]
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :tiered]

        # @see Orb::Models::Price::TieredPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPrice#cadence
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

        # @see Orb::Models::Price::TieredPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::TieredPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::TieredPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::TieredPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::TieredPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPrice#tiered_config
        class TieredConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for rating based on total usage quantities into the specified tier
          #
          #   @return [Array<Orb::Models::Price::TieredPrice::TieredConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Models::Price::TieredPrice::TieredConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Models::Price::TieredPrice::TieredConfig::Tier>]

          class Tier < Orb::Internal::Type::BaseModel
            # @!attribute first_unit
            #   Exclusive tier starting value
            #
            #   @return [Float]
            required :first_unit, Float

            # @!attribute unit_amount
            #   Amount per unit
            #
            #   @return [String]
            required :unit_amount, String

            # @!attribute last_unit
            #   Inclusive tier ending value. If null, this is treated as the last tier
            #
            #   @return [Float, nil]
            optional :last_unit, Float, nil?: true

            # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
            #   @param first_unit [Float]
            #   @param unit_amount [String]
            #   @param last_unit [Float, nil]
          end
        end

        # @see Orb::Models::Price::TieredPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class TieredBpsPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_bps_config:, dimensional_price_configuration: nil, model_type: :tiered_bps)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::TieredBpsPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::TieredBpsPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::TieredBpsPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::TieredBpsPrice::Item]
        #   @param maximum [Orb::Models::Price::TieredBpsPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::TieredBpsPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::TieredBpsPrice::PriceType]
        #   @param tiered_bps_config [Orb::Models::Price::TieredBpsPrice::TieredBpsConfig]
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :tiered_bps]

        # @see Orb::Models::Price::TieredBpsPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredBpsPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredBpsPrice#cadence
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

        # @see Orb::Models::Price::TieredBpsPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::TieredBpsPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredBpsPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::TieredBpsPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::TieredBpsPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::TieredBpsPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredBpsPrice#tiered_bps_config
        class TieredBpsConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          #   tiers
          #
          #   @return [Array<Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier>]

          class Tier < Orb::Internal::Type::BaseModel
            # @!attribute bps
            #   Per-event basis point rate
            #
            #   @return [Float]
            required :bps, Float

            # @!attribute minimum_amount
            #   Exclusive tier starting value
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute maximum_amount
            #   Inclusive tier ending value
            #
            #   @return [String, nil]
            optional :maximum_amount, String, nil?: true

            # @!attribute per_unit_maximum
            #   Per unit maximum to charge
            #
            #   @return [String, nil]
            optional :per_unit_maximum, String, nil?: true

            # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
            #   @param bps [Float]
            #   @param minimum_amount [String]
            #   @param maximum_amount [String, nil]
            #   @param per_unit_maximum [String, nil]
          end
        end

        # @see Orb::Models::Price::TieredBpsPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class BpsPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bps_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bps)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::BpsPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::BpsPrice::BillingCycleConfiguration]
        #   @param bps_config [Orb::Models::Price::BpsPrice::BpsConfig]
        #   @param cadence [Symbol, Orb::Models::Price::BpsPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::BpsPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::BpsPrice::Item]
        #   @param maximum [Orb::Models::Price::BpsPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::BpsPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::BpsPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :bps]

        # @see Orb::Models::Price::BpsPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::BpsPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BpsPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BpsPrice#bps_config
        class BpsConfig < Orb::Internal::Type::BaseModel
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

          # @!method initialize(bps:, per_unit_maximum: nil)
          #   @param bps [Float]
          #   @param per_unit_maximum [String, nil]
        end

        # @see Orb::Models::Price::BpsPrice#cadence
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

        # @see Orb::Models::Price::BpsPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::BpsPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BpsPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::BpsPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::BpsPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::BpsPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::BpsPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class BulkBpsPrice < Orb::Internal::Type::BaseModel
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
        required :billing_cycle_configuration, -> { Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration }

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_bps_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk_bps)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::BulkBpsPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration]
        #   @param bulk_bps_config [Orb::Models::Price::BulkBpsPrice::BulkBpsConfig]
        #   @param cadence [Symbol, Orb::Models::Price::BulkBpsPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::BulkBpsPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::BulkBpsPrice::Item]
        #   @param maximum [Orb::Models::Price::BulkBpsPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::BulkBpsPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::BulkBpsPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :bulk_bps]

        # @see Orb::Models::Price::BulkBpsPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::BulkBpsPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkBpsPrice#bulk_bps_config
        class BulkBpsConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          #   tier based on total volume
          #
          #   @return [Array<Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier>]
          required :tiers,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier>]

          class Tier < Orb::Internal::Type::BaseModel
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

            # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
            #   @param bps [Float]
            #   @param maximum_amount [String, nil]
            #   @param per_unit_maximum [String, nil]
          end
        end

        # @see Orb::Models::Price::BulkBpsPrice#cadence
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

        # @see Orb::Models::Price::BulkBpsPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::BulkBpsPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkBpsPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::BulkBpsPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::BulkBpsPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::BulkBpsPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::BulkBpsPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class BulkPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::BulkPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::BulkPrice::BillingCycleConfiguration]
        #   @param bulk_config [Orb::Models::Price::BulkPrice::BulkConfig]
        #   @param cadence [Symbol, Orb::Models::Price::BulkPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::BulkPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::BulkPrice::Item]
        #   @param maximum [Orb::Models::Price::BulkPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::BulkPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::BulkPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :bulk]

        # @see Orb::Models::Price::BulkPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::BulkPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkPrice#bulk_config
        class BulkConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Bulk tiers for rating based on total usage volume
          #
          #   @return [Array<Orb::Models::Price::BulkPrice::BulkConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Models::Price::BulkPrice::BulkConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Models::Price::BulkPrice::BulkConfig::Tier>]

          class Tier < Orb::Internal::Type::BaseModel
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

            # @!method initialize(unit_amount:, maximum_units: nil)
            #   @param unit_amount [String]
            #   @param maximum_units [Float, nil]
          end
        end

        # @see Orb::Models::Price::BulkPrice#cadence
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

        # @see Orb::Models::Price::BulkPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::BulkPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::BulkPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::BulkPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::BulkPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::BulkPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class ThresholdTotalAmountPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, threshold_total_amount_config:, dimensional_price_configuration: nil, model_type: :threshold_total_amount)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::ThresholdTotalAmountPrice::Item]
        #   @param maximum [Orb::Models::Price::ThresholdTotalAmountPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::ThresholdTotalAmountPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType]
        #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :threshold_total_amount]

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#cadence
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

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ThresholdTotalAmountPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class TieredPackagePrice < Orb::Internal::Type::BaseModel
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
        required :credit_allocation, -> { Orb::Models::Price::TieredPackagePrice::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_package_config:, dimensional_price_configuration: nil, model_type: :tiered_package)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::TieredPackagePrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::TieredPackagePrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::TieredPackagePrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::TieredPackagePrice::Item]
        #   @param maximum [Orb::Models::Price::TieredPackagePrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::TieredPackagePrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::TieredPackagePrice::PriceType]
        #   @param tiered_package_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :tiered_package]

        # @see Orb::Models::Price::TieredPackagePrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredPackagePrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPackagePrice#cadence
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

        # @see Orb::Models::Price::TieredPackagePrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::TieredPackagePrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPackagePrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::TieredPackagePrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::TieredPackagePrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::TieredPackagePrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackagePrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class GroupedTieredPrice < Orb::Internal::Type::BaseModel
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
        required :credit_allocation, -> { Orb::Models::Price::GroupedTieredPrice::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :grouped_tiered_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_tiered)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::GroupedTieredPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::GroupedTieredPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::GroupedTieredPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param grouped_tiered_config [Hash{Symbol=>Object}]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::GroupedTieredPrice::Item]
        #   @param maximum [Orb::Models::Price::GroupedTieredPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::GroupedTieredPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::GroupedTieredPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :grouped_tiered]

        # @see Orb::Models::Price::GroupedTieredPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedTieredPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedTieredPrice#cadence
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

        # @see Orb::Models::Price::GroupedTieredPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::GroupedTieredPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedTieredPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::GroupedTieredPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::GroupedTieredPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::GroupedTieredPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedTieredPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class TieredWithMinimumPrice < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::TieredWithMinimumPrice::BillableMetric }, nil?: true

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_with_minimum)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::TieredWithMinimumPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::TieredWithMinimumPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::TieredWithMinimumPrice::Item]
        #   @param maximum [Orb::Models::Price::TieredWithMinimumPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::TieredWithMinimumPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::TieredWithMinimumPrice::PriceType]
        #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :tiered_with_minimum]

        # @see Orb::Models::Price::TieredWithMinimumPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#cadence
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

        # @see Orb::Models::Price::TieredWithMinimumPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithMinimumPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class TieredPackageWithMinimumPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :tiered_package_with_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_package_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_package_with_minimum)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::TieredPackageWithMinimumPrice::Item]
        #   @param maximum [Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType]
        #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :tiered_package_with_minimum]

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#cadence
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

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimumPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class PackageWithAllocationPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :package_with_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_with_allocation_config:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :package_with_allocation)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::PackageWithAllocationPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::PackageWithAllocationPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::PackageWithAllocationPrice::Item]
        #   @param maximum [Orb::Models::Price::PackageWithAllocationPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::PackageWithAllocationPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param package_with_allocation_config [Hash{Symbol=>Object}]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::PackageWithAllocationPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :package_with_allocation]

        # @see Orb::Models::Price::PackageWithAllocationPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#cadence
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

        # @see Orb::Models::Price::PackageWithAllocationPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::PackageWithAllocationPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class UnitWithPercentPrice < Orb::Internal::Type::BaseModel
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
        required :credit_allocation, -> { Orb::Models::Price::UnitWithPercentPrice::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_with_percent_config:, dimensional_price_configuration: nil, model_type: :unit_with_percent)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::UnitWithPercentPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::UnitWithPercentPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::UnitWithPercentPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::UnitWithPercentPrice::Item]
        #   @param maximum [Orb::Models::Price::UnitWithPercentPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::UnitWithPercentPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::UnitWithPercentPrice::PriceType]
        #   @param unit_with_percent_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :unit_with_percent]

        # @see Orb::Models::Price::UnitWithPercentPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#cadence
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

        # @see Orb::Models::Price::UnitWithPercentPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithPercentPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class MatrixWithAllocationPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_allocation_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix_with_allocation)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::MatrixWithAllocationPrice::Item]
        #   @param matrix_with_allocation_config [Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig]
        #   @param maximum [Orb::Models::Price::MatrixWithAllocationPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::MatrixWithAllocationPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :matrix_with_allocation]

        # @see Orb::Models::Price::MatrixWithAllocationPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#cadence
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

        # @see Orb::Models::Price::MatrixWithAllocationPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#matrix_with_allocation_config
        class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
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
          required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute matrix_values
          #   Matrix values for specified matrix grouping keys
          #
          #   @return [Array<Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>]
          required :matrix_values,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue] }

          # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
          #   @param allocation [Float]
          #   @param default_unit_amount [String]
          #   @param dimensions [Array<String, nil>]
          #   @param matrix_values [Array<Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>]

          class MatrixValue < Orb::Internal::Type::BaseModel
            # @!attribute dimension_values
            #   One or two matrix keys to filter usage to this Matrix value by. For example,
            #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            #   instance tier.
            #
            #   @return [Array<String, nil>]
            required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

            # @!attribute unit_amount
            #   Unit price for the specified dimension_values
            #
            #   @return [String]
            required :unit_amount, String

            # @!method initialize(dimension_values:, unit_amount:)
            #   @param dimension_values [Array<String, nil>]
            #   @param unit_amount [String]
          end
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MatrixWithAllocationPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class TieredWithProrationPrice < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredWithProrationPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::TieredWithProrationPrice::BillableMetric }, nil?: true

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_with_proration_config:, dimensional_price_configuration: nil, model_type: :tiered_with_proration)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::TieredWithProrationPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::TieredWithProrationPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::TieredWithProrationPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::TieredWithProrationPrice::Item]
        #   @param maximum [Orb::Models::Price::TieredWithProrationPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::TieredWithProrationPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::TieredWithProrationPrice::PriceType]
        #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :tiered_with_proration]

        # @see Orb::Models::Price::TieredWithProrationPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#cadence
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

        # @see Orb::Models::Price::TieredWithProrationPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithProrationPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class UnitWithProrationPrice < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::UnitWithProrationPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::UnitWithProrationPrice::BillableMetric }, nil?: true

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_with_proration_config:, dimensional_price_configuration: nil, model_type: :unit_with_proration)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::UnitWithProrationPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::UnitWithProrationPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::UnitWithProrationPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::UnitWithProrationPrice::Item]
        #   @param maximum [Orb::Models::Price::UnitWithProrationPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::UnitWithProrationPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::UnitWithProrationPrice::PriceType]
        #   @param unit_with_proration_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :unit_with_proration]

        # @see Orb::Models::Price::UnitWithProrationPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#cadence
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

        # @see Orb::Models::Price::UnitWithProrationPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithProrationPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class GroupedAllocationPrice < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedAllocationPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::GroupedAllocationPrice::BillableMetric }, nil?: true

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_allocation_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_allocation)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::GroupedAllocationPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::GroupedAllocationPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::GroupedAllocationPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param grouped_allocation_config [Hash{Symbol=>Object}]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::GroupedAllocationPrice::Item]
        #   @param maximum [Orb::Models::Price::GroupedAllocationPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::GroupedAllocationPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::GroupedAllocationPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :grouped_allocation]

        # @see Orb::Models::Price::GroupedAllocationPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#cadence
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

        # @see Orb::Models::Price::GroupedAllocationPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedAllocationPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class GroupedWithProratedMinimumPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :grouped_with_prorated_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_prorated_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_with_prorated_minimum)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::GroupedWithProratedMinimumPrice::Item]
        #   @param maximum [Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :grouped_with_prorated_minimum]

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#cadence
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

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimumPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class GroupedWithMeteredMinimumPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :grouped_with_metered_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_metered_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_with_metered_minimum)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item]
        #   @param maximum [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :grouped_with_metered_minimum]

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#cadence
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

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimumPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class MatrixWithDisplayNamePrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :matrix_with_display_name_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_display_name_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix_with_display_name)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::MatrixWithDisplayNamePrice::Item]
        #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
        #   @param maximum [Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :matrix_with_display_name]

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#cadence
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

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MatrixWithDisplayNamePrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class BulkWithProrationPrice < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::BulkWithProrationPrice::BillableMetric, nil]
        required :billable_metric, -> { Orb::Models::Price::BulkWithProrationPrice::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration }

        # @!attribute bulk_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_with_proration_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk_with_proration)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::BulkWithProrationPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration]
        #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #   @param cadence [Symbol, Orb::Models::Price::BulkWithProrationPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::BulkWithProrationPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::BulkWithProrationPrice::Item]
        #   @param maximum [Orb::Models::Price::BulkWithProrationPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::BulkWithProrationPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::BulkWithProrationPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :bulk_with_proration]

        # @see Orb::Models::Price::BulkWithProrationPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#cadence
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

        # @see Orb::Models::Price::BulkWithProrationPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::BulkWithProrationPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class GroupedTieredPackagePrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_package_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_tiered_package)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::GroupedTieredPackagePrice::Item]
        #   @param maximum [Orb::Models::Price::GroupedTieredPackagePrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::GroupedTieredPackagePrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :grouped_tiered_package]

        # @see Orb::Models::Price::GroupedTieredPackagePrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#cadence
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

        # @see Orb::Models::Price::GroupedTieredPackagePrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedTieredPackagePrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class MaxGroupTieredPackagePrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :max_group_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, max_group_tiered_package_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :max_group_tiered_package)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::MaxGroupTieredPackagePrice::Item]
        #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
        #   @param maximum [Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :max_group_tiered_package]

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#cadence
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

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackagePrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class ScalableMatrixWithUnitPricingPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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
        required :scalable_matrix_with_unit_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, scalable_matrix_with_unit_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_unit_pricing)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item]
        #   @param maximum [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType]
        #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#cadence
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

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricingPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class ScalableMatrixWithTieredPricingPrice < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        required :maximum, -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum }, nil?: true

        # @!attribute maximum_amount
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
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum, nil]
        required :minimum, -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum }, nil?: true

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
        required :scalable_matrix_with_tiered_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, scalable_matrix_with_tiered_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_tiered_pricing)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation, nil]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item]
        #   @param maximum [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType]
        #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #   @param dimensional_price_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#cadence
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

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricingPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      class CumulativeGroupedBulkPrice < Orb::Internal::Type::BaseModel
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
        required :cumulative_grouped_bulk_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
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
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::Internal::Type::HashOf[String]

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

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, cumulative_grouped_bulk_config:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :cumulative_grouped_bulk)
        #   @param id [String]
        #   @param billable_metric [Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric, nil]
        #   @param billing_cycle_configuration [Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration]
        #   @param cadence [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence]
        #   @param conversion_rate [Float, nil]
        #   @param created_at [Time]
        #   @param credit_allocation [Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation, nil]
        #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
        #   @param currency [String]
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   @param external_price_id [String, nil]
        #   @param fixed_price_quantity [Float, nil]
        #   @param invoicing_cycle_configuration [Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
        #   @param item [Orb::Models::Price::CumulativeGroupedBulkPrice::Item]
        #   @param maximum [Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum, nil]
        #   @param maximum_amount [String, nil]
        #   @param metadata [Hash{Symbol=>String}]
        #   @param minimum [Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum, nil]
        #   @param minimum_amount [String, nil]
        #   @param name [String]
        #   @param plan_phase_order [Integer, nil]
        #   @param price_type [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType]
        #   @param dimensional_price_configuration [Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration, nil]
        #   @param model_type [Symbol, :cumulative_grouped_bulk]

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#cadence
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

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#credit_allocation
        class CreditAllocation < Orb::Internal::Type::BaseModel
          # @!attribute allows_rollover
          #
          #   @return [Boolean]
          required :allows_rollover, Orb::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(allows_rollover:, currency:)
          #   @param allows_rollover [Boolean]
          #   @param currency [String]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#item
        class Item < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!method initialize(id:, name:)
          #   @param id [String]
          #   @param name [String]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param maximum_amount [String]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   @param applies_to_price_ids [Array<String>]
          #   @param minimum_amount [String]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulkPrice#dimensional_price_configuration
        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute dimension_values
          #
          #   @return [Array<String>]
          required :dimension_values, Orb::Internal::Type::ArrayOf[String]

          # @!attribute dimensional_price_group_id
          #
          #   @return [String]
          required :dimensional_price_group_id, String

          # @!method initialize(dimension_values:, dimensional_price_group_id:)
          #   @param dimension_values [Array<String>]
          #   @param dimensional_price_group_id [String]
        end
      end

      # @!method self.variants
      #   @return [Array(Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice)]
    end
  end
end
