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

      variant :unit, -> { Orb::Price::Unit }

      variant :package, -> { Orb::Price::Package }

      variant :matrix, -> { Orb::Price::Matrix }

      variant :tiered, -> { Orb::Price::Tiered }

      variant :tiered_bps, -> { Orb::Price::TieredBps }

      variant :bps, -> { Orb::Price::Bps }

      variant :bulk_bps, -> { Orb::Price::BulkBps }

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
        #   @return [Orb::Models::Price::Unit::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Unit::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::Unit::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Unit::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Unit::Cadence]
        required :cadence, enum: -> { Orb::Price::Unit::Cadence }

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
        #   @return [Orb::Models::Price::Unit::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Unit::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::Unit::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> {
                   Orb::Price::Unit::InvoicingCycleConfiguration
                 },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::Unit::Item]
        required :item, -> { Orb::Price::Unit::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::Unit::Maximum, nil]
        required :maximum, -> { Orb::Price::Unit::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::Unit::Minimum, nil]
        required :minimum, -> { Orb::Price::Unit::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::Unit::PriceType]
        required :price_type, enum: -> { Orb::Price::Unit::PriceType }

        # @!attribute unit_config
        #
        #   @return [Orb::Models::Price::Unit::UnitConfig]
        required :unit_config, -> { Orb::Price::Unit::UnitConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::Unit::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Unit::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_config:, dimensional_price_configuration: nil, model_type: :unit)
        #   Some parameter documentations has been truncated, see {Orb::Models::Price::Unit}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::Unit::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::Unit::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Unit::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::Unit::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::Unit::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::Unit::Item]
        #
        #   @param maximum [Orb::Models::Price::Unit::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::Unit::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Unit::PriceType]
        #
        #   @param unit_config [Orb::Models::Price::Unit::UnitConfig]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::Unit::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit]

        # @see Orb::Models::Price::Unit#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::Unit#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Unit::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Unit::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::Unit#credit_allocation
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

        # @see Orb::Models::Price::Unit#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Unit::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Unit#item
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

        # @see Orb::Models::Price::Unit#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Unit::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::Unit#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Unit::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::Unit#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Unit#unit_config
        class UnitConfig < Orb::Internal::Type::BaseModel
          # @!attribute unit_amount
          #   Rate per unit of usage
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(unit_amount:)
          #   @param unit_amount [String] Rate per unit of usage
        end

        # @see Orb::Models::Price::Unit#dimensional_price_configuration
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

      class Package < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::Package::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Package::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::Package::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Package::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Package::Cadence]
        required :cadence, enum: -> { Orb::Price::Package::Cadence }

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
        #   @return [Orb::Models::Price::Package::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Package::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::Package::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::Package::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::Package::Item]
        required :item, -> { Orb::Price::Package::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::Package::Maximum, nil]
        required :maximum, -> { Orb::Price::Package::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::Package::Minimum, nil]
        required :minimum, -> { Orb::Price::Package::Minimum }, nil?: true

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
        #   @return [Orb::Models::Price::Package::PackageConfig]
        required :package_config, -> { Orb::Price::Package::PackageConfig }

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Models::Price::Package::PriceType]
        required :price_type, enum: -> { Orb::Price::Package::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::Package::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Package::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_config:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::Package} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::Package::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::Package::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Package::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::Package::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::Package::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::Package::Item]
        #
        #   @param maximum [Orb::Models::Price::Package::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::Package::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param package_config [Orb::Models::Price::Package::PackageConfig]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Package::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::Package::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package]

        # @see Orb::Models::Price::Package#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::Package#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Package::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Package::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::Package#credit_allocation
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

        # @see Orb::Models::Price::Package#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Package::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Package#item
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

        # @see Orb::Models::Price::Package#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Package::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::Package#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Package::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::Package#package_config
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Package::PackageConfig} for more details.
          #
          #   @param package_amount [String] A currency amount to rate usage by
          #
          #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
        end

        # @see Orb::Models::Price::Package#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Package#dimensional_price_configuration
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

      class Matrix < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::Matrix::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Matrix::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::Matrix::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Matrix::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Matrix::Cadence]
        required :cadence, enum: -> { Orb::Price::Matrix::Cadence }

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
        #   @return [Orb::Models::Price::Matrix::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Matrix::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::Matrix::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::Matrix::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::Matrix::Item]
        required :item, -> { Orb::Price::Matrix::Item }

        # @!attribute matrix_config
        #
        #   @return [Orb::Models::Price::Matrix::MatrixConfig]
        required :matrix_config, -> { Orb::Price::Matrix::MatrixConfig }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::Matrix::Maximum, nil]
        required :maximum, -> { Orb::Price::Matrix::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::Matrix::Minimum, nil]
        required :minimum, -> { Orb::Price::Matrix::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::Matrix::PriceType]
        required :price_type, enum: -> { Orb::Price::Matrix::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::Matrix::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Matrix::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::Matrix} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::Matrix::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::Matrix::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Matrix::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::Matrix::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::Matrix::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::Matrix::Item]
        #
        #   @param matrix_config [Orb::Models::Price::Matrix::MatrixConfig]
        #
        #   @param maximum [Orb::Models::Price::Matrix::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::Matrix::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Matrix::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::Matrix::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix]

        # @see Orb::Models::Price::Matrix#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::Matrix#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Matrix::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::Matrix#credit_allocation
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

        # @see Orb::Models::Price::Matrix#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Matrix::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Matrix#item
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

        # @see Orb::Models::Price::Matrix#matrix_config
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
          #   @return [Array<Orb::Models::Price::Matrix::MatrixConfig::MatrixValue>]
          required :matrix_values,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::Matrix::MatrixConfig::MatrixValue] }

          # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
          #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
          #
          #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
          #
          #   @param matrix_values [Array<Orb::Models::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Price::Matrix::MatrixConfig::MatrixValue} for more details.
            #
            #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
            #
            #   @param unit_amount [String] Unit price for the specified dimension_values
          end
        end

        # @see Orb::Models::Price::Matrix#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Matrix::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::Matrix#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Matrix::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::Matrix#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Matrix#dimensional_price_configuration
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

      class Tiered < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::Tiered::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Tiered::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::Tiered::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Tiered::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Tiered::Cadence]
        required :cadence, enum: -> { Orb::Price::Tiered::Cadence }

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
        #   @return [Orb::Models::Price::Tiered::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Tiered::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::Tiered::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::Tiered::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::Tiered::Item]
        required :item, -> { Orb::Price::Tiered::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::Tiered::Maximum, nil]
        required :maximum, -> { Orb::Price::Tiered::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::Tiered::Minimum, nil]
        required :minimum, -> { Orb::Price::Tiered::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::Tiered::PriceType]
        required :price_type, enum: -> { Orb::Price::Tiered::PriceType }

        # @!attribute tiered_config
        #
        #   @return [Orb::Models::Price::Tiered::TieredConfig]
        required :tiered_config, -> { Orb::Price::Tiered::TieredConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::Tiered::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Tiered::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_config:, dimensional_price_configuration: nil, model_type: :tiered)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::Tiered} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::Tiered::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::Tiered::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Tiered::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::Tiered::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::Tiered::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::Tiered::Item]
        #
        #   @param maximum [Orb::Models::Price::Tiered::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::Tiered::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Tiered::PriceType]
        #
        #   @param tiered_config [Orb::Models::Price::Tiered::TieredConfig]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::Tiered::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered]

        # @see Orb::Models::Price::Tiered#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::Tiered#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Tiered::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::Tiered#credit_allocation
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

        # @see Orb::Models::Price::Tiered#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Tiered::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Tiered#item
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

        # @see Orb::Models::Price::Tiered#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Tiered::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::Tiered#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Tiered::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::Tiered#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Tiered#tiered_config
        class TieredConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for rating based on total usage quantities into the specified tier
          #
          #   @return [Array<Orb::Models::Price::Tiered::TieredConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::Tiered::TieredConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Models::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

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
            #   @param first_unit [Float] Exclusive tier starting value
            #
            #   @param unit_amount [String] Amount per unit
            #
            #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
          end
        end

        # @see Orb::Models::Price::Tiered#dimensional_price_configuration
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

      class TieredBps < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredBps::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredBps::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredBps::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::TieredBps::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredBps::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredBps::Cadence }

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
        #   @return [Orb::Models::Price::TieredBps::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredBps::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::TieredBps::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredBps::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredBps::Item]
        required :item, -> { Orb::Price::TieredBps::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredBps::Maximum, nil]
        required :maximum, -> { Orb::Price::TieredBps::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredBps::Minimum, nil]
        required :minimum, -> { Orb::Price::TieredBps::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::TieredBps::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredBps::PriceType }

        # @!attribute tiered_bps_config
        #
        #   @return [Orb::Models::Price::TieredBps::TieredBpsConfig]
        required :tiered_bps_config, -> { Orb::Price::TieredBps::TieredBpsConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredBps::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredBps::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_bps_config:, dimensional_price_configuration: nil, model_type: :tiered_bps)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredBps} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::TieredBps::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredBps::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredBps::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::TieredBps::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredBps::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::TieredBps::Item]
        #
        #   @param maximum [Orb::Models::Price::TieredBps::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::TieredBps::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredBps::PriceType]
        #
        #   @param tiered_bps_config [Orb::Models::Price::TieredBps::TieredBpsConfig]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredBps::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_bps]

        # @see Orb::Models::Price::TieredBps#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredBps#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredBps::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredBps#cadence
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

        # @see Orb::Models::Price::TieredBps#credit_allocation
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

        # @see Orb::Models::Price::TieredBps#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredBps#item
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

        # @see Orb::Models::Price::TieredBps#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredBps::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::TieredBps#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredBps::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::TieredBps#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredBps#tiered_bps_config
        class TieredBpsConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          #   tiers
          #
          #   @return [Array<Orb::Models::Price::TieredBps::TieredBpsConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::TieredBps::TieredBpsConfig::Tier] }

          # @!method initialize(tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredBps::TieredBpsConfig} for more details.
          #
          #   @param tiers [Array<Orb::Models::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

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
            #   @param bps [Float] Per-event basis point rate
            #
            #   @param minimum_amount [String] Exclusive tier starting value
            #
            #   @param maximum_amount [String, nil] Inclusive tier ending value
            #
            #   @param per_unit_maximum [String, nil] Per unit maximum to charge
          end
        end

        # @see Orb::Models::Price::TieredBps#dimensional_price_configuration
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

      class Bps < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::Bps::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Bps::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::Bps::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Bps::BillingCycleConfiguration }

        # @!attribute bps_config
        #
        #   @return [Orb::Models::Price::Bps::BpsConfig]
        required :bps_config, -> { Orb::Price::Bps::BpsConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Bps::Cadence]
        required :cadence, enum: -> { Orb::Price::Bps::Cadence }

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
        #   @return [Orb::Models::Price::Bps::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Bps::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::Bps::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> {
                   Orb::Price::Bps::InvoicingCycleConfiguration
                 },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::Bps::Item]
        required :item, -> { Orb::Price::Bps::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::Bps::Maximum, nil]
        required :maximum, -> { Orb::Price::Bps::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::Bps::Minimum, nil]
        required :minimum, -> { Orb::Price::Bps::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::Bps::PriceType]
        required :price_type, enum: -> { Orb::Price::Bps::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::Bps::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Bps::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bps_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bps)
        #   Some parameter documentations has been truncated, see {Orb::Models::Price::Bps}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::Bps::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::Bps::BillingCycleConfiguration]
        #
        #   @param bps_config [Orb::Models::Price::Bps::BpsConfig]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Bps::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::Bps::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::Bps::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::Bps::Item]
        #
        #   @param maximum [Orb::Models::Price::Bps::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::Bps::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Bps::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::Bps::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bps]

        # @see Orb::Models::Price::Bps#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::Bps#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bps::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Bps::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Bps#bps_config
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
          #   @param bps [Float] Basis point take rate per event
          #
          #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
        end

        # @see Orb::Models::Price::Bps#cadence
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

        # @see Orb::Models::Price::Bps#credit_allocation
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

        # @see Orb::Models::Price::Bps#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Bps::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Bps#item
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

        # @see Orb::Models::Price::Bps#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Bps::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::Bps#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Bps::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::Bps#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Bps#dimensional_price_configuration
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

      class BulkBps < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::BulkBps::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::BulkBps::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::BulkBps::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::BulkBps::BillingCycleConfiguration }

        # @!attribute bulk_bps_config
        #
        #   @return [Orb::Models::Price::BulkBps::BulkBpsConfig]
        required :bulk_bps_config, -> { Orb::Price::BulkBps::BulkBpsConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::BulkBps::Cadence]
        required :cadence, enum: -> { Orb::Price::BulkBps::Cadence }

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
        #   @return [Orb::Models::Price::BulkBps::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::BulkBps::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::BulkBps::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::BulkBps::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::BulkBps::Item]
        required :item, -> { Orb::Price::BulkBps::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::BulkBps::Maximum, nil]
        required :maximum, -> { Orb::Price::BulkBps::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkBps::Minimum, nil]
        required :minimum, -> { Orb::Price::BulkBps::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::BulkBps::PriceType]
        required :price_type, enum: -> { Orb::Price::BulkBps::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::BulkBps::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::BulkBps::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_bps_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk_bps)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::BulkBps} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::BulkBps::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::BulkBps::BillingCycleConfiguration]
        #
        #   @param bulk_bps_config [Orb::Models::Price::BulkBps::BulkBpsConfig]
        #
        #   @param cadence [Symbol, Orb::Models::Price::BulkBps::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::BulkBps::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::BulkBps::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::BulkBps::Item]
        #
        #   @param maximum [Orb::Models::Price::BulkBps::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::BulkBps::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::BulkBps::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::BulkBps::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk_bps]

        # @see Orb::Models::Price::BulkBps#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::BulkBps#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkBps::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkBps#bulk_bps_config
        class BulkBpsConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          #   tier based on total volume
          #
          #   @return [Array<Orb::Models::Price::BulkBps::BulkBpsConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::BulkBps::BulkBpsConfig::Tier] }

          # @!method initialize(tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::BulkBps::BulkBpsConfig} for more details.
          #
          #   @param tiers [Array<Orb::Models::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

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
            #   @param bps [Float] Basis points to rate on
            #
            #   @param maximum_amount [String, nil] Upper bound for tier
            #
            #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
          end
        end

        # @see Orb::Models::Price::BulkBps#cadence
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

        # @see Orb::Models::Price::BulkBps#credit_allocation
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

        # @see Orb::Models::Price::BulkBps#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkBps#item
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

        # @see Orb::Models::Price::BulkBps#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::BulkBps::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::BulkBps#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::BulkBps::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::BulkBps#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::BulkBps#dimensional_price_configuration
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

      class Bulk < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::Bulk::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Bulk::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::Bulk::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Bulk::BillingCycleConfiguration }

        # @!attribute bulk_config
        #
        #   @return [Orb::Models::Price::Bulk::BulkConfig]
        required :bulk_config, -> { Orb::Price::Bulk::BulkConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::Bulk::Cadence]
        required :cadence, enum: -> { Orb::Price::Bulk::Cadence }

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
        #   @return [Orb::Models::Price::Bulk::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Bulk::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::Bulk::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> {
                   Orb::Price::Bulk::InvoicingCycleConfiguration
                 },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::Bulk::Item]
        required :item, -> { Orb::Price::Bulk::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::Bulk::Maximum, nil]
        required :maximum, -> { Orb::Price::Bulk::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::Bulk::Minimum, nil]
        required :minimum, -> { Orb::Price::Bulk::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::Bulk::PriceType]
        required :price_type, enum: -> { Orb::Price::Bulk::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::Bulk::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Bulk::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk)
        #   Some parameter documentations has been truncated, see {Orb::Models::Price::Bulk}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::Bulk::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::Bulk::BillingCycleConfiguration]
        #
        #   @param bulk_config [Orb::Models::Price::Bulk::BulkConfig]
        #
        #   @param cadence [Symbol, Orb::Models::Price::Bulk::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::Bulk::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::Bulk::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::Bulk::Item]
        #
        #   @param maximum [Orb::Models::Price::Bulk::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::Bulk::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::Bulk::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::Bulk::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk]

        # @see Orb::Models::Price::Bulk#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::Bulk#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Bulk::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Bulk#bulk_config
        class BulkConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Bulk tiers for rating based on total usage volume
          #
          #   @return [Array<Orb::Models::Price::Bulk::BulkConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::Bulk::BulkConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Models::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

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
            #   @param unit_amount [String] Amount per unit
            #
            #   @param maximum_units [Float, nil] Upper bound for this tier
          end
        end

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

        # @see Orb::Models::Price::Bulk#credit_allocation
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

        # @see Orb::Models::Price::Bulk#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::Bulk::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::Bulk#item
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

        # @see Orb::Models::Price::Bulk#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Bulk::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::Bulk#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::Bulk::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::Bulk#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::Bulk#dimensional_price_configuration
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

      class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmount::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::ThresholdTotalAmount::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmount::Cadence]
        required :cadence, enum: -> { Orb::Price::ThresholdTotalAmount::Cadence }

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
        #   @return [Orb::Models::Price::ThresholdTotalAmount::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::ThresholdTotalAmount::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmount::Item]
        required :item, -> { Orb::Price::ThresholdTotalAmount::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmount::Maximum, nil]
        required :maximum, -> { Orb::Price::ThresholdTotalAmount::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::ThresholdTotalAmount::Minimum, nil]
        required :minimum, -> { Orb::Price::ThresholdTotalAmount::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmount::PriceType]
        required :price_type, enum: -> { Orb::Price::ThresholdTotalAmount::PriceType }

        # @!attribute threshold_total_amount_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, threshold_total_amount_config:, dimensional_price_configuration: nil, model_type: :threshold_total_amount)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::ThresholdTotalAmount} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::ThresholdTotalAmount::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::ThresholdTotalAmount::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::ThresholdTotalAmount::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::ThresholdTotalAmount::Item]
        #
        #   @param maximum [Orb::Models::Price::ThresholdTotalAmount::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::ThresholdTotalAmount::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::ThresholdTotalAmount::PriceType]
        #
        #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :threshold_total_amount]

        # @see Orb::Models::Price::ThresholdTotalAmount#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::ThresholdTotalAmount#credit_allocation
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

        # @see Orb::Models::Price::ThresholdTotalAmount#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#item
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

        # @see Orb::Models::Price::ThresholdTotalAmount#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::ThresholdTotalAmount::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::ThresholdTotalAmount::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ThresholdTotalAmount#dimensional_price_configuration
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

      class TieredPackage < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredPackage::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredPackage::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredPackage::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::TieredPackage::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackage::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredPackage::Cadence }

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
        #   @return [Orb::Models::Price::TieredPackage::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredPackage::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredPackage::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredPackage::Item]
        required :item, -> { Orb::Price::TieredPackage::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredPackage::Maximum, nil]
        required :maximum, -> { Orb::Price::TieredPackage::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPackage::Minimum, nil]
        required :minimum, -> { Orb::Price::TieredPackage::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::TieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredPackage::PriceType }

        # @!attribute tiered_package_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredPackage::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredPackage::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_package_config:, dimensional_price_configuration: nil, model_type: :tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::TieredPackage::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredPackage::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredPackage::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::TieredPackage::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::TieredPackage::Item]
        #
        #   @param maximum [Orb::Models::Price::TieredPackage::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::TieredPackage::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredPackage::PriceType]
        #
        #   @param tiered_package_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredPackage::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package]

        # @see Orb::Models::Price::TieredPackage#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredPackage#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackage::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::TieredPackage#credit_allocation
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

        # @see Orb::Models::Price::TieredPackage#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPackage#item
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

        # @see Orb::Models::Price::TieredPackage#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredPackage::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::TieredPackage#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredPackage::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::TieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackage#dimensional_price_configuration
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

      class GroupedTiered < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedTiered::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedTiered::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedTiered::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::GroupedTiered::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTiered::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedTiered::Cadence }

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
        #   @return [Orb::Models::Price::GroupedTiered::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::GroupedTiered::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedTiered::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedTiered::Item]
        required :item, -> { Orb::Price::GroupedTiered::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedTiered::Maximum, nil]
        required :maximum, -> { Orb::Price::GroupedTiered::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedTiered::Minimum, nil]
        required :minimum, -> { Orb::Price::GroupedTiered::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::GroupedTiered::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedTiered::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedTiered::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_tiered)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedTiered} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::GroupedTiered::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedTiered::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedTiered::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::GroupedTiered::CreditAllocation, nil]
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
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::GroupedTiered::Item]
        #
        #   @param maximum [Orb::Models::Price::GroupedTiered::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::GroupedTiered::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedTiered::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_tiered]

        # @see Orb::Models::Price::GroupedTiered#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedTiered#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTiered::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::GroupedTiered#credit_allocation
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

        # @see Orb::Models::Price::GroupedTiered#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedTiered#item
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

        # @see Orb::Models::Price::GroupedTiered#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedTiered::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::GroupedTiered#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedTiered::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::GroupedTiered#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedTiered#dimensional_price_configuration
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

      class TieredWithMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredWithMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredWithMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::TieredWithMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredWithMinimum::Cadence }

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
        #   @return [Orb::Models::Price::TieredWithMinimum::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredWithMinimum::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredWithMinimum::Item]
        required :item, -> { Orb::Price::TieredWithMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredWithMinimum::Maximum, nil]
        required :maximum, -> { Orb::Price::TieredWithMinimum::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredWithMinimum::Minimum, nil]
        required :minimum, -> { Orb::Price::TieredWithMinimum::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::TieredWithMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredWithMinimum::PriceType }

        # @!attribute tiered_with_minimum_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_with_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredWithMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::TieredWithMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredWithMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::TieredWithMinimum::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::TieredWithMinimum::Item]
        #
        #   @param maximum [Orb::Models::Price::TieredWithMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::TieredWithMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredWithMinimum::PriceType]
        #
        #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_minimum]

        # @see Orb::Models::Price::TieredWithMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredWithMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::TieredWithMinimum#credit_allocation
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

        # @see Orb::Models::Price::TieredWithMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredWithMinimum#item
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

        # @see Orb::Models::Price::TieredWithMinimum#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredWithMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::TieredWithMinimum#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredWithMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::TieredWithMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithMinimum#dimensional_price_configuration
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

      class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredPackageWithMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredPackageWithMinimum::Cadence }

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
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredPackageWithMinimum::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::Item]
        required :item, -> { Orb::Price::TieredPackageWithMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::Maximum, nil]
        required :maximum, -> { Orb::Price::TieredPackageWithMinimum::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::Minimum, nil]
        required :minimum, -> { Orb::Price::TieredPackageWithMinimum::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredPackageWithMinimum::PriceType }

        # @!attribute tiered_package_with_minimum_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_with_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_package_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_package_with_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredPackageWithMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::TieredPackageWithMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredPackageWithMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::TieredPackageWithMinimum::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::TieredPackageWithMinimum::Item]
        #
        #   @param maximum [Orb::Models::Price::TieredPackageWithMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::TieredPackageWithMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredPackageWithMinimum::PriceType]
        #
        #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package_with_minimum]

        # @see Orb::Models::Price::TieredPackageWithMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::TieredPackageWithMinimum#credit_allocation
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

        # @see Orb::Models::Price::TieredPackageWithMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#item
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

        # @see Orb::Models::Price::TieredPackageWithMinimum#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredPackageWithMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredPackageWithMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredPackageWithMinimum#dimensional_price_configuration
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

      class PackageWithAllocation < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::PackageWithAllocation::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::PackageWithAllocation::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::PackageWithAllocation::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::PackageWithAllocation::Cadence]
        required :cadence, enum: -> { Orb::Price::PackageWithAllocation::Cadence }

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
        #   @return [Orb::Models::Price::PackageWithAllocation::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::PackageWithAllocation::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::PackageWithAllocation::Item]
        required :item, -> { Orb::Price::PackageWithAllocation::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::PackageWithAllocation::Maximum, nil]
        required :maximum, -> { Orb::Price::PackageWithAllocation::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::PackageWithAllocation::Minimum, nil]
        required :minimum, -> { Orb::Price::PackageWithAllocation::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::PackageWithAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::PackageWithAllocation::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_with_allocation_config:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :package_with_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::PackageWithAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::PackageWithAllocation::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::PackageWithAllocation::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::PackageWithAllocation::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::PackageWithAllocation::Item]
        #
        #   @param maximum [Orb::Models::Price::PackageWithAllocation::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::PackageWithAllocation::Minimum, nil]
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
        #   @param dimensional_price_configuration [Orb::Models::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package_with_allocation]

        # @see Orb::Models::Price::PackageWithAllocation#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::PackageWithAllocation#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::PackageWithAllocation#credit_allocation
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

        # @see Orb::Models::Price::PackageWithAllocation#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::PackageWithAllocation#item
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

        # @see Orb::Models::Price::PackageWithAllocation#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::PackageWithAllocation::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::PackageWithAllocation#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::PackageWithAllocation::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::PackageWithAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::PackageWithAllocation#dimensional_price_configuration
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

      class UnitWithPercent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::UnitWithPercent::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::UnitWithPercent::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::UnitWithPercent::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithPercent::Cadence]
        required :cadence, enum: -> { Orb::Price::UnitWithPercent::Cadence }

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
        #   @return [Orb::Models::Price::UnitWithPercent::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::UnitWithPercent::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::UnitWithPercent::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::UnitWithPercent::Item]
        required :item, -> { Orb::Price::UnitWithPercent::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::UnitWithPercent::Maximum, nil]
        required :maximum, -> { Orb::Price::UnitWithPercent::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitWithPercent::Minimum, nil]
        required :minimum, -> { Orb::Price::UnitWithPercent::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::UnitWithPercent::PriceType]
        required :price_type, enum: -> { Orb::Price::UnitWithPercent::PriceType }

        # @!attribute unit_with_percent_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::UnitWithPercent::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_with_percent_config:, dimensional_price_configuration: nil, model_type: :unit_with_percent)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::UnitWithPercent} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::UnitWithPercent::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::UnitWithPercent::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::UnitWithPercent::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::UnitWithPercent::Item]
        #
        #   @param maximum [Orb::Models::Price::UnitWithPercent::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::UnitWithPercent::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::UnitWithPercent::PriceType]
        #
        #   @param unit_with_percent_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_percent]

        # @see Orb::Models::Price::UnitWithPercent#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::UnitWithPercent#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::UnitWithPercent#credit_allocation
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

        # @see Orb::Models::Price::UnitWithPercent#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitWithPercent#item
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

        # @see Orb::Models::Price::UnitWithPercent#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::UnitWithPercent::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::UnitWithPercent#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::UnitWithPercent::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::UnitWithPercent#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithPercent#dimensional_price_configuration
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

      class MatrixWithAllocation < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::MatrixWithAllocation::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::MatrixWithAllocation::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::MatrixWithAllocation::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithAllocation::Cadence]
        required :cadence, enum: -> { Orb::Price::MatrixWithAllocation::Cadence }

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
        #   @return [Orb::Models::Price::MatrixWithAllocation::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::MatrixWithAllocation::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::MatrixWithAllocation::Item]
        required :item, -> { Orb::Price::MatrixWithAllocation::Item }

        # @!attribute matrix_with_allocation_config
        #
        #   @return [Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
        required :matrix_with_allocation_config,
                 -> { Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::MatrixWithAllocation::Maximum, nil]
        required :maximum, -> { Orb::Price::MatrixWithAllocation::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithAllocation::Minimum, nil]
        required :minimum, -> { Orb::Price::MatrixWithAllocation::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::MatrixWithAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::MatrixWithAllocation::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_allocation_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix_with_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::MatrixWithAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::MatrixWithAllocation::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::MatrixWithAllocation::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::MatrixWithAllocation::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::MatrixWithAllocation::Item]
        #
        #   @param matrix_with_allocation_config [Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
        #
        #   @param maximum [Orb::Models::Price::MatrixWithAllocation::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::MatrixWithAllocation::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::MatrixWithAllocation::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix_with_allocation]

        # @see Orb::Models::Price::MatrixWithAllocation#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::MatrixWithAllocation#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::MatrixWithAllocation#credit_allocation
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

        # @see Orb::Models::Price::MatrixWithAllocation#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixWithAllocation#item
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

        # @see Orb::Models::Price::MatrixWithAllocation#matrix_with_allocation_config
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
          #   @return [Array<Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>]
          required :matrix_values,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue]
                   }

          # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
          #   @param allocation [Float] Allocation to be used to calculate the price
          #
          #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
          #
          #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
          #
          #   @param matrix_values [Array<Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue}
            #   for more details.
            #
            #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
            #
            #   @param unit_amount [String] Unit price for the specified dimension_values
          end
        end

        # @see Orb::Models::Price::MatrixWithAllocation#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::MatrixWithAllocation::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::MatrixWithAllocation#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::MatrixWithAllocation::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::MatrixWithAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MatrixWithAllocation#dimensional_price_configuration
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

      class TieredWithProration < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::TieredWithProration::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredWithProration::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::TieredWithProration::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::TieredWithProration::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::TieredWithProration::Cadence]
        required :cadence, enum: -> { Orb::Price::TieredWithProration::Cadence }

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
        #   @return [Orb::Models::Price::TieredWithProration::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredWithProration::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredWithProration::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::TieredWithProration::Item]
        required :item, -> { Orb::Price::TieredWithProration::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::TieredWithProration::Maximum, nil]
        required :maximum, -> { Orb::Price::TieredWithProration::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::TieredWithProration::Minimum, nil]
        required :minimum, -> { Orb::Price::TieredWithProration::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::TieredWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredWithProration::PriceType }

        # @!attribute tiered_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredWithProration::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_with_proration_config:, dimensional_price_configuration: nil, model_type: :tiered_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::TieredWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::TieredWithProration::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::TieredWithProration::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::TieredWithProration::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::TieredWithProration::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::TieredWithProration::Item]
        #
        #   @param maximum [Orb::Models::Price::TieredWithProration::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::TieredWithProration::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::TieredWithProration::PriceType]
        #
        #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_proration]

        # @see Orb::Models::Price::TieredWithProration#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::TieredWithProration#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::TieredWithProration#credit_allocation
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

        # @see Orb::Models::Price::TieredWithProration#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::TieredWithProration#item
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

        # @see Orb::Models::Price::TieredWithProration#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredWithProration::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::TieredWithProration#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::TieredWithProration::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::TieredWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::TieredWithProration#dimensional_price_configuration
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

      class UnitWithProration < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::UnitWithProration::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::UnitWithProration::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::UnitWithProration::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::UnitWithProration::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::UnitWithProration::Cadence]
        required :cadence, enum: -> { Orb::Price::UnitWithProration::Cadence }

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
        #   @return [Orb::Models::Price::UnitWithProration::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::UnitWithProration::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::UnitWithProration::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::UnitWithProration::Item]
        required :item, -> { Orb::Price::UnitWithProration::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::UnitWithProration::Maximum, nil]
        required :maximum, -> { Orb::Price::UnitWithProration::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::UnitWithProration::Minimum, nil]
        required :minimum, -> { Orb::Price::UnitWithProration::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::UnitWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::UnitWithProration::PriceType }

        # @!attribute unit_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::UnitWithProration::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_with_proration_config:, dimensional_price_configuration: nil, model_type: :unit_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::UnitWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::UnitWithProration::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::UnitWithProration::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::UnitWithProration::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::UnitWithProration::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::UnitWithProration::Item]
        #
        #   @param maximum [Orb::Models::Price::UnitWithProration::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::UnitWithProration::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::UnitWithProration::PriceType]
        #
        #   @param unit_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_proration]

        # @see Orb::Models::Price::UnitWithProration#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::UnitWithProration#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::UnitWithProration#credit_allocation
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

        # @see Orb::Models::Price::UnitWithProration#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::UnitWithProration#item
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

        # @see Orb::Models::Price::UnitWithProration#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::UnitWithProration::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::UnitWithProration#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::UnitWithProration::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::UnitWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::UnitWithProration#dimensional_price_configuration
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

      class GroupedAllocation < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedAllocation::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedAllocation::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::GroupedAllocation::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedAllocation::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedAllocation::Cadence }

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
        #   @return [Orb::Models::Price::GroupedAllocation::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::GroupedAllocation::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedAllocation::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedAllocation::Item]
        required :item, -> { Orb::Price::GroupedAllocation::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedAllocation::Maximum, nil]
        required :maximum, -> { Orb::Price::GroupedAllocation::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedAllocation::Minimum, nil]
        required :minimum, -> { Orb::Price::GroupedAllocation::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::GroupedAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedAllocation::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedAllocation::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_allocation_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::GroupedAllocation::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedAllocation::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::GroupedAllocation::CreditAllocation, nil]
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
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::GroupedAllocation::Item]
        #
        #   @param maximum [Orb::Models::Price::GroupedAllocation::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::GroupedAllocation::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedAllocation::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_allocation]

        # @see Orb::Models::Price::GroupedAllocation#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedAllocation#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::GroupedAllocation#credit_allocation
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

        # @see Orb::Models::Price::GroupedAllocation#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedAllocation#item
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

        # @see Orb::Models::Price::GroupedAllocation#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedAllocation::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::GroupedAllocation#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedAllocation::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::GroupedAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedAllocation#dimensional_price_configuration
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

      class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedWithProratedMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedWithProratedMinimum::Cadence }

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
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::CreditAllocation, nil]
        required :credit_allocation,
                 -> {
                   Orb::Price::GroupedWithProratedMinimum::CreditAllocation
                 },
                 nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::Item]
        required :item, -> { Orb::Price::GroupedWithProratedMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::Maximum, nil]
        required :maximum, -> { Orb::Price::GroupedWithProratedMinimum::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::Minimum, nil]
        required :minimum, -> { Orb::Price::GroupedWithProratedMinimum::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedWithProratedMinimum::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_prorated_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_with_prorated_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedWithProratedMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::GroupedWithProratedMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::GroupedWithProratedMinimum::CreditAllocation, nil]
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
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::GroupedWithProratedMinimum::Item]
        #
        #   @param maximum [Orb::Models::Price::GroupedWithProratedMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::GroupedWithProratedMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_with_prorated_minimum]

        # @see Orb::Models::Price::GroupedWithProratedMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::GroupedWithProratedMinimum#credit_allocation
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

        # @see Orb::Models::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimum#item
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

        # @see Orb::Models::Price::GroupedWithProratedMinimum#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedWithProratedMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimum#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedWithProratedMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedWithProratedMinimum#dimensional_price_configuration
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

      class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedWithMeteredMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedWithMeteredMinimum::Cadence }

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
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::CreditAllocation, nil]
        required :credit_allocation,
                 -> {
                   Orb::Price::GroupedWithMeteredMinimum::CreditAllocation
                 },
                 nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::Item]
        required :item, -> { Orb::Price::GroupedWithMeteredMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::Maximum, nil]
        required :maximum, -> { Orb::Price::GroupedWithMeteredMinimum::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::Minimum, nil]
        required :minimum, -> { Orb::Price::GroupedWithMeteredMinimum::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedWithMeteredMinimum::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_metered_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_with_metered_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedWithMeteredMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::GroupedWithMeteredMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::GroupedWithMeteredMinimum::CreditAllocation, nil]
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
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::GroupedWithMeteredMinimum::Item]
        #
        #   @param maximum [Orb::Models::Price::GroupedWithMeteredMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::GroupedWithMeteredMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_with_metered_minimum]

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#credit_allocation
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

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#item
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

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedWithMeteredMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedWithMeteredMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedWithMeteredMinimum#dimensional_price_configuration
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

      class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayName::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::MatrixWithDisplayName::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayName::Cadence]
        required :cadence, enum: -> { Orb::Price::MatrixWithDisplayName::Cadence }

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
        #   @return [Orb::Models::Price::MatrixWithDisplayName::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::MatrixWithDisplayName::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayName::Item]
        required :item, -> { Orb::Price::MatrixWithDisplayName::Item }

        # @!attribute matrix_with_display_name_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :matrix_with_display_name_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayName::Maximum, nil]
        required :maximum, -> { Orb::Price::MatrixWithDisplayName::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::MatrixWithDisplayName::Minimum, nil]
        required :minimum, -> { Orb::Price::MatrixWithDisplayName::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayName::PriceType]
        required :price_type, enum: -> { Orb::Price::MatrixWithDisplayName::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_display_name_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix_with_display_name)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::MatrixWithDisplayName} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::MatrixWithDisplayName::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::MatrixWithDisplayName::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::MatrixWithDisplayName::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::MatrixWithDisplayName::Item]
        #
        #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
        #
        #   @param maximum [Orb::Models::Price::MatrixWithDisplayName::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::MatrixWithDisplayName::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::MatrixWithDisplayName::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix_with_display_name]

        # @see Orb::Models::Price::MatrixWithDisplayName#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::MatrixWithDisplayName#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::MatrixWithDisplayName#credit_allocation
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

        # @see Orb::Models::Price::MatrixWithDisplayName#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MatrixWithDisplayName#item
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

        # @see Orb::Models::Price::MatrixWithDisplayName#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::MatrixWithDisplayName::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::MatrixWithDisplayName#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::MatrixWithDisplayName::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::MatrixWithDisplayName#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MatrixWithDisplayName#dimensional_price_configuration
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

      class BulkWithProration < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::BulkWithProration::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::BulkWithProration::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::BulkWithProration::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::BulkWithProration::BillingCycleConfiguration }

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

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_allocation
        #
        #   @return [Orb::Models::Price::BulkWithProration::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::BulkWithProration::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::BulkWithProration::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::BulkWithProration::Item]
        required :item, -> { Orb::Price::BulkWithProration::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::BulkWithProration::Maximum, nil]
        required :maximum, -> { Orb::Price::BulkWithProration::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::BulkWithProration::Minimum, nil]
        required :minimum, -> { Orb::Price::BulkWithProration::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::BulkWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::BulkWithProration::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::BulkWithProration::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_with_proration_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::BulkWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::BulkWithProration::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::BulkWithProration::BillingCycleConfiguration]
        #
        #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param cadence [Symbol, Orb::Models::Price::BulkWithProration::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::BulkWithProration::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::BulkWithProration::Item]
        #
        #   @param maximum [Orb::Models::Price::BulkWithProration::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::BulkWithProration::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::BulkWithProration::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk_with_proration]

        # @see Orb::Models::Price::BulkWithProration#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::BulkWithProration#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
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

        # @see Orb::Models::Price::BulkWithProration#credit_allocation
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

        # @see Orb::Models::Price::BulkWithProration#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::BulkWithProration#item
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

        # @see Orb::Models::Price::BulkWithProration#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::BulkWithProration::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::BulkWithProration#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::BulkWithProration::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::BulkWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::BulkWithProration#dimensional_price_configuration
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

      class GroupedTieredPackage < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::GroupedTieredPackage::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedTieredPackage::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::GroupedTieredPackage::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPackage::Cadence]
        required :cadence, enum: -> { Orb::Price::GroupedTieredPackage::Cadence }

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
        #   @return [Orb::Models::Price::GroupedTieredPackage::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::GroupedTieredPackage::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::GroupedTieredPackage::Item]
        required :item, -> { Orb::Price::GroupedTieredPackage::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::GroupedTieredPackage::Maximum, nil]
        required :maximum, -> { Orb::Price::GroupedTieredPackage::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::GroupedTieredPackage::Minimum, nil]
        required :minimum, -> { Orb::Price::GroupedTieredPackage::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::GroupedTieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedTieredPackage::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_package_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::GroupedTieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::GroupedTieredPackage::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::GroupedTieredPackage::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::GroupedTieredPackage::CreditAllocation, nil]
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
        #   @param invoicing_cycle_configuration [Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::GroupedTieredPackage::Item]
        #
        #   @param maximum [Orb::Models::Price::GroupedTieredPackage::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::GroupedTieredPackage::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::GroupedTieredPackage::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_tiered_package]

        # @see Orb::Models::Price::GroupedTieredPackage#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::GroupedTieredPackage#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::GroupedTieredPackage#credit_allocation
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

        # @see Orb::Models::Price::GroupedTieredPackage#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::GroupedTieredPackage#item
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

        # @see Orb::Models::Price::GroupedTieredPackage#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedTieredPackage::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::GroupedTieredPackage#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::GroupedTieredPackage::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::GroupedTieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::GroupedTieredPackage#dimensional_price_configuration
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

      class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::MaxGroupTieredPackage::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackage::Cadence]
        required :cadence, enum: -> { Orb::Price::MaxGroupTieredPackage::Cadence }

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
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::MaxGroupTieredPackage::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::Item]
        required :item, -> { Orb::Price::MaxGroupTieredPackage::Item }

        # @!attribute max_group_tiered_package_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :max_group_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::Maximum, nil]
        required :maximum, -> { Orb::Price::MaxGroupTieredPackage::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::Minimum, nil]
        required :minimum, -> { Orb::Price::MaxGroupTieredPackage::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::MaxGroupTieredPackage::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, max_group_tiered_package_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :max_group_tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::MaxGroupTieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::MaxGroupTieredPackage::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::MaxGroupTieredPackage::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::MaxGroupTieredPackage::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::MaxGroupTieredPackage::Item]
        #
        #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
        #
        #   @param maximum [Orb::Models::Price::MaxGroupTieredPackage::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::MaxGroupTieredPackage::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::MaxGroupTieredPackage::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :max_group_tiered_package]

        # @see Orb::Models::Price::MaxGroupTieredPackage#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackage#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::MaxGroupTieredPackage#credit_allocation
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

        # @see Orb::Models::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::MaxGroupTieredPackage#item
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

        # @see Orb::Models::Price::MaxGroupTieredPackage#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::MaxGroupTieredPackage::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::MaxGroupTieredPackage#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::MaxGroupTieredPackage::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::MaxGroupTieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::MaxGroupTieredPackage#dimensional_price_configuration
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

      class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence]
        required :cadence, enum: -> { Orb::Price::ScalableMatrixWithUnitPricing::Cadence }

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
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation },
                 nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::Item]
        required :item, -> { Orb::Price::ScalableMatrixWithUnitPricing::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::Maximum, nil]
        required :maximum, -> { Orb::Price::ScalableMatrixWithUnitPricing::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::Minimum, nil]
        required :minimum, -> { Orb::Price::ScalableMatrixWithUnitPricing::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType]
        required :price_type, enum: -> { Orb::Price::ScalableMatrixWithUnitPricing::PriceType }

        # @!attribute scalable_matrix_with_unit_pricing_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_unit_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, scalable_matrix_with_unit_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_unit_pricing)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::ScalableMatrixWithUnitPricing} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::ScalableMatrixWithUnitPricing::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::ScalableMatrixWithUnitPricing::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::ScalableMatrixWithUnitPricing::Item]
        #
        #   @param maximum [Orb::Models::Price::ScalableMatrixWithUnitPricing::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::ScalableMatrixWithUnitPricing::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType]
        #
        #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#credit_allocation
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

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#item
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

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::ScalableMatrixWithUnitPricing::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::ScalableMatrixWithUnitPricing::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithUnitPricing#dimensional_price_configuration
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

      class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence]
        required :cadence, enum: -> { Orb::Price::ScalableMatrixWithTieredPricing::Cadence }

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
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation },
                 nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
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
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::Item]
        required :item, -> { Orb::Price::ScalableMatrixWithTieredPricing::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::Maximum, nil]
        required :maximum, -> { Orb::Price::ScalableMatrixWithTieredPricing::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::Minimum, nil]
        required :minimum, -> { Orb::Price::ScalableMatrixWithTieredPricing::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType]
        required :price_type, enum: -> { Orb::Price::ScalableMatrixWithTieredPricing::PriceType }

        # @!attribute scalable_matrix_with_tiered_pricing_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_tiered_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, scalable_matrix_with_tiered_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_tiered_pricing)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::ScalableMatrixWithTieredPricing} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::ScalableMatrixWithTieredPricing::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::ScalableMatrixWithTieredPricing::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::ScalableMatrixWithTieredPricing::Item]
        #
        #   @param maximum [Orb::Models::Price::ScalableMatrixWithTieredPricing::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::ScalableMatrixWithTieredPricing::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType]
        #
        #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#credit_allocation
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

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#item
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

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::ScalableMatrixWithTieredPricing::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::ScalableMatrixWithTieredPricing::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::ScalableMatrixWithTieredPricing#dimensional_price_configuration
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

      class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billable_metric
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::CumulativeGroupedBulk::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulk::Cadence]
        required :cadence, enum: -> { Orb::Price::CumulativeGroupedBulk::Cadence }

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
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::CumulativeGroupedBulk::CreditAllocation }, nil?: true

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
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::Item]
        required :item, -> { Orb::Price::CumulativeGroupedBulk::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::Maximum, nil]
        required :maximum, -> { Orb::Price::CumulativeGroupedBulk::Maximum }, nil?: true

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
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::Minimum, nil]
        required :minimum, -> { Orb::Price::CumulativeGroupedBulk::Minimum }, nil?: true

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
        #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulk::PriceType]
        required :price_type, enum: -> { Orb::Price::CumulativeGroupedBulk::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Models::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, cumulative_grouped_bulk_config:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :cumulative_grouped_bulk)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Price::CumulativeGroupedBulk} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Models::Price::CumulativeGroupedBulk::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Models::Price::CumulativeGroupedBulk::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Models::Price::CumulativeGroupedBulk::CreditAllocation, nil]
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
        #   @param invoicing_cycle_configuration [Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Models::Price::CumulativeGroupedBulk::Item]
        #
        #   @param maximum [Orb::Models::Price::CumulativeGroupedBulk::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Models::Price::CumulativeGroupedBulk::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Models::Price::CumulativeGroupedBulk::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Models::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :cumulative_grouped_bulk]

        # @see Orb::Models::Price::CumulativeGroupedBulk#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulk#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

        # @see Orb::Models::Price::CumulativeGroupedBulk#credit_allocation
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

        # @see Orb::Models::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Models::Price::CumulativeGroupedBulk#item
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

        # @see Orb::Models::Price::CumulativeGroupedBulk#maximum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::CumulativeGroupedBulk::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Price::CumulativeGroupedBulk#minimum
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
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Price::CumulativeGroupedBulk::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Models::Price::CumulativeGroupedBulk#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Price::CumulativeGroupedBulk#dimensional_price_configuration
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
      #   @return [Array(Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk)]
    end
  end
end
