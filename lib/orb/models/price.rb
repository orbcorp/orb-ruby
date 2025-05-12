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
        #   @return [Orb::Price::Unit::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Unit::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::Unit::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Unit::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::Unit::Cadence]
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
        #   @return [Orb::Price::Unit::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Unit::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::Unit::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> {
                   Orb::Price::Unit::InvoicingCycleConfiguration
                 },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::Unit::Item]
        required :item, -> { Orb::Price::Unit::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::Unit::Maximum, nil]
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
        #   @return [Orb::Price::Unit::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::Unit::PriceType]
        required :price_type, enum: -> { Orb::Price::Unit::PriceType }

        # @!attribute unit_config
        #
        #   @return [Orb::Price::Unit::UnitConfig]
        required :unit_config, -> { Orb::Price::Unit::UnitConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::Unit::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Unit::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_config:, dimensional_price_configuration: nil, model_type: :unit)
        #   Some parameter documentations has been truncated, see {Orb::Price::Unit} for
        #   more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::Unit::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::Unit::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::Unit::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::Unit::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::Unit::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::Unit::Item]
        #
        #   @param maximum [Orb::Price::Unit::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::Unit::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::Unit::PriceType]
        #
        #   @param unit_config [Orb::Price::Unit::UnitConfig]
        #
        #   @param dimensional_price_configuration [Orb::Price::Unit::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit]

        # @see Orb::Price::Unit#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::Unit#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Unit::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Unit::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Unit::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Unit::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Unit#cadence
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

        # @see Orb::Price::Unit#credit_allocation
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

        # @see Orb::Price::Unit#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Unit::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Unit#item
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

        # @see Orb::Price::Unit#maximum
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
          #   {Orb::Price::Unit::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::Unit#minimum
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
          #   {Orb::Price::Unit::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::Unit#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::Unit#unit_config
        class UnitConfig < Orb::Internal::Type::BaseModel
          # @!attribute unit_amount
          #   Rate per unit of usage
          #
          #   @return [String]
          required :unit_amount, String

          # @!method initialize(unit_amount:)
          #   @param unit_amount [String] Rate per unit of usage
        end

        # @see Orb::Price::Unit#dimensional_price_configuration
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
        #   @return [Orb::Price::Package::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Package::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::Package::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Package::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::Package::Cadence]
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
        #   @return [Orb::Price::Package::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Package::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::Package::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::Package::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::Package::Item]
        required :item, -> { Orb::Price::Package::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::Package::Maximum, nil]
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
        #   @return [Orb::Price::Package::Minimum, nil]
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
        #   @return [Orb::Price::Package::PackageConfig]
        required :package_config, -> { Orb::Price::Package::PackageConfig }

        # @!attribute plan_phase_order
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute price_type
        #
        #   @return [Symbol, Orb::Price::Package::PriceType]
        required :price_type, enum: -> { Orb::Price::Package::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::Package::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Package::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_config:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :package)
        #   Some parameter documentations has been truncated, see {Orb::Price::Package} for
        #   more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::Package::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::Package::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::Package::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::Package::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::Package::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::Package::Item]
        #
        #   @param maximum [Orb::Price::Package::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::Package::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param package_config [Orb::Price::Package::PackageConfig]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::Package::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::Package::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package]

        # @see Orb::Price::Package#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::Package#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Package::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Package::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Package::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Package::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Package#cadence
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

        # @see Orb::Price::Package#credit_allocation
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

        # @see Orb::Price::Package#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Package::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Package#item
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

        # @see Orb::Price::Package#maximum
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
          #   {Orb::Price::Package::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::Package#minimum
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
          #   {Orb::Price::Package::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::Package#package_config
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
          #   {Orb::Price::Package::PackageConfig} for more details.
          #
          #   @param package_amount [String] A currency amount to rate usage by
          #
          #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
        end

        # @see Orb::Price::Package#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::Package#dimensional_price_configuration
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
        #   @return [Orb::Price::Matrix::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Matrix::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::Matrix::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Matrix::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::Matrix::Cadence]
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
        #   @return [Orb::Price::Matrix::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Matrix::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::Matrix::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::Matrix::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::Matrix::Item]
        required :item, -> { Orb::Price::Matrix::Item }

        # @!attribute matrix_config
        #
        #   @return [Orb::Price::Matrix::MatrixConfig]
        required :matrix_config, -> { Orb::Price::Matrix::MatrixConfig }

        # @!attribute maximum
        #
        #   @return [Orb::Price::Matrix::Maximum, nil]
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
        #   @return [Orb::Price::Matrix::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::Matrix::PriceType]
        required :price_type, enum: -> { Orb::Price::Matrix::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::Matrix::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Matrix::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix)
        #   Some parameter documentations has been truncated, see {Orb::Price::Matrix} for
        #   more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::Matrix::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::Matrix::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::Matrix::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::Matrix::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::Matrix::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::Matrix::Item]
        #
        #   @param matrix_config [Orb::Price::Matrix::MatrixConfig]
        #
        #   @param maximum [Orb::Price::Matrix::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::Matrix::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::Matrix::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::Matrix::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix]

        # @see Orb::Price::Matrix#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::Matrix#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Matrix::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Matrix#cadence
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

        # @see Orb::Price::Matrix#credit_allocation
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

        # @see Orb::Price::Matrix#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Matrix::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Matrix#item
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

        # @see Orb::Price::Matrix#matrix_config
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
          #   @return [Array<Orb::Price::Matrix::MatrixConfig::MatrixValue>]
          required :matrix_values,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Price::Matrix::MatrixConfig::MatrixValue] }

          # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
          #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
          #
          #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
          #
          #   @param matrix_values [Array<Orb::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
            #   {Orb::Price::Matrix::MatrixConfig::MatrixValue} for more details.
            #
            #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
            #
            #   @param unit_amount [String] Unit price for the specified dimension_values
          end
        end

        # @see Orb::Price::Matrix#maximum
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
          #   {Orb::Price::Matrix::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::Matrix#minimum
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
          #   {Orb::Price::Matrix::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::Matrix#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::Matrix#dimensional_price_configuration
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
        #   @return [Orb::Price::Tiered::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Tiered::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::Tiered::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Tiered::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::Tiered::Cadence]
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
        #   @return [Orb::Price::Tiered::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Tiered::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::Tiered::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::Tiered::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::Tiered::Item]
        required :item, -> { Orb::Price::Tiered::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::Tiered::Maximum, nil]
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
        #   @return [Orb::Price::Tiered::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::Tiered::PriceType]
        required :price_type, enum: -> { Orb::Price::Tiered::PriceType }

        # @!attribute tiered_config
        #
        #   @return [Orb::Price::Tiered::TieredConfig]
        required :tiered_config, -> { Orb::Price::Tiered::TieredConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::Tiered::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Tiered::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_config:, dimensional_price_configuration: nil, model_type: :tiered)
        #   Some parameter documentations has been truncated, see {Orb::Price::Tiered} for
        #   more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::Tiered::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::Tiered::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::Tiered::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::Tiered::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::Tiered::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::Tiered::Item]
        #
        #   @param maximum [Orb::Price::Tiered::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::Tiered::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::Tiered::PriceType]
        #
        #   @param tiered_config [Orb::Price::Tiered::TieredConfig]
        #
        #   @param dimensional_price_configuration [Orb::Price::Tiered::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered]

        # @see Orb::Price::Tiered#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::Tiered#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Tiered::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Tiered#cadence
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

        # @see Orb::Price::Tiered#credit_allocation
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

        # @see Orb::Price::Tiered#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Tiered::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Tiered#item
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

        # @see Orb::Price::Tiered#maximum
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
          #   {Orb::Price::Tiered::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::Tiered#minimum
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
          #   {Orb::Price::Tiered::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::Tiered#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::Tiered#tiered_config
        class TieredConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for rating based on total usage quantities into the specified tier
          #
          #   @return [Array<Orb::Price::Tiered::TieredConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::Tiered::TieredConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

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

        # @see Orb::Price::Tiered#dimensional_price_configuration
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
        #   @return [Orb::Price::TieredBps::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredBps::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::TieredBps::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::TieredBps::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::TieredBps::Cadence]
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
        #   @return [Orb::Price::TieredBps::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredBps::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::TieredBps::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredBps::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::TieredBps::Item]
        required :item, -> { Orb::Price::TieredBps::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::TieredBps::Maximum, nil]
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
        #   @return [Orb::Price::TieredBps::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::TieredBps::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredBps::PriceType }

        # @!attribute tiered_bps_config
        #
        #   @return [Orb::Price::TieredBps::TieredBpsConfig]
        required :tiered_bps_config, -> { Orb::Price::TieredBps::TieredBpsConfig }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::TieredBps::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredBps::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_bps_config:, dimensional_price_configuration: nil, model_type: :tiered_bps)
        #   Some parameter documentations has been truncated, see {Orb::Price::TieredBps}
        #   for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::TieredBps::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::TieredBps::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::TieredBps::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::TieredBps::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::TieredBps::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::TieredBps::Item]
        #
        #   @param maximum [Orb::Price::TieredBps::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::TieredBps::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::TieredBps::PriceType]
        #
        #   @param tiered_bps_config [Orb::Price::TieredBps::TieredBpsConfig]
        #
        #   @param dimensional_price_configuration [Orb::Price::TieredBps::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_bps]

        # @see Orb::Price::TieredBps#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::TieredBps#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredBps::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredBps#cadence
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

        # @see Orb::Price::TieredBps#credit_allocation
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

        # @see Orb::Price::TieredBps#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredBps#item
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

        # @see Orb::Price::TieredBps#maximum
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
          #   {Orb::Price::TieredBps::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::TieredBps#minimum
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
          #   {Orb::Price::TieredBps::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::TieredBps#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::TieredBps#tiered_bps_config
        class TieredBpsConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          #   tiers
          #
          #   @return [Array<Orb::Price::TieredBps::TieredBpsConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::TieredBps::TieredBpsConfig::Tier] }

          # @!method initialize(tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Price::TieredBps::TieredBpsConfig} for more details.
          #
          #   @param tiers [Array<Orb::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

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

        # @see Orb::Price::TieredBps#dimensional_price_configuration
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
        #   @return [Orb::Price::Bps::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Bps::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::Bps::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Bps::BillingCycleConfiguration }

        # @!attribute bps_config
        #
        #   @return [Orb::Price::Bps::BpsConfig]
        required :bps_config, -> { Orb::Price::Bps::BpsConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::Bps::Cadence]
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
        #   @return [Orb::Price::Bps::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Bps::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::Bps::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> {
                   Orb::Price::Bps::InvoicingCycleConfiguration
                 },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::Bps::Item]
        required :item, -> { Orb::Price::Bps::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::Bps::Maximum, nil]
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
        #   @return [Orb::Price::Bps::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::Bps::PriceType]
        required :price_type, enum: -> { Orb::Price::Bps::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::Bps::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Bps::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bps_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bps)
        #   Some parameter documentations has been truncated, see {Orb::Price::Bps} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::Bps::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::Bps::BillingCycleConfiguration]
        #
        #   @param bps_config [Orb::Price::Bps::BpsConfig]
        #
        #   @param cadence [Symbol, Orb::Price::Bps::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::Bps::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::Bps::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::Bps::Item]
        #
        #   @param maximum [Orb::Price::Bps::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::Bps::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::Bps::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::Bps::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bps]

        # @see Orb::Price::Bps#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::Bps#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Bps::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bps::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Bps::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Bps::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Bps#bps_config
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

        # @see Orb::Price::Bps#cadence
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

        # @see Orb::Price::Bps#credit_allocation
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

        # @see Orb::Price::Bps#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Bps::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Bps#item
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

        # @see Orb::Price::Bps#maximum
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
          #   Some parameter documentations has been truncated, see {Orb::Price::Bps::Maximum}
          #   for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::Bps#minimum
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
          #   Some parameter documentations has been truncated, see {Orb::Price::Bps::Minimum}
          #   for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::Bps#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::Bps#dimensional_price_configuration
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
        #   @return [Orb::Price::BulkBps::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::BulkBps::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::BulkBps::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::BulkBps::BillingCycleConfiguration }

        # @!attribute bulk_bps_config
        #
        #   @return [Orb::Price::BulkBps::BulkBpsConfig]
        required :bulk_bps_config, -> { Orb::Price::BulkBps::BulkBpsConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::BulkBps::Cadence]
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
        #   @return [Orb::Price::BulkBps::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::BulkBps::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::BulkBps::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::BulkBps::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::BulkBps::Item]
        required :item, -> { Orb::Price::BulkBps::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::BulkBps::Maximum, nil]
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
        #   @return [Orb::Price::BulkBps::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::BulkBps::PriceType]
        required :price_type, enum: -> { Orb::Price::BulkBps::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::BulkBps::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::BulkBps::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_bps_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk_bps)
        #   Some parameter documentations has been truncated, see {Orb::Price::BulkBps} for
        #   more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::BulkBps::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::BulkBps::BillingCycleConfiguration]
        #
        #   @param bulk_bps_config [Orb::Price::BulkBps::BulkBpsConfig]
        #
        #   @param cadence [Symbol, Orb::Price::BulkBps::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::BulkBps::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::BulkBps::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::BulkBps::Item]
        #
        #   @param maximum [Orb::Price::BulkBps::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::BulkBps::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::BulkBps::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::BulkBps::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk_bps]

        # @see Orb::Price::BulkBps#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::BulkBps#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::BulkBps::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::BulkBps#bulk_bps_config
        class BulkBpsConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          #   tier based on total volume
          #
          #   @return [Array<Orb::Price::BulkBps::BulkBpsConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::BulkBps::BulkBpsConfig::Tier] }

          # @!method initialize(tiers:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Price::BulkBps::BulkBpsConfig} for more details.
          #
          #   @param tiers [Array<Orb::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

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

        # @see Orb::Price::BulkBps#cadence
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

        # @see Orb::Price::BulkBps#credit_allocation
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

        # @see Orb::Price::BulkBps#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::BulkBps#item
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

        # @see Orb::Price::BulkBps#maximum
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
          #   {Orb::Price::BulkBps::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::BulkBps#minimum
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
          #   {Orb::Price::BulkBps::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::BulkBps#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::BulkBps#dimensional_price_configuration
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
        #   @return [Orb::Price::Bulk::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::Bulk::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::Bulk::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::Bulk::BillingCycleConfiguration }

        # @!attribute bulk_config
        #
        #   @return [Orb::Price::Bulk::BulkConfig]
        required :bulk_config, -> { Orb::Price::Bulk::BulkConfig }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::Bulk::Cadence]
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
        #   @return [Orb::Price::Bulk::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::Bulk::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::Bulk::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> {
                   Orb::Price::Bulk::InvoicingCycleConfiguration
                 },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::Bulk::Item]
        required :item, -> { Orb::Price::Bulk::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::Bulk::Maximum, nil]
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
        #   @return [Orb::Price::Bulk::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::Bulk::PriceType]
        required :price_type, enum: -> { Orb::Price::Bulk::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::Bulk::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::Bulk::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk)
        #   Some parameter documentations has been truncated, see {Orb::Price::Bulk} for
        #   more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::Bulk::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::Bulk::BillingCycleConfiguration]
        #
        #   @param bulk_config [Orb::Price::Bulk::BulkConfig]
        #
        #   @param cadence [Symbol, Orb::Price::Bulk::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::Bulk::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::Bulk::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::Bulk::Item]
        #
        #   @param maximum [Orb::Price::Bulk::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::Bulk::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::Bulk::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::Bulk::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk]

        # @see Orb::Price::Bulk#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::Bulk#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Bulk::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Bulk#bulk_config
        class BulkConfig < Orb::Internal::Type::BaseModel
          # @!attribute tiers
          #   Bulk tiers for rating based on total usage volume
          #
          #   @return [Array<Orb::Price::Bulk::BulkConfig::Tier>]
          required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Price::Bulk::BulkConfig::Tier] }

          # @!method initialize(tiers:)
          #   @param tiers [Array<Orb::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

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

        # @see Orb::Price::Bulk#cadence
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

        # @see Orb::Price::Bulk#credit_allocation
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

        # @see Orb::Price::Bulk#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit, enum: -> { Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::Bulk::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::Bulk#item
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

        # @see Orb::Price::Bulk#maximum
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
          #   {Orb::Price::Bulk::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::Bulk#minimum
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
          #   {Orb::Price::Bulk::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::Bulk#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::Bulk#dimensional_price_configuration
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
        #   @return [Orb::Price::ThresholdTotalAmount::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::ThresholdTotalAmount::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::ThresholdTotalAmount::Cadence]
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
        #   @return [Orb::Price::ThresholdTotalAmount::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::ThresholdTotalAmount::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::ThresholdTotalAmount::Item]
        required :item, -> { Orb::Price::ThresholdTotalAmount::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::ThresholdTotalAmount::Maximum, nil]
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
        #   @return [Orb::Price::ThresholdTotalAmount::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::ThresholdTotalAmount::PriceType]
        required :price_type, enum: -> { Orb::Price::ThresholdTotalAmount::PriceType }

        # @!attribute threshold_total_amount_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, threshold_total_amount_config:, dimensional_price_configuration: nil, model_type: :threshold_total_amount)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::ThresholdTotalAmount} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::ThresholdTotalAmount::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::ThresholdTotalAmount::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::ThresholdTotalAmount::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::ThresholdTotalAmount::Item]
        #
        #   @param maximum [Orb::Price::ThresholdTotalAmount::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::ThresholdTotalAmount::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::ThresholdTotalAmount::PriceType]
        #
        #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :threshold_total_amount]

        # @see Orb::Price::ThresholdTotalAmount#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::ThresholdTotalAmount#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::ThresholdTotalAmount#cadence
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

        # @see Orb::Price::ThresholdTotalAmount#credit_allocation
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

        # @see Orb::Price::ThresholdTotalAmount#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::ThresholdTotalAmount#item
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

        # @see Orb::Price::ThresholdTotalAmount#maximum
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
          #   {Orb::Price::ThresholdTotalAmount::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::ThresholdTotalAmount#minimum
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
          #   {Orb::Price::ThresholdTotalAmount::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::ThresholdTotalAmount#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::ThresholdTotalAmount#dimensional_price_configuration
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
        #   @return [Orb::Price::TieredPackage::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredPackage::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::TieredPackage::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::TieredPackage::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::TieredPackage::Cadence]
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
        #   @return [Orb::Price::TieredPackage::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredPackage::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::TieredPackage::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredPackage::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::TieredPackage::Item]
        required :item, -> { Orb::Price::TieredPackage::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::TieredPackage::Maximum, nil]
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
        #   @return [Orb::Price::TieredPackage::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::TieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredPackage::PriceType }

        # @!attribute tiered_package_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::TieredPackage::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredPackage::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_package_config:, dimensional_price_configuration: nil, model_type: :tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::TieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::TieredPackage::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::TieredPackage::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::TieredPackage::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::TieredPackage::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::TieredPackage::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::TieredPackage::Item]
        #
        #   @param maximum [Orb::Price::TieredPackage::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::TieredPackage::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::TieredPackage::PriceType]
        #
        #   @param tiered_package_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::TieredPackage::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package]

        # @see Orb::Price::TieredPackage#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::TieredPackage#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredPackage::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredPackage#cadence
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

        # @see Orb::Price::TieredPackage#credit_allocation
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

        # @see Orb::Price::TieredPackage#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredPackage#item
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

        # @see Orb::Price::TieredPackage#maximum
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
          #   {Orb::Price::TieredPackage::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::TieredPackage#minimum
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
          #   {Orb::Price::TieredPackage::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::TieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::TieredPackage#dimensional_price_configuration
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
        #   @return [Orb::Price::GroupedTiered::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedTiered::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::GroupedTiered::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::GroupedTiered::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::GroupedTiered::Cadence]
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
        #   @return [Orb::Price::GroupedTiered::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::GroupedTiered::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedTiered::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::GroupedTiered::Item]
        required :item, -> { Orb::Price::GroupedTiered::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::GroupedTiered::Maximum, nil]
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
        #   @return [Orb::Price::GroupedTiered::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::GroupedTiered::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedTiered::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedTiered::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_tiered)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::GroupedTiered} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::GroupedTiered::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::GroupedTiered::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::GroupedTiered::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::GroupedTiered::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_tiered_config [Hash{Symbol=>Object}]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::GroupedTiered::Item]
        #
        #   @param maximum [Orb::Price::GroupedTiered::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::GroupedTiered::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::GroupedTiered::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_tiered]

        # @see Orb::Price::GroupedTiered#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::GroupedTiered#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedTiered::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedTiered#cadence
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

        # @see Orb::Price::GroupedTiered#credit_allocation
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

        # @see Orb::Price::GroupedTiered#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedTiered::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedTiered#item
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

        # @see Orb::Price::GroupedTiered#maximum
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
          #   {Orb::Price::GroupedTiered::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::GroupedTiered#minimum
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
          #   {Orb::Price::GroupedTiered::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::GroupedTiered#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::GroupedTiered#dimensional_price_configuration
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
        #   @return [Orb::Price::TieredWithMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredWithMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::TieredWithMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::TieredWithMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::TieredWithMinimum::Cadence]
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
        #   @return [Orb::Price::TieredWithMinimum::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredWithMinimum::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::TieredWithMinimum::Item]
        required :item, -> { Orb::Price::TieredWithMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::TieredWithMinimum::Maximum, nil]
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
        #   @return [Orb::Price::TieredWithMinimum::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::TieredWithMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredWithMinimum::PriceType }

        # @!attribute tiered_with_minimum_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_with_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::TieredWithMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::TieredWithMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::TieredWithMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::TieredWithMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::TieredWithMinimum::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::TieredWithMinimum::Item]
        #
        #   @param maximum [Orb::Price::TieredWithMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::TieredWithMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::TieredWithMinimum::PriceType]
        #
        #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_minimum]

        # @see Orb::Price::TieredWithMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::TieredWithMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredWithMinimum#cadence
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

        # @see Orb::Price::TieredWithMinimum#credit_allocation
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

        # @see Orb::Price::TieredWithMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredWithMinimum#item
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

        # @see Orb::Price::TieredWithMinimum#maximum
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
          #   {Orb::Price::TieredWithMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::TieredWithMinimum#minimum
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
          #   {Orb::Price::TieredWithMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::TieredWithMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::TieredWithMinimum#dimensional_price_configuration
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
        #   @return [Orb::Price::TieredPackageWithMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredPackageWithMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::TieredPackageWithMinimum::Cadence]
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
        #   @return [Orb::Price::TieredPackageWithMinimum::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredPackageWithMinimum::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::TieredPackageWithMinimum::Item]
        required :item, -> { Orb::Price::TieredPackageWithMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::TieredPackageWithMinimum::Maximum, nil]
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
        #   @return [Orb::Price::TieredPackageWithMinimum::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::TieredPackageWithMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredPackageWithMinimum::PriceType }

        # @!attribute tiered_package_with_minimum_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_package_with_minimum_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_package_with_minimum_config:, dimensional_price_configuration: nil, model_type: :tiered_package_with_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::TieredPackageWithMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::TieredPackageWithMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::TieredPackageWithMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::TieredPackageWithMinimum::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::TieredPackageWithMinimum::Item]
        #
        #   @param maximum [Orb::Price::TieredPackageWithMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::TieredPackageWithMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::TieredPackageWithMinimum::PriceType]
        #
        #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_package_with_minimum]

        # @see Orb::Price::TieredPackageWithMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::TieredPackageWithMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredPackageWithMinimum#cadence
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

        # @see Orb::Price::TieredPackageWithMinimum#credit_allocation
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

        # @see Orb::Price::TieredPackageWithMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredPackageWithMinimum#item
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

        # @see Orb::Price::TieredPackageWithMinimum#maximum
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
          #   {Orb::Price::TieredPackageWithMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::TieredPackageWithMinimum#minimum
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
          #   {Orb::Price::TieredPackageWithMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::TieredPackageWithMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::TieredPackageWithMinimum#dimensional_price_configuration
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
        #   @return [Orb::Price::PackageWithAllocation::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::PackageWithAllocation::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::PackageWithAllocation::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::PackageWithAllocation::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::PackageWithAllocation::Cadence]
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
        #   @return [Orb::Price::PackageWithAllocation::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::PackageWithAllocation::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::PackageWithAllocation::Item]
        required :item, -> { Orb::Price::PackageWithAllocation::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::PackageWithAllocation::Maximum, nil]
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
        #   @return [Orb::Price::PackageWithAllocation::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::PackageWithAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::PackageWithAllocation::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, package_with_allocation_config:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :package_with_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::PackageWithAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::PackageWithAllocation::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::PackageWithAllocation::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::PackageWithAllocation::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::PackageWithAllocation::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::PackageWithAllocation::Item]
        #
        #   @param maximum [Orb::Price::PackageWithAllocation::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::PackageWithAllocation::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param package_with_allocation_config [Hash{Symbol=>Object}]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::PackageWithAllocation::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :package_with_allocation]

        # @see Orb::Price::PackageWithAllocation#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::PackageWithAllocation#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::PackageWithAllocation#cadence
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

        # @see Orb::Price::PackageWithAllocation#credit_allocation
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

        # @see Orb::Price::PackageWithAllocation#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::PackageWithAllocation#item
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

        # @see Orb::Price::PackageWithAllocation#maximum
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
          #   {Orb::Price::PackageWithAllocation::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::PackageWithAllocation#minimum
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
          #   {Orb::Price::PackageWithAllocation::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::PackageWithAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::PackageWithAllocation#dimensional_price_configuration
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
        #   @return [Orb::Price::UnitWithPercent::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::UnitWithPercent::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::UnitWithPercent::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::UnitWithPercent::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::UnitWithPercent::Cadence]
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
        #   @return [Orb::Price::UnitWithPercent::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::UnitWithPercent::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::UnitWithPercent::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::UnitWithPercent::Item]
        required :item, -> { Orb::Price::UnitWithPercent::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::UnitWithPercent::Maximum, nil]
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
        #   @return [Orb::Price::UnitWithPercent::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::UnitWithPercent::PriceType]
        required :price_type, enum: -> { Orb::Price::UnitWithPercent::PriceType }

        # @!attribute unit_with_percent_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::UnitWithPercent::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_with_percent_config:, dimensional_price_configuration: nil, model_type: :unit_with_percent)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::UnitWithPercent} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::UnitWithPercent::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::UnitWithPercent::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::UnitWithPercent::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::UnitWithPercent::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::UnitWithPercent::Item]
        #
        #   @param maximum [Orb::Price::UnitWithPercent::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::UnitWithPercent::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::UnitWithPercent::PriceType]
        #
        #   @param unit_with_percent_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_percent]

        # @see Orb::Price::UnitWithPercent#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::UnitWithPercent#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::UnitWithPercent#cadence
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

        # @see Orb::Price::UnitWithPercent#credit_allocation
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

        # @see Orb::Price::UnitWithPercent#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::UnitWithPercent#item
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

        # @see Orb::Price::UnitWithPercent#maximum
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
          #   {Orb::Price::UnitWithPercent::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::UnitWithPercent#minimum
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
          #   {Orb::Price::UnitWithPercent::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::UnitWithPercent#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::UnitWithPercent#dimensional_price_configuration
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
        #   @return [Orb::Price::MatrixWithAllocation::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::MatrixWithAllocation::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::MatrixWithAllocation::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::MatrixWithAllocation::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::MatrixWithAllocation::Cadence]
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
        #   @return [Orb::Price::MatrixWithAllocation::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::MatrixWithAllocation::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::MatrixWithAllocation::Item]
        required :item, -> { Orb::Price::MatrixWithAllocation::Item }

        # @!attribute matrix_with_allocation_config
        #
        #   @return [Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
        required :matrix_with_allocation_config,
                 -> { Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig }

        # @!attribute maximum
        #
        #   @return [Orb::Price::MatrixWithAllocation::Maximum, nil]
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
        #   @return [Orb::Price::MatrixWithAllocation::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::MatrixWithAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::MatrixWithAllocation::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_allocation_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix_with_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::MatrixWithAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::MatrixWithAllocation::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::MatrixWithAllocation::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::MatrixWithAllocation::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::MatrixWithAllocation::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::MatrixWithAllocation::Item]
        #
        #   @param matrix_with_allocation_config [Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
        #
        #   @param maximum [Orb::Price::MatrixWithAllocation::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::MatrixWithAllocation::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::MatrixWithAllocation::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix_with_allocation]

        # @see Orb::Price::MatrixWithAllocation#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::MatrixWithAllocation#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::MatrixWithAllocation::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::MatrixWithAllocation#cadence
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

        # @see Orb::Price::MatrixWithAllocation#credit_allocation
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

        # @see Orb::Price::MatrixWithAllocation#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::MatrixWithAllocation#item
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

        # @see Orb::Price::MatrixWithAllocation#matrix_with_allocation_config
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
          #   @return [Array<Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>]
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
          #   @param matrix_values [Array<Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
            #   {Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue} for
            #   more details.
            #
            #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
            #
            #   @param unit_amount [String] Unit price for the specified dimension_values
          end
        end

        # @see Orb::Price::MatrixWithAllocation#maximum
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
          #   {Orb::Price::MatrixWithAllocation::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::MatrixWithAllocation#minimum
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
          #   {Orb::Price::MatrixWithAllocation::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::MatrixWithAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::MatrixWithAllocation#dimensional_price_configuration
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
        #   @return [Orb::Price::TieredWithProration::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::TieredWithProration::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::TieredWithProration::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::TieredWithProration::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::TieredWithProration::Cadence]
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
        #   @return [Orb::Price::TieredWithProration::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::TieredWithProration::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::TieredWithProration::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::TieredWithProration::Item]
        required :item, -> { Orb::Price::TieredWithProration::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::TieredWithProration::Maximum, nil]
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
        #   @return [Orb::Price::TieredWithProration::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::TieredWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::TieredWithProration::PriceType }

        # @!attribute tiered_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::TieredWithProration::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, tiered_with_proration_config:, dimensional_price_configuration: nil, model_type: :tiered_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::TieredWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::TieredWithProration::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::TieredWithProration::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::TieredWithProration::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::TieredWithProration::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::TieredWithProration::Item]
        #
        #   @param maximum [Orb::Price::TieredWithProration::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::TieredWithProration::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::TieredWithProration::PriceType]
        #
        #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :tiered_with_proration]

        # @see Orb::Price::TieredWithProration#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::TieredWithProration#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredWithProration#cadence
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

        # @see Orb::Price::TieredWithProration#credit_allocation
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

        # @see Orb::Price::TieredWithProration#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::TieredWithProration#item
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

        # @see Orb::Price::TieredWithProration#maximum
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
          #   {Orb::Price::TieredWithProration::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::TieredWithProration#minimum
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
          #   {Orb::Price::TieredWithProration::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::TieredWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::TieredWithProration#dimensional_price_configuration
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
        #   @return [Orb::Price::UnitWithProration::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::UnitWithProration::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::UnitWithProration::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::UnitWithProration::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::UnitWithProration::Cadence]
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
        #   @return [Orb::Price::UnitWithProration::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::UnitWithProration::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::UnitWithProration::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::UnitWithProration::Item]
        required :item, -> { Orb::Price::UnitWithProration::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::UnitWithProration::Maximum, nil]
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
        #   @return [Orb::Price::UnitWithProration::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::UnitWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::UnitWithProration::PriceType }

        # @!attribute unit_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::UnitWithProration::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, unit_with_proration_config:, dimensional_price_configuration: nil, model_type: :unit_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::UnitWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::UnitWithProration::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::UnitWithProration::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::UnitWithProration::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::UnitWithProration::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::UnitWithProration::Item]
        #
        #   @param maximum [Orb::Price::UnitWithProration::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::UnitWithProration::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::UnitWithProration::PriceType]
        #
        #   @param unit_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :unit_with_proration]

        # @see Orb::Price::UnitWithProration#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::UnitWithProration#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::UnitWithProration#cadence
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

        # @see Orb::Price::UnitWithProration#credit_allocation
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

        # @see Orb::Price::UnitWithProration#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::UnitWithProration#item
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

        # @see Orb::Price::UnitWithProration#maximum
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
          #   {Orb::Price::UnitWithProration::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::UnitWithProration#minimum
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
          #   {Orb::Price::UnitWithProration::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::UnitWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::UnitWithProration#dimensional_price_configuration
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
        #   @return [Orb::Price::GroupedAllocation::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedAllocation::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::GroupedAllocation::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::GroupedAllocation::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::GroupedAllocation::Cadence]
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
        #   @return [Orb::Price::GroupedAllocation::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::GroupedAllocation::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedAllocation::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::GroupedAllocation::Item]
        required :item, -> { Orb::Price::GroupedAllocation::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::GroupedAllocation::Maximum, nil]
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
        #   @return [Orb::Price::GroupedAllocation::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::GroupedAllocation::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedAllocation::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedAllocation::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_allocation_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_allocation)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::GroupedAllocation} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::GroupedAllocation::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::GroupedAllocation::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::GroupedAllocation::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::GroupedAllocation::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_allocation_config [Hash{Symbol=>Object}]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::GroupedAllocation::Item]
        #
        #   @param maximum [Orb::Price::GroupedAllocation::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::GroupedAllocation::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::GroupedAllocation::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_allocation]

        # @see Orb::Price::GroupedAllocation#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::GroupedAllocation#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedAllocation#cadence
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

        # @see Orb::Price::GroupedAllocation#credit_allocation
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

        # @see Orb::Price::GroupedAllocation#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedAllocation#item
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

        # @see Orb::Price::GroupedAllocation#maximum
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
          #   {Orb::Price::GroupedAllocation::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::GroupedAllocation#minimum
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
          #   {Orb::Price::GroupedAllocation::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::GroupedAllocation#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::GroupedAllocation#dimensional_price_configuration
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
        #   @return [Orb::Price::GroupedWithProratedMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedWithProratedMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::GroupedWithProratedMinimum::Cadence]
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
        #   @return [Orb::Price::GroupedWithProratedMinimum::CreditAllocation, nil]
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
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::GroupedWithProratedMinimum::Item]
        required :item, -> { Orb::Price::GroupedWithProratedMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::GroupedWithProratedMinimum::Maximum, nil]
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
        #   @return [Orb::Price::GroupedWithProratedMinimum::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::GroupedWithProratedMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedWithProratedMinimum::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_prorated_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_with_prorated_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::GroupedWithProratedMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::GroupedWithProratedMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::GroupedWithProratedMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::GroupedWithProratedMinimum::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::GroupedWithProratedMinimum::Item]
        #
        #   @param maximum [Orb::Price::GroupedWithProratedMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::GroupedWithProratedMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::GroupedWithProratedMinimum::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_with_prorated_minimum]

        # @see Orb::Price::GroupedWithProratedMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::GroupedWithProratedMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedWithProratedMinimum#cadence
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

        # @see Orb::Price::GroupedWithProratedMinimum#credit_allocation
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

        # @see Orb::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedWithProratedMinimum#item
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

        # @see Orb::Price::GroupedWithProratedMinimum#maximum
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
          #   {Orb::Price::GroupedWithProratedMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::GroupedWithProratedMinimum#minimum
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
          #   {Orb::Price::GroupedWithProratedMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::GroupedWithProratedMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::GroupedWithProratedMinimum#dimensional_price_configuration
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
        #   @return [Orb::Price::GroupedWithMeteredMinimum::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedWithMeteredMinimum::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::GroupedWithMeteredMinimum::Cadence]
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
        #   @return [Orb::Price::GroupedWithMeteredMinimum::CreditAllocation, nil]
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
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::GroupedWithMeteredMinimum::Item]
        required :item, -> { Orb::Price::GroupedWithMeteredMinimum::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::GroupedWithMeteredMinimum::Maximum, nil]
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
        #   @return [Orb::Price::GroupedWithMeteredMinimum::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::GroupedWithMeteredMinimum::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedWithMeteredMinimum::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_with_metered_minimum_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_with_metered_minimum)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::GroupedWithMeteredMinimum} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::GroupedWithMeteredMinimum::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::GroupedWithMeteredMinimum::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::GroupedWithMeteredMinimum::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::GroupedWithMeteredMinimum::Item]
        #
        #   @param maximum [Orb::Price::GroupedWithMeteredMinimum::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::GroupedWithMeteredMinimum::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::GroupedWithMeteredMinimum::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_with_metered_minimum]

        # @see Orb::Price::GroupedWithMeteredMinimum#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedWithMeteredMinimum#cadence
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

        # @see Orb::Price::GroupedWithMeteredMinimum#credit_allocation
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

        # @see Orb::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedWithMeteredMinimum#item
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

        # @see Orb::Price::GroupedWithMeteredMinimum#maximum
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
          #   {Orb::Price::GroupedWithMeteredMinimum::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::GroupedWithMeteredMinimum#minimum
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
          #   {Orb::Price::GroupedWithMeteredMinimum::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::GroupedWithMeteredMinimum#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::GroupedWithMeteredMinimum#dimensional_price_configuration
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
        #   @return [Orb::Price::MatrixWithDisplayName::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::MatrixWithDisplayName::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::MatrixWithDisplayName::Cadence]
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
        #   @return [Orb::Price::MatrixWithDisplayName::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::MatrixWithDisplayName::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::MatrixWithDisplayName::Item]
        required :item, -> { Orb::Price::MatrixWithDisplayName::Item }

        # @!attribute matrix_with_display_name_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :matrix_with_display_name_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Price::MatrixWithDisplayName::Maximum, nil]
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
        #   @return [Orb::Price::MatrixWithDisplayName::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::MatrixWithDisplayName::PriceType]
        required :price_type, enum: -> { Orb::Price::MatrixWithDisplayName::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, matrix_with_display_name_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :matrix_with_display_name)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::MatrixWithDisplayName} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::MatrixWithDisplayName::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::MatrixWithDisplayName::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::MatrixWithDisplayName::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::MatrixWithDisplayName::Item]
        #
        #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
        #
        #   @param maximum [Orb::Price::MatrixWithDisplayName::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::MatrixWithDisplayName::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::MatrixWithDisplayName::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :matrix_with_display_name]

        # @see Orb::Price::MatrixWithDisplayName#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::MatrixWithDisplayName#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::MatrixWithDisplayName#cadence
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

        # @see Orb::Price::MatrixWithDisplayName#credit_allocation
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

        # @see Orb::Price::MatrixWithDisplayName#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::MatrixWithDisplayName#item
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

        # @see Orb::Price::MatrixWithDisplayName#maximum
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
          #   {Orb::Price::MatrixWithDisplayName::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::MatrixWithDisplayName#minimum
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
          #   {Orb::Price::MatrixWithDisplayName::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::MatrixWithDisplayName#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::MatrixWithDisplayName#dimensional_price_configuration
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
        #   @return [Orb::Price::BulkWithProration::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::BulkWithProration::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::BulkWithProration::BillingCycleConfiguration]
        required :billing_cycle_configuration, -> { Orb::Price::BulkWithProration::BillingCycleConfiguration }

        # @!attribute bulk_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::BulkWithProration::Cadence]
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
        #   @return [Orb::Price::BulkWithProration::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::BulkWithProration::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::BulkWithProration::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::BulkWithProration::Item]
        required :item, -> { Orb::Price::BulkWithProration::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::BulkWithProration::Maximum, nil]
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
        #   @return [Orb::Price::BulkWithProration::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::BulkWithProration::PriceType]
        required :price_type, enum: -> { Orb::Price::BulkWithProration::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::BulkWithProration::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, bulk_with_proration_config:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :bulk_with_proration)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::BulkWithProration} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::BulkWithProration::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::BulkWithProration::BillingCycleConfiguration]
        #
        #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #
        #   @param cadence [Symbol, Orb::Price::BulkWithProration::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::BulkWithProration::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::BulkWithProration::Item]
        #
        #   @param maximum [Orb::Price::BulkWithProration::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::BulkWithProration::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::BulkWithProration::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :bulk_with_proration]

        # @see Orb::Price::BulkWithProration#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::BulkWithProration#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::BulkWithProration#cadence
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

        # @see Orb::Price::BulkWithProration#credit_allocation
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

        # @see Orb::Price::BulkWithProration#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::BulkWithProration#item
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

        # @see Orb::Price::BulkWithProration#maximum
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
          #   {Orb::Price::BulkWithProration::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::BulkWithProration#minimum
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
          #   {Orb::Price::BulkWithProration::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::BulkWithProration#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::BulkWithProration#dimensional_price_configuration
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
        #   @return [Orb::Price::GroupedTieredPackage::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::GroupedTieredPackage::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::GroupedTieredPackage::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::GroupedTieredPackage::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::GroupedTieredPackage::Cadence]
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
        #   @return [Orb::Price::GroupedTieredPackage::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::GroupedTieredPackage::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::GroupedTieredPackage::Item]
        required :item, -> { Orb::Price::GroupedTieredPackage::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::GroupedTieredPackage::Maximum, nil]
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
        #   @return [Orb::Price::GroupedTieredPackage::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::GroupedTieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::GroupedTieredPackage::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, grouped_tiered_package_config:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :grouped_tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::GroupedTieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::GroupedTieredPackage::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::GroupedTieredPackage::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::GroupedTieredPackage::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::GroupedTieredPackage::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::GroupedTieredPackage::Item]
        #
        #   @param maximum [Orb::Price::GroupedTieredPackage::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::GroupedTieredPackage::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::GroupedTieredPackage::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :grouped_tiered_package]

        # @see Orb::Price::GroupedTieredPackage#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::GroupedTieredPackage#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedTieredPackage#cadence
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

        # @see Orb::Price::GroupedTieredPackage#credit_allocation
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

        # @see Orb::Price::GroupedTieredPackage#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::GroupedTieredPackage#item
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

        # @see Orb::Price::GroupedTieredPackage#maximum
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
          #   {Orb::Price::GroupedTieredPackage::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::GroupedTieredPackage#minimum
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
          #   {Orb::Price::GroupedTieredPackage::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::GroupedTieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::GroupedTieredPackage#dimensional_price_configuration
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
        #   @return [Orb::Price::MaxGroupTieredPackage::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::MaxGroupTieredPackage::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::MaxGroupTieredPackage::Cadence]
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
        #   @return [Orb::Price::MaxGroupTieredPackage::CreditAllocation, nil]
        required :credit_allocation, -> { Orb::Price::MaxGroupTieredPackage::CreditAllocation }, nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::MaxGroupTieredPackage::Item]
        required :item, -> { Orb::Price::MaxGroupTieredPackage::Item }

        # @!attribute max_group_tiered_package_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :max_group_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute maximum
        #
        #   @return [Orb::Price::MaxGroupTieredPackage::Maximum, nil]
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
        #   @return [Orb::Price::MaxGroupTieredPackage::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::MaxGroupTieredPackage::PriceType]
        required :price_type, enum: -> { Orb::Price::MaxGroupTieredPackage::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, max_group_tiered_package_config:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :max_group_tiered_package)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::MaxGroupTieredPackage} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::MaxGroupTieredPackage::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::MaxGroupTieredPackage::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::MaxGroupTieredPackage::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::MaxGroupTieredPackage::Item]
        #
        #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
        #
        #   @param maximum [Orb::Price::MaxGroupTieredPackage::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::MaxGroupTieredPackage::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::MaxGroupTieredPackage::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :max_group_tiered_package]

        # @see Orb::Price::MaxGroupTieredPackage#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::MaxGroupTieredPackage#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::MaxGroupTieredPackage#cadence
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

        # @see Orb::Price::MaxGroupTieredPackage#credit_allocation
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

        # @see Orb::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::MaxGroupTieredPackage#item
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

        # @see Orb::Price::MaxGroupTieredPackage#maximum
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
          #   {Orb::Price::MaxGroupTieredPackage::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::MaxGroupTieredPackage#minimum
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
          #   {Orb::Price::MaxGroupTieredPackage::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::MaxGroupTieredPackage#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::MaxGroupTieredPackage#dimensional_price_configuration
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
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::Cadence]
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
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation },
                 nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::Item]
        required :item, -> { Orb::Price::ScalableMatrixWithUnitPricing::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::Maximum, nil]
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
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::PriceType]
        required :price_type, enum: -> { Orb::Price::ScalableMatrixWithUnitPricing::PriceType }

        # @!attribute scalable_matrix_with_unit_pricing_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_unit_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, scalable_matrix_with_unit_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_unit_pricing)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::ScalableMatrixWithUnitPricing} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::ScalableMatrixWithUnitPricing::Item]
        #
        #   @param maximum [Orb::Price::ScalableMatrixWithUnitPricing::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::ScalableMatrixWithUnitPricing::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::PriceType]
        #
        #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

        # @see Orb::Price::ScalableMatrixWithUnitPricing#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::ScalableMatrixWithUnitPricing#cadence
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

        # @see Orb::Price::ScalableMatrixWithUnitPricing#credit_allocation
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

        # @see Orb::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::ScalableMatrixWithUnitPricing#item
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

        # @see Orb::Price::ScalableMatrixWithUnitPricing#maximum
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
          #   {Orb::Price::ScalableMatrixWithUnitPricing::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::ScalableMatrixWithUnitPricing#minimum
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
          #   {Orb::Price::ScalableMatrixWithUnitPricing::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::ScalableMatrixWithUnitPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::ScalableMatrixWithUnitPricing#dimensional_price_configuration
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
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric, nil]
        required :billable_metric,
                 -> {
                   Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric
                 },
                 nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::Cadence]
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
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation, nil]
        required :credit_allocation,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation },
                 nil?: true

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::Item]
        required :item, -> { Orb::Price::ScalableMatrixWithTieredPricing::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::Maximum, nil]
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
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::PriceType]
        required :price_type, enum: -> { Orb::Price::ScalableMatrixWithTieredPricing::PriceType }

        # @!attribute scalable_matrix_with_tiered_pricing_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :scalable_matrix_with_tiered_pricing_config,
                 Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, scalable_matrix_with_tiered_pricing_config:, dimensional_price_configuration: nil, model_type: :scalable_matrix_with_tiered_pricing)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::ScalableMatrixWithTieredPricing} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation, nil]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::ScalableMatrixWithTieredPricing::Item]
        #
        #   @param maximum [Orb::Price::ScalableMatrixWithTieredPricing::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::ScalableMatrixWithTieredPricing::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::PriceType]
        #
        #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #
        #   @param dimensional_price_configuration [Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

        # @see Orb::Price::ScalableMatrixWithTieredPricing#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::ScalableMatrixWithTieredPricing#cadence
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

        # @see Orb::Price::ScalableMatrixWithTieredPricing#credit_allocation
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

        # @see Orb::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> {
                     Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                   }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::ScalableMatrixWithTieredPricing#item
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

        # @see Orb::Price::ScalableMatrixWithTieredPricing#maximum
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
          #   {Orb::Price::ScalableMatrixWithTieredPricing::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::ScalableMatrixWithTieredPricing#minimum
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
          #   {Orb::Price::ScalableMatrixWithTieredPricing::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::ScalableMatrixWithTieredPricing#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::ScalableMatrixWithTieredPricing#dimensional_price_configuration
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
        #   @return [Orb::Price::CumulativeGroupedBulk::BillableMetric, nil]
        required :billable_metric, -> { Orb::Price::CumulativeGroupedBulk::BillableMetric }, nil?: true

        # @!attribute billing_cycle_configuration
        #
        #   @return [Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration]
        required :billing_cycle_configuration,
                 -> {
                   Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                 }

        # @!attribute cadence
        #
        #   @return [Symbol, Orb::Price::CumulativeGroupedBulk::Cadence]
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
        #   @return [Orb::Price::CumulativeGroupedBulk::CreditAllocation, nil]
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
        #   @return [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
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
        #   @return [Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
        required :invoicing_cycle_configuration,
                 -> { Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration },
                 nil?: true

        # @!attribute item
        #
        #   @return [Orb::Price::CumulativeGroupedBulk::Item]
        required :item, -> { Orb::Price::CumulativeGroupedBulk::Item }

        # @!attribute maximum
        #
        #   @return [Orb::Price::CumulativeGroupedBulk::Maximum, nil]
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
        #   @return [Orb::Price::CumulativeGroupedBulk::Minimum, nil]
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
        #   @return [Symbol, Orb::Price::CumulativeGroupedBulk::PriceType]
        required :price_type, enum: -> { Orb::Price::CumulativeGroupedBulk::PriceType }

        # @!attribute dimensional_price_configuration
        #
        #   @return [Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
        optional :dimensional_price_configuration,
                 -> { Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration },
                 nil?: true

        # @!method initialize(id:, billable_metric:, billing_cycle_configuration:, cadence:, conversion_rate:, created_at:, credit_allocation:, cumulative_grouped_bulk_config:, currency:, discount:, external_price_id:, fixed_price_quantity:, invoicing_cycle_configuration:, item:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, plan_phase_order:, price_type:, dimensional_price_configuration: nil, model_type: :cumulative_grouped_bulk)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Price::CumulativeGroupedBulk} for more details.
        #
        #   @param id [String]
        #
        #   @param billable_metric [Orb::Price::CumulativeGroupedBulk::BillableMetric, nil]
        #
        #   @param billing_cycle_configuration [Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration]
        #
        #   @param cadence [Symbol, Orb::Price::CumulativeGroupedBulk::Cadence]
        #
        #   @param conversion_rate [Float, nil]
        #
        #   @param created_at [Time]
        #
        #   @param credit_allocation [Orb::Price::CumulativeGroupedBulk::CreditAllocation, nil]
        #
        #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
        #
        #   @param currency [String]
        #
        #   @param discount [Orb::PercentageDiscount, Orb::TrialDiscount, Orb::UsageDiscount, Orb::AmountDiscount, nil]
        #
        #   @param external_price_id [String, nil]
        #
        #   @param fixed_price_quantity [Float, nil]
        #
        #   @param invoicing_cycle_configuration [Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
        #
        #   @param item [Orb::Price::CumulativeGroupedBulk::Item]
        #
        #   @param maximum [Orb::Price::CumulativeGroupedBulk::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
        #
        #   @param minimum [Orb::Price::CumulativeGroupedBulk::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param plan_phase_order [Integer, nil]
        #
        #   @param price_type [Symbol, Orb::Price::CumulativeGroupedBulk::PriceType]
        #
        #   @param dimensional_price_configuration [Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
        #
        #   @param model_type [Symbol, :cumulative_grouped_bulk]

        # @see Orb::Price::CumulativeGroupedBulk#billable_metric
        class BillableMetric < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   @param id [String]
        end

        # @see Orb::Price::CumulativeGroupedBulk#billing_cycle_configuration
        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]

          # @see Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::CumulativeGroupedBulk#cadence
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

        # @see Orb::Price::CumulativeGroupedBulk#credit_allocation
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

        # @see Orb::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          # @!attribute duration
          #
          #   @return [Integer]
          required :duration, Integer

          # @!attribute duration_unit
          #
          #   @return [Symbol, Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
          required :duration_unit,
                   enum: -> { Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit }

          # @!method initialize(duration:, duration_unit:)
          #   @param duration [Integer]
          #   @param duration_unit [Symbol, Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]

          # @see Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
          module DurationUnit
            extend Orb::Internal::Type::Enum

            DAY = :day
            MONTH = :month

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Orb::Price::CumulativeGroupedBulk#item
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

        # @see Orb::Price::CumulativeGroupedBulk#maximum
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
          #   {Orb::Price::CumulativeGroupedBulk::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Price::CumulativeGroupedBulk#minimum
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
          #   {Orb::Price::CumulativeGroupedBulk::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #
          #   @param minimum_amount [String] Minimum amount applied
        end

        # @see Orb::Price::CumulativeGroupedBulk#price_type
        module PriceType
          extend Orb::Internal::Type::Enum

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Price::CumulativeGroupedBulk#dimensional_price_configuration
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
      #   @return [Array(Orb::Price::Unit, Orb::Price::Package, Orb::Price::Matrix, Orb::Price::Tiered, Orb::Price::TieredBps, Orb::Price::Bps, Orb::Price::BulkBps, Orb::Price::Bulk, Orb::Price::ThresholdTotalAmount, Orb::Price::TieredPackage, Orb::Price::GroupedTiered, Orb::Price::TieredWithMinimum, Orb::Price::TieredPackageWithMinimum, Orb::Price::PackageWithAllocation, Orb::Price::UnitWithPercent, Orb::Price::MatrixWithAllocation, Orb::Price::TieredWithProration, Orb::Price::UnitWithProration, Orb::Price::GroupedAllocation, Orb::Price::GroupedWithProratedMinimum, Orb::Price::GroupedWithMeteredMinimum, Orb::Price::MatrixWithDisplayName, Orb::Price::BulkWithProration, Orb::Price::GroupedTieredPackage, Orb::Price::MaxGroupTieredPackage, Orb::Price::ScalableMatrixWithUnitPricing, Orb::Price::ScalableMatrixWithTieredPricing, Orb::Price::CumulativeGroupedBulk)]

      define_sorbet_constant!(:Variants) do
        T.type_alias do
          T.any(
            Orb::Price::Unit,
            Orb::Price::Package,
            Orb::Price::Matrix,
            Orb::Price::Tiered,
            Orb::Price::TieredBps,
            Orb::Price::Bps,
            Orb::Price::BulkBps,
            Orb::Price::Bulk,
            Orb::Price::ThresholdTotalAmount,
            Orb::Price::TieredPackage,
            Orb::Price::GroupedTiered,
            Orb::Price::TieredWithMinimum,
            Orb::Price::TieredPackageWithMinimum,
            Orb::Price::PackageWithAllocation,
            Orb::Price::UnitWithPercent,
            Orb::Price::MatrixWithAllocation,
            Orb::Price::TieredWithProration,
            Orb::Price::UnitWithProration,
            Orb::Price::GroupedAllocation,
            Orb::Price::GroupedWithProratedMinimum,
            Orb::Price::GroupedWithMeteredMinimum,
            Orb::Price::MatrixWithDisplayName,
            Orb::Price::BulkWithProration,
            Orb::Price::GroupedTieredPackage,
            Orb::Price::MaxGroupTieredPackage,
            Orb::Price::ScalableMatrixWithUnitPricing,
            Orb::Price::ScalableMatrixWithTieredPricing,
            Orb::Price::CumulativeGroupedBulk
          )
        end
      end
    end
  end
end
