# typed: strong

module Orb
  module Models
    class PriceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::PriceCreateParams, Orb::Internal::AnyHash) }

      # The cadence to bill for this price on.
      sig { returns(Orb::PriceCreateParams::Cadence::OrSymbol) }
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      # The pricing model type
      sig { returns(Orb::PriceCreateParams::ModelType::OrSymbol) }
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      # Configuration for unit pricing
      sig { returns(Orb::UnitConfig) }
      attr_reader :unit_config

      sig { params(unit_config: Orb::UnitConfig::OrHash).void }
      attr_writer :unit_config

      # The id of the billable metric for the price. Only needed if the price is
      # usage-based.
      sig { returns(T.nilable(String)) }
      attr_accessor :billable_metric_id

      # If the Price represents a fixed cost, the price will be billed in-advance if
      # this is true, and in-arrears if this is false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :billed_in_advance

      # For custom cadence: specifies the duration of the billing period in days or
      # months.
      sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
      attr_reader :billing_cycle_configuration

      sig do
        params(
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
        ).void
      end
      attr_writer :billing_cycle_configuration

      # The per unit conversion rate of the price currency to the invoicing currency.
      sig { returns(T.nilable(Float)) }
      attr_accessor :conversion_rate

      # The configuration for the rate of the price currency to the invoicing currency.
      sig do
        returns(
          T.nilable(
            T.any(
              Orb::UnitConversionRateConfig,
              Orb::TieredConversionRateConfig
            )
          )
        )
      end
      attr_accessor :conversion_rate_config

      # For dimensional price: specifies a price group and dimension values
      sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
      attr_reader :dimensional_price_configuration

      sig do
        params(
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
        ).void
      end
      attr_writer :dimensional_price_configuration

      # An alias for the price.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_price_id

      # If the Price represents a fixed cost, this represents the quantity of units
      # applied.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_price_quantity

      # The property used to group this price on an invoice
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_grouping_key

      # Within each billing cycle, specifies the cadence at which invoices are produced.
      # If unspecified, a single invoice is produced per billing cycle.
      sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
      attr_reader :invoicing_cycle_configuration

      sig do
        params(
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
        ).void
      end
      attr_writer :invoicing_cycle_configuration

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # Configuration for tiered pricing
      sig { returns(Orb::TieredConfig) }
      attr_reader :tiered_config

      sig { params(tiered_config: Orb::TieredConfig::OrHash).void }
      attr_writer :tiered_config

      # Configuration for bulk pricing
      sig { returns(Orb::BulkConfig) }
      attr_reader :bulk_config

      sig { params(bulk_config: Orb::BulkConfig::OrHash).void }
      attr_writer :bulk_config

      # Configuration for package pricing
      sig { returns(Orb::PackageConfig) }
      attr_reader :package_config

      sig { params(package_config: Orb::PackageConfig::OrHash).void }
      attr_writer :package_config

      # Configuration for matrix pricing
      sig { returns(Orb::MatrixConfig) }
      attr_reader :matrix_config

      sig { params(matrix_config: Orb::MatrixConfig::OrHash).void }
      attr_writer :matrix_config

      # Configuration for threshold_total_amount pricing
      sig { returns(Orb::PriceCreateParams::ThresholdTotalAmountConfig) }
      attr_reader :threshold_total_amount_config

      sig do
        params(
          threshold_total_amount_config:
            Orb::PriceCreateParams::ThresholdTotalAmountConfig::OrHash
        ).void
      end
      attr_writer :threshold_total_amount_config

      # Configuration for tiered_package pricing
      sig { returns(Orb::PriceCreateParams::TieredPackageConfig) }
      attr_reader :tiered_package_config

      sig do
        params(
          tiered_package_config:
            Orb::PriceCreateParams::TieredPackageConfig::OrHash
        ).void
      end
      attr_writer :tiered_package_config

      # Configuration for tiered_with_minimum pricing
      sig { returns(Orb::PriceCreateParams::TieredWithMinimumConfig) }
      attr_reader :tiered_with_minimum_config

      sig do
        params(
          tiered_with_minimum_config:
            Orb::PriceCreateParams::TieredWithMinimumConfig::OrHash
        ).void
      end
      attr_writer :tiered_with_minimum_config

      # Configuration for grouped_tiered pricing
      sig { returns(Orb::PriceCreateParams::GroupedTieredConfig) }
      attr_reader :grouped_tiered_config

      sig do
        params(
          grouped_tiered_config:
            Orb::PriceCreateParams::GroupedTieredConfig::OrHash
        ).void
      end
      attr_writer :grouped_tiered_config

      # Configuration for tiered_package_with_minimum pricing
      sig { returns(Orb::PriceCreateParams::TieredPackageWithMinimumConfig) }
      attr_reader :tiered_package_with_minimum_config

      sig do
        params(
          tiered_package_with_minimum_config:
            Orb::PriceCreateParams::TieredPackageWithMinimumConfig::OrHash
        ).void
      end
      attr_writer :tiered_package_with_minimum_config

      # Configuration for package_with_allocation pricing
      sig { returns(Orb::PriceCreateParams::PackageWithAllocationConfig) }
      attr_reader :package_with_allocation_config

      sig do
        params(
          package_with_allocation_config:
            Orb::PriceCreateParams::PackageWithAllocationConfig::OrHash
        ).void
      end
      attr_writer :package_with_allocation_config

      # Configuration for unit_with_percent pricing
      sig { returns(Orb::PriceCreateParams::UnitWithPercentConfig) }
      attr_reader :unit_with_percent_config

      sig do
        params(
          unit_with_percent_config:
            Orb::PriceCreateParams::UnitWithPercentConfig::OrHash
        ).void
      end
      attr_writer :unit_with_percent_config

      # Configuration for matrix_with_allocation pricing
      sig { returns(Orb::MatrixWithAllocationConfig) }
      attr_reader :matrix_with_allocation_config

      sig do
        params(
          matrix_with_allocation_config: Orb::MatrixWithAllocationConfig::OrHash
        ).void
      end
      attr_writer :matrix_with_allocation_config

      # Configuration for tiered_with_proration pricing
      sig { returns(Orb::PriceCreateParams::TieredWithProrationConfig) }
      attr_reader :tiered_with_proration_config

      sig do
        params(
          tiered_with_proration_config:
            Orb::PriceCreateParams::TieredWithProrationConfig::OrHash
        ).void
      end
      attr_writer :tiered_with_proration_config

      # Configuration for unit_with_proration pricing
      sig { returns(Orb::PriceCreateParams::UnitWithProrationConfig) }
      attr_reader :unit_with_proration_config

      sig do
        params(
          unit_with_proration_config:
            Orb::PriceCreateParams::UnitWithProrationConfig::OrHash
        ).void
      end
      attr_writer :unit_with_proration_config

      # Configuration for grouped_allocation pricing
      sig { returns(Orb::PriceCreateParams::GroupedAllocationConfig) }
      attr_reader :grouped_allocation_config

      sig do
        params(
          grouped_allocation_config:
            Orb::PriceCreateParams::GroupedAllocationConfig::OrHash
        ).void
      end
      attr_writer :grouped_allocation_config

      # Configuration for bulk_with_proration pricing
      sig { returns(Orb::PriceCreateParams::BulkWithProrationConfig) }
      attr_reader :bulk_with_proration_config

      sig do
        params(
          bulk_with_proration_config:
            Orb::PriceCreateParams::BulkWithProrationConfig::OrHash
        ).void
      end
      attr_writer :bulk_with_proration_config

      # Configuration for grouped_with_prorated_minimum pricing
      sig { returns(Orb::PriceCreateParams::GroupedWithProratedMinimumConfig) }
      attr_reader :grouped_with_prorated_minimum_config

      sig do
        params(
          grouped_with_prorated_minimum_config:
            Orb::PriceCreateParams::GroupedWithProratedMinimumConfig::OrHash
        ).void
      end
      attr_writer :grouped_with_prorated_minimum_config

      # Configuration for grouped_with_metered_minimum pricing
      sig { returns(Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig) }
      attr_reader :grouped_with_metered_minimum_config

      sig do
        params(
          grouped_with_metered_minimum_config:
            Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::OrHash
        ).void
      end
      attr_writer :grouped_with_metered_minimum_config

      # Configuration for grouped_with_min_max_thresholds pricing
      sig { returns(Orb::PriceCreateParams::GroupedWithMinMaxThresholdsConfig) }
      attr_reader :grouped_with_min_max_thresholds_config

      sig do
        params(
          grouped_with_min_max_thresholds_config:
            Orb::PriceCreateParams::GroupedWithMinMaxThresholdsConfig::OrHash
        ).void
      end
      attr_writer :grouped_with_min_max_thresholds_config

      # Configuration for matrix_with_display_name pricing
      sig { returns(Orb::PriceCreateParams::MatrixWithDisplayNameConfig) }
      attr_reader :matrix_with_display_name_config

      sig do
        params(
          matrix_with_display_name_config:
            Orb::PriceCreateParams::MatrixWithDisplayNameConfig::OrHash
        ).void
      end
      attr_writer :matrix_with_display_name_config

      # Configuration for grouped_tiered_package pricing
      sig { returns(Orb::PriceCreateParams::GroupedTieredPackageConfig) }
      attr_reader :grouped_tiered_package_config

      sig do
        params(
          grouped_tiered_package_config:
            Orb::PriceCreateParams::GroupedTieredPackageConfig::OrHash
        ).void
      end
      attr_writer :grouped_tiered_package_config

      # Configuration for max_group_tiered_package pricing
      sig { returns(Orb::PriceCreateParams::MaxGroupTieredPackageConfig) }
      attr_reader :max_group_tiered_package_config

      sig do
        params(
          max_group_tiered_package_config:
            Orb::PriceCreateParams::MaxGroupTieredPackageConfig::OrHash
        ).void
      end
      attr_writer :max_group_tiered_package_config

      # Configuration for scalable_matrix_with_unit_pricing pricing
      sig do
        returns(Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig)
      end
      attr_reader :scalable_matrix_with_unit_pricing_config

      sig do
        params(
          scalable_matrix_with_unit_pricing_config:
            Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::OrHash
        ).void
      end
      attr_writer :scalable_matrix_with_unit_pricing_config

      # Configuration for scalable_matrix_with_tiered_pricing pricing
      sig do
        returns(Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig)
      end
      attr_reader :scalable_matrix_with_tiered_pricing_config

      sig do
        params(
          scalable_matrix_with_tiered_pricing_config:
            Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::OrHash
        ).void
      end
      attr_writer :scalable_matrix_with_tiered_pricing_config

      # Configuration for cumulative_grouped_bulk pricing
      sig { returns(Orb::PriceCreateParams::CumulativeGroupedBulkConfig) }
      attr_reader :cumulative_grouped_bulk_config

      sig do
        params(
          cumulative_grouped_bulk_config:
            Orb::PriceCreateParams::CumulativeGroupedBulkConfig::OrHash
        ).void
      end
      attr_writer :cumulative_grouped_bulk_config

      # Configuration for minimum pricing
      sig { returns(Orb::PriceCreateParams::MinimumConfig) }
      attr_reader :minimum_config

      sig do
        params(
          minimum_config: Orb::PriceCreateParams::MinimumConfig::OrHash
        ).void
      end
      attr_writer :minimum_config

      sig do
        params(
          cadence: Orb::PriceCreateParams::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type: Orb::PriceCreateParams::ModelType::OrSymbol,
          name: String,
          unit_config: Orb::UnitConfig::OrHash,
          tiered_config: Orb::TieredConfig::OrHash,
          bulk_config: Orb::BulkConfig::OrHash,
          package_config: Orb::PackageConfig::OrHash,
          matrix_config: Orb::MatrixConfig::OrHash,
          threshold_total_amount_config:
            Orb::PriceCreateParams::ThresholdTotalAmountConfig::OrHash,
          tiered_package_config:
            Orb::PriceCreateParams::TieredPackageConfig::OrHash,
          tiered_with_minimum_config:
            Orb::PriceCreateParams::TieredWithMinimumConfig::OrHash,
          grouped_tiered_config:
            Orb::PriceCreateParams::GroupedTieredConfig::OrHash,
          tiered_package_with_minimum_config:
            Orb::PriceCreateParams::TieredPackageWithMinimumConfig::OrHash,
          package_with_allocation_config:
            Orb::PriceCreateParams::PackageWithAllocationConfig::OrHash,
          unit_with_percent_config:
            Orb::PriceCreateParams::UnitWithPercentConfig::OrHash,
          matrix_with_allocation_config:
            Orb::MatrixWithAllocationConfig::OrHash,
          tiered_with_proration_config:
            Orb::PriceCreateParams::TieredWithProrationConfig::OrHash,
          unit_with_proration_config:
            Orb::PriceCreateParams::UnitWithProrationConfig::OrHash,
          grouped_allocation_config:
            Orb::PriceCreateParams::GroupedAllocationConfig::OrHash,
          bulk_with_proration_config:
            Orb::PriceCreateParams::BulkWithProrationConfig::OrHash,
          grouped_with_prorated_minimum_config:
            Orb::PriceCreateParams::GroupedWithProratedMinimumConfig::OrHash,
          grouped_with_metered_minimum_config:
            Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::OrHash,
          grouped_with_min_max_thresholds_config:
            Orb::PriceCreateParams::GroupedWithMinMaxThresholdsConfig::OrHash,
          matrix_with_display_name_config:
            Orb::PriceCreateParams::MatrixWithDisplayNameConfig::OrHash,
          grouped_tiered_package_config:
            Orb::PriceCreateParams::GroupedTieredPackageConfig::OrHash,
          max_group_tiered_package_config:
            Orb::PriceCreateParams::MaxGroupTieredPackageConfig::OrHash,
          scalable_matrix_with_unit_pricing_config:
            Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::OrHash,
          scalable_matrix_with_tiered_pricing_config:
            Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::OrHash,
          cumulative_grouped_bulk_config:
            Orb::PriceCreateParams::CumulativeGroupedBulkConfig::OrHash,
          minimum_config: Orb::PriceCreateParams::MinimumConfig::OrHash,
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          conversion_rate: T.nilable(Float),
          conversion_rate_config:
            T.nilable(
              T.any(
                Orb::UnitConversionRateConfig::OrHash,
                Orb::TieredConversionRateConfig::OrHash
              )
            ),
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cadence to bill for this price on.
        cadence:,
        # An ISO 4217 currency string for which this price is billed in.
        currency:,
        # The id of the item the price will be associated with.
        item_id:,
        # The pricing model type
        model_type:,
        # The name of the price.
        name:,
        # Configuration for unit pricing
        unit_config:,
        # Configuration for tiered pricing
        tiered_config:,
        # Configuration for bulk pricing
        bulk_config:,
        # Configuration for package pricing
        package_config:,
        # Configuration for matrix pricing
        matrix_config:,
        # Configuration for threshold_total_amount pricing
        threshold_total_amount_config:,
        # Configuration for tiered_package pricing
        tiered_package_config:,
        # Configuration for tiered_with_minimum pricing
        tiered_with_minimum_config:,
        # Configuration for grouped_tiered pricing
        grouped_tiered_config:,
        # Configuration for tiered_package_with_minimum pricing
        tiered_package_with_minimum_config:,
        # Configuration for package_with_allocation pricing
        package_with_allocation_config:,
        # Configuration for unit_with_percent pricing
        unit_with_percent_config:,
        # Configuration for matrix_with_allocation pricing
        matrix_with_allocation_config:,
        # Configuration for tiered_with_proration pricing
        tiered_with_proration_config:,
        # Configuration for unit_with_proration pricing
        unit_with_proration_config:,
        # Configuration for grouped_allocation pricing
        grouped_allocation_config:,
        # Configuration for bulk_with_proration pricing
        bulk_with_proration_config:,
        # Configuration for grouped_with_prorated_minimum pricing
        grouped_with_prorated_minimum_config:,
        # Configuration for grouped_with_metered_minimum pricing
        grouped_with_metered_minimum_config:,
        # Configuration for grouped_with_min_max_thresholds pricing
        grouped_with_min_max_thresholds_config:,
        # Configuration for matrix_with_display_name pricing
        matrix_with_display_name_config:,
        # Configuration for grouped_tiered_package pricing
        grouped_tiered_package_config:,
        # Configuration for max_group_tiered_package pricing
        max_group_tiered_package_config:,
        # Configuration for scalable_matrix_with_unit_pricing pricing
        scalable_matrix_with_unit_pricing_config:,
        # Configuration for scalable_matrix_with_tiered_pricing pricing
        scalable_matrix_with_tiered_pricing_config:,
        # Configuration for cumulative_grouped_bulk pricing
        cumulative_grouped_bulk_config:,
        # Configuration for minimum pricing
        minimum_config:,
        # The id of the billable metric for the price. Only needed if the price is
        # usage-based.
        billable_metric_id: nil,
        # If the Price represents a fixed cost, the price will be billed in-advance if
        # this is true, and in-arrears if this is false.
        billed_in_advance: nil,
        # For custom cadence: specifies the duration of the billing period in days or
        # months.
        billing_cycle_configuration: nil,
        # The per unit conversion rate of the price currency to the invoicing currency.
        conversion_rate: nil,
        # The configuration for the rate of the price currency to the invoicing currency.
        conversion_rate_config: nil,
        # For dimensional price: specifies a price group and dimension values
        dimensional_price_configuration: nil,
        # An alias for the price.
        external_price_id: nil,
        # If the Price represents a fixed cost, this represents the quantity of units
        # applied.
        fixed_price_quantity: nil,
        # The property used to group this price on an invoice
        invoice_grouping_key: nil,
        # Within each billing cycle, specifies the cadence at which invoices are produced.
        # If unspecified, a single invoice is produced per billing cycle.
        invoicing_cycle_configuration: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cadence: Orb::PriceCreateParams::Cadence::OrSymbol,
            currency: String,
            item_id: String,
            model_type: Orb::PriceCreateParams::ModelType::OrSymbol,
            name: String,
            unit_config: Orb::UnitConfig,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig,
                  Orb::TieredConversionRateConfig
                )
              ),
            dimensional_price_configuration:
              T.nilable(Orb::NewDimensionalPriceConfiguration),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            tiered_config: Orb::TieredConfig,
            bulk_config: Orb::BulkConfig,
            package_config: Orb::PackageConfig,
            matrix_config: Orb::MatrixConfig,
            threshold_total_amount_config:
              Orb::PriceCreateParams::ThresholdTotalAmountConfig,
            tiered_package_config: Orb::PriceCreateParams::TieredPackageConfig,
            tiered_with_minimum_config:
              Orb::PriceCreateParams::TieredWithMinimumConfig,
            grouped_tiered_config: Orb::PriceCreateParams::GroupedTieredConfig,
            tiered_package_with_minimum_config:
              Orb::PriceCreateParams::TieredPackageWithMinimumConfig,
            package_with_allocation_config:
              Orb::PriceCreateParams::PackageWithAllocationConfig,
            unit_with_percent_config:
              Orb::PriceCreateParams::UnitWithPercentConfig,
            matrix_with_allocation_config: Orb::MatrixWithAllocationConfig,
            tiered_with_proration_config:
              Orb::PriceCreateParams::TieredWithProrationConfig,
            unit_with_proration_config:
              Orb::PriceCreateParams::UnitWithProrationConfig,
            grouped_allocation_config:
              Orb::PriceCreateParams::GroupedAllocationConfig,
            bulk_with_proration_config:
              Orb::PriceCreateParams::BulkWithProrationConfig,
            grouped_with_prorated_minimum_config:
              Orb::PriceCreateParams::GroupedWithProratedMinimumConfig,
            grouped_with_metered_minimum_config:
              Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig,
            grouped_with_min_max_thresholds_config:
              Orb::PriceCreateParams::GroupedWithMinMaxThresholdsConfig,
            matrix_with_display_name_config:
              Orb::PriceCreateParams::MatrixWithDisplayNameConfig,
            grouped_tiered_package_config:
              Orb::PriceCreateParams::GroupedTieredPackageConfig,
            max_group_tiered_package_config:
              Orb::PriceCreateParams::MaxGroupTieredPackageConfig,
            scalable_matrix_with_unit_pricing_config:
              Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig,
            scalable_matrix_with_tiered_pricing_config:
              Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig,
            cumulative_grouped_bulk_config:
              Orb::PriceCreateParams::CumulativeGroupedBulkConfig,
            minimum_config: Orb::PriceCreateParams::MinimumConfig,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The cadence to bill for this price on.
      module Cadence
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PriceCreateParams::Cadence) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL = T.let(:annual, Orb::PriceCreateParams::Cadence::TaggedSymbol)
        SEMI_ANNUAL =
          T.let(:semi_annual, Orb::PriceCreateParams::Cadence::TaggedSymbol)
        MONTHLY = T.let(:monthly, Orb::PriceCreateParams::Cadence::TaggedSymbol)
        QUARTERLY =
          T.let(:quarterly, Orb::PriceCreateParams::Cadence::TaggedSymbol)
        ONE_TIME =
          T.let(:one_time, Orb::PriceCreateParams::Cadence::TaggedSymbol)
        CUSTOM = T.let(:custom, Orb::PriceCreateParams::Cadence::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::PriceCreateParams::Cadence::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The pricing model type
      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PriceCreateParams::ModelType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM =
          T.let(:minimum, Orb::PriceCreateParams::ModelType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::PriceCreateParams::ModelType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ThresholdTotalAmountConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::ThresholdTotalAmountConfig,
              Orb::Internal::AnyHash
            )
          end

        # When the quantity consumed passes a provided threshold, the configured total
        # will be charged
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::ThresholdTotalAmountConfig::ConsumptionTable
            ]
          )
        end
        attr_accessor :consumption_table

        # If true, the unit price will be prorated to the billing period
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :prorate

        # Configuration for threshold_total_amount pricing
        sig do
          params(
            consumption_table:
              T::Array[
                Orb::PriceCreateParams::ThresholdTotalAmountConfig::ConsumptionTable::OrHash
              ],
            prorate: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          # When the quantity consumed passes a provided threshold, the configured total
          # will be charged
          consumption_table:,
          # If true, the unit price will be prorated to the billing period
          prorate: nil
        )
        end

        sig do
          override.returns(
            {
              consumption_table:
                T::Array[
                  Orb::PriceCreateParams::ThresholdTotalAmountConfig::ConsumptionTable
                ],
              prorate: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        class ConsumptionTable < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::ThresholdTotalAmountConfig::ConsumptionTable,
                Orb::Internal::AnyHash
              )
            end

          # Quantity threshold
          sig { returns(String) }
          attr_accessor :threshold

          # Total amount for this threshold
          sig { returns(String) }
          attr_accessor :total_amount

          # Configuration for a single threshold
          sig do
            params(threshold: String, total_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Quantity threshold
            threshold:,
            # Total amount for this threshold
            total_amount:
          )
          end

          sig { override.returns({ threshold: String, total_amount: String }) }
          def to_hash
          end
        end
      end

      class TieredPackageConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::TieredPackageConfig,
              Orb::Internal::AnyHash
            )
          end

        # Package size
        sig { returns(String) }
        attr_accessor :package_size

        # Apply tiered pricing after rounding up the quantity to the package size. Tiers
        # are defined using exclusive lower bounds.
        sig do
          returns(T::Array[Orb::PriceCreateParams::TieredPackageConfig::Tier])
        end
        attr_accessor :tiers

        # Configuration for tiered_package pricing
        sig do
          params(
            package_size: String,
            tiers:
              T::Array[
                Orb::PriceCreateParams::TieredPackageConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Package size
          package_size:,
          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds.
          tiers:
        )
        end

        sig do
          override.returns(
            {
              package_size: String,
              tiers: T::Array[Orb::PriceCreateParams::TieredPackageConfig::Tier]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::TieredPackageConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Price per package
          sig { returns(String) }
          attr_accessor :per_unit

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Configuration for a single tier with business logic
          sig do
            params(per_unit: String, tier_lower_bound: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Price per package
            per_unit:,
            # Tier lower bound
            tier_lower_bound:
          )
          end

          sig do
            override.returns({ per_unit: String, tier_lower_bound: String })
          end
          def to_hash
          end
        end
      end

      class TieredWithMinimumConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::TieredWithMinimumConfig,
              Orb::Internal::AnyHash
            )
          end

        # Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
        # defined using exclusive lower bounds.
        sig do
          returns(
            T::Array[Orb::PriceCreateParams::TieredWithMinimumConfig::Tier]
          )
        end
        attr_accessor :tiers

        # If true, tiers with an accrued amount of 0 will not be included in the rating.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hide_zero_amount_tiers

        sig { params(hide_zero_amount_tiers: T::Boolean).void }
        attr_writer :hide_zero_amount_tiers

        # If true, the unit price will be prorated to the billing period
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :prorate

        sig { params(prorate: T::Boolean).void }
        attr_writer :prorate

        # Configuration for tiered_with_minimum pricing
        sig do
          params(
            tiers:
              T::Array[
                Orb::PriceCreateParams::TieredWithMinimumConfig::Tier::OrHash
              ],
            hide_zero_amount_tiers: T::Boolean,
            prorate: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
          # defined using exclusive lower bounds.
          tiers:,
          # If true, tiers with an accrued amount of 0 will not be included in the rating.
          hide_zero_amount_tiers: nil,
          # If true, the unit price will be prorated to the billing period
          prorate: nil
        )
        end

        sig do
          override.returns(
            {
              tiers:
                T::Array[Orb::PriceCreateParams::TieredWithMinimumConfig::Tier],
              hide_zero_amount_tiers: T::Boolean,
              prorate: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::TieredWithMinimumConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Minimum amount
          sig { returns(String) }
          attr_accessor :minimum_amount

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a single tier
          sig do
            params(
              minimum_amount: String,
              tier_lower_bound: String,
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Minimum amount
            minimum_amount:,
            # Tier lower bound
            tier_lower_bound:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                minimum_amount: String,
                tier_lower_bound: String,
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedTieredConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::GroupedTieredConfig,
              Orb::Internal::AnyHash
            )
          end

        # The billable metric property used to group before tiering
        sig { returns(String) }
        attr_accessor :grouping_key

        # Apply tiered pricing to each segment generated after grouping with the provided
        # key
        sig do
          returns(T::Array[Orb::PriceCreateParams::GroupedTieredConfig::Tier])
        end
        attr_accessor :tiers

        # Configuration for grouped_tiered pricing
        sig do
          params(
            grouping_key: String,
            tiers:
              T::Array[
                Orb::PriceCreateParams::GroupedTieredConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The billable metric property used to group before tiering
          grouping_key:,
          # Apply tiered pricing to each segment generated after grouping with the provided
          # key
          tiers:
        )
        end

        sig do
          override.returns(
            {
              grouping_key: String,
              tiers: T::Array[Orb::PriceCreateParams::GroupedTieredConfig::Tier]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::GroupedTieredConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a single tier
          sig do
            params(tier_lower_bound: String, unit_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Tier lower bound
            tier_lower_bound:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns({ tier_lower_bound: String, unit_amount: String })
          end
          def to_hash
          end
        end
      end

      class TieredPackageWithMinimumConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::TieredPackageWithMinimumConfig,
              Orb::Internal::AnyHash
            )
          end

        # Package size
        sig { returns(Float) }
        attr_accessor :package_size

        # Apply tiered pricing after rounding up the quantity to the package size. Tiers
        # are defined using exclusive lower bounds.
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::TieredPackageWithMinimumConfig::Tier
            ]
          )
        end
        attr_accessor :tiers

        # Configuration for tiered_package_with_minimum pricing
        sig do
          params(
            package_size: Float,
            tiers:
              T::Array[
                Orb::PriceCreateParams::TieredPackageWithMinimumConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Package size
          package_size:,
          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds.
          tiers:
        )
        end

        sig do
          override.returns(
            {
              package_size: Float,
              tiers:
                T::Array[
                  Orb::PriceCreateParams::TieredPackageWithMinimumConfig::Tier
                ]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::TieredPackageWithMinimumConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Minimum amount
          sig { returns(String) }
          attr_accessor :minimum_amount

          # Price per package
          sig { returns(String) }
          attr_accessor :per_unit

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Configuration for a single tier
          sig do
            params(
              minimum_amount: String,
              per_unit: String,
              tier_lower_bound: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Minimum amount
            minimum_amount:,
            # Price per package
            per_unit:,
            # Tier lower bound
            tier_lower_bound:
          )
          end

          sig do
            override.returns(
              {
                minimum_amount: String,
                per_unit: String,
                tier_lower_bound: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class PackageWithAllocationConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::PackageWithAllocationConfig,
              Orb::Internal::AnyHash
            )
          end

        # Usage allocation
        sig { returns(String) }
        attr_accessor :allocation

        # Price per package
        sig { returns(String) }
        attr_accessor :package_amount

        # Package size
        sig { returns(String) }
        attr_accessor :package_size

        # Configuration for package_with_allocation pricing
        sig do
          params(
            allocation: String,
            package_amount: String,
            package_size: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Usage allocation
          allocation:,
          # Price per package
          package_amount:,
          # Package size
          package_size:
        )
        end

        sig do
          override.returns(
            { allocation: String, package_amount: String, package_size: String }
          )
        end
        def to_hash
        end
      end

      class UnitWithPercentConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::UnitWithPercentConfig,
              Orb::Internal::AnyHash
            )
          end

        # What percent, out of 100, of the calculated total to charge
        sig { returns(String) }
        attr_accessor :percent

        # Rate per unit of usage
        sig { returns(String) }
        attr_accessor :unit_amount

        # Configuration for unit_with_percent pricing
        sig do
          params(percent: String, unit_amount: String).returns(T.attached_class)
        end
        def self.new(
          # What percent, out of 100, of the calculated total to charge
          percent:,
          # Rate per unit of usage
          unit_amount:
        )
        end

        sig { override.returns({ percent: String, unit_amount: String }) }
        def to_hash
        end
      end

      class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::TieredWithProrationConfig,
              Orb::Internal::AnyHash
            )
          end

        # Tiers for rating based on total usage quantities into the specified tier with
        # proration
        sig do
          returns(
            T::Array[Orb::PriceCreateParams::TieredWithProrationConfig::Tier]
          )
        end
        attr_accessor :tiers

        # Configuration for tiered_with_proration pricing
        sig do
          params(
            tiers:
              T::Array[
                Orb::PriceCreateParams::TieredWithProrationConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Tiers for rating based on total usage quantities into the specified tier with
          # proration
          tiers:
        )
        end

        sig do
          override.returns(
            {
              tiers:
                T::Array[
                  Orb::PriceCreateParams::TieredWithProrationConfig::Tier
                ]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::TieredWithProrationConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Inclusive tier starting value
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Amount per unit
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a single tiered with proration tier
          sig do
            params(tier_lower_bound: String, unit_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Inclusive tier starting value
            tier_lower_bound:,
            # Amount per unit
            unit_amount:
          )
          end

          sig do
            override.returns({ tier_lower_bound: String, unit_amount: String })
          end
          def to_hash
          end
        end
      end

      class UnitWithProrationConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::UnitWithProrationConfig,
              Orb::Internal::AnyHash
            )
          end

        # Rate per unit of usage
        sig { returns(String) }
        attr_accessor :unit_amount

        # Configuration for unit_with_proration pricing
        sig { params(unit_amount: String).returns(T.attached_class) }
        def self.new(
          # Rate per unit of usage
          unit_amount:
        )
        end

        sig { override.returns({ unit_amount: String }) }
        def to_hash
        end
      end

      class GroupedAllocationConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::GroupedAllocationConfig,
              Orb::Internal::AnyHash
            )
          end

        # Usage allocation per group
        sig { returns(String) }
        attr_accessor :allocation

        # How to determine the groups that should each be allocated some quantity
        sig { returns(String) }
        attr_accessor :grouping_key

        # Unit rate for post-allocation
        sig { returns(String) }
        attr_accessor :overage_unit_rate

        # Configuration for grouped_allocation pricing
        sig do
          params(
            allocation: String,
            grouping_key: String,
            overage_unit_rate: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Usage allocation per group
          allocation:,
          # How to determine the groups that should each be allocated some quantity
          grouping_key:,
          # Unit rate for post-allocation
          overage_unit_rate:
        )
        end

        sig do
          override.returns(
            {
              allocation: String,
              grouping_key: String,
              overage_unit_rate: String
            }
          )
        end
        def to_hash
        end
      end

      class BulkWithProrationConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::BulkWithProrationConfig,
              Orb::Internal::AnyHash
            )
          end

        # Bulk tiers for rating based on total usage volume
        sig do
          returns(
            T::Array[Orb::PriceCreateParams::BulkWithProrationConfig::Tier]
          )
        end
        attr_accessor :tiers

        # Configuration for bulk_with_proration pricing
        sig do
          params(
            tiers:
              T::Array[
                Orb::PriceCreateParams::BulkWithProrationConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Bulk tiers for rating based on total usage volume
          tiers:
        )
        end

        sig do
          override.returns(
            {
              tiers:
                T::Array[Orb::PriceCreateParams::BulkWithProrationConfig::Tier]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::BulkWithProrationConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Cost per unit
          sig { returns(String) }
          attr_accessor :unit_amount

          # The lower bound for this tier
          sig { returns(T.nilable(String)) }
          attr_accessor :tier_lower_bound

          # Configuration for a single bulk pricing tier with proration
          sig do
            params(
              unit_amount: String,
              tier_lower_bound: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Cost per unit
            unit_amount:,
            # The lower bound for this tier
            tier_lower_bound: nil
          )
          end

          sig do
            override.returns(
              { unit_amount: String, tier_lower_bound: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedWithProratedMinimumConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::GroupedWithProratedMinimumConfig,
              Orb::Internal::AnyHash
            )
          end

        # How to determine the groups that should each have a minimum
        sig { returns(String) }
        attr_accessor :grouping_key

        # The minimum amount to charge per group
        sig { returns(String) }
        attr_accessor :minimum

        # The amount to charge per unit
        sig { returns(String) }
        attr_accessor :unit_rate

        # Configuration for grouped_with_prorated_minimum pricing
        sig do
          params(
            grouping_key: String,
            minimum: String,
            unit_rate: String
          ).returns(T.attached_class)
        end
        def self.new(
          # How to determine the groups that should each have a minimum
          grouping_key:,
          # The minimum amount to charge per group
          minimum:,
          # The amount to charge per unit
          unit_rate:
        )
        end

        sig do
          override.returns(
            { grouping_key: String, minimum: String, unit_rate: String }
          )
        end
        def to_hash
        end
      end

      class GroupedWithMeteredMinimumConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig,
              Orb::Internal::AnyHash
            )
          end

        # Used to partition the usage into groups. The minimum amount is applied to each
        # group.
        sig { returns(String) }
        attr_accessor :grouping_key

        # The minimum amount to charge per group per unit
        sig { returns(String) }
        attr_accessor :minimum_unit_amount

        # Used to determine the unit rate
        sig { returns(String) }
        attr_accessor :pricing_key

        # Scale the unit rates by the scaling factor.
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::ScalingFactor
            ]
          )
        end
        attr_accessor :scaling_factors

        # Used to determine the unit rate scaling factor
        sig { returns(String) }
        attr_accessor :scaling_key

        # Apply per unit pricing to each pricing value. The minimum amount is applied any
        # unmatched usage.
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::UnitAmount
            ]
          )
        end
        attr_accessor :unit_amounts

        # Configuration for grouped_with_metered_minimum pricing
        sig do
          params(
            grouping_key: String,
            minimum_unit_amount: String,
            pricing_key: String,
            scaling_factors:
              T::Array[
                Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::ScalingFactor::OrHash
              ],
            scaling_key: String,
            unit_amounts:
              T::Array[
                Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::UnitAmount::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Used to partition the usage into groups. The minimum amount is applied to each
          # group.
          grouping_key:,
          # The minimum amount to charge per group per unit
          minimum_unit_amount:,
          # Used to determine the unit rate
          pricing_key:,
          # Scale the unit rates by the scaling factor.
          scaling_factors:,
          # Used to determine the unit rate scaling factor
          scaling_key:,
          # Apply per unit pricing to each pricing value. The minimum amount is applied any
          # unmatched usage.
          unit_amounts:
        )
        end

        sig do
          override.returns(
            {
              grouping_key: String,
              minimum_unit_amount: String,
              pricing_key: String,
              scaling_factors:
                T::Array[
                  Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::ScalingFactor
                ],
              scaling_key: String,
              unit_amounts:
                T::Array[
                  Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::UnitAmount
                ]
            }
          )
        end
        def to_hash
        end

        class ScalingFactor < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::ScalingFactor,
                Orb::Internal::AnyHash
              )
            end

          # Scaling factor
          sig { returns(String) }
          attr_accessor :scaling_factor

          # Scaling value
          sig { returns(String) }
          attr_accessor :scaling_value

          # Configuration for a scaling factor
          sig do
            params(scaling_factor: String, scaling_value: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Scaling factor
            scaling_factor:,
            # Scaling value
            scaling_value:
          )
          end

          sig do
            override.returns({ scaling_factor: String, scaling_value: String })
          end
          def to_hash
          end
        end

        class UnitAmount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::GroupedWithMeteredMinimumConfig::UnitAmount,
                Orb::Internal::AnyHash
              )
            end

          # Pricing value
          sig { returns(String) }
          attr_accessor :pricing_value

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a unit amount
          sig do
            params(pricing_value: String, unit_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Pricing value
            pricing_value:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns({ pricing_value: String, unit_amount: String })
          end
          def to_hash
          end
        end
      end

      class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::GroupedWithMinMaxThresholdsConfig,
              Orb::Internal::AnyHash
            )
          end

        # The event property used to group before applying thresholds
        sig { returns(String) }
        attr_accessor :grouping_key

        # The maximum amount to charge each group
        sig { returns(String) }
        attr_accessor :maximum_charge

        # The minimum amount to charge each group, regardless of usage
        sig { returns(String) }
        attr_accessor :minimum_charge

        # The base price charged per group
        sig { returns(String) }
        attr_accessor :per_unit_rate

        # Configuration for grouped_with_min_max_thresholds pricing
        sig do
          params(
            grouping_key: String,
            maximum_charge: String,
            minimum_charge: String,
            per_unit_rate: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The event property used to group before applying thresholds
          grouping_key:,
          # The maximum amount to charge each group
          maximum_charge:,
          # The minimum amount to charge each group, regardless of usage
          minimum_charge:,
          # The base price charged per group
          per_unit_rate:
        )
        end

        sig do
          override.returns(
            {
              grouping_key: String,
              maximum_charge: String,
              minimum_charge: String,
              per_unit_rate: String
            }
          )
        end
        def to_hash
        end
      end

      class MatrixWithDisplayNameConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::MatrixWithDisplayNameConfig,
              Orb::Internal::AnyHash
            )
          end

        # Used to determine the unit rate
        sig { returns(String) }
        attr_accessor :dimension

        # Apply per unit pricing to each dimension value
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::MatrixWithDisplayNameConfig::UnitAmount
            ]
          )
        end
        attr_accessor :unit_amounts

        # Configuration for matrix_with_display_name pricing
        sig do
          params(
            dimension: String,
            unit_amounts:
              T::Array[
                Orb::PriceCreateParams::MatrixWithDisplayNameConfig::UnitAmount::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Used to determine the unit rate
          dimension:,
          # Apply per unit pricing to each dimension value
          unit_amounts:
        )
        end

        sig do
          override.returns(
            {
              dimension: String,
              unit_amounts:
                T::Array[
                  Orb::PriceCreateParams::MatrixWithDisplayNameConfig::UnitAmount
                ]
            }
          )
        end
        def to_hash
        end

        class UnitAmount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::MatrixWithDisplayNameConfig::UnitAmount,
                Orb::Internal::AnyHash
              )
            end

          # The dimension value
          sig { returns(String) }
          attr_accessor :dimension_value

          # Display name for this dimension value
          sig { returns(String) }
          attr_accessor :display_name

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a unit amount item
          sig do
            params(
              dimension_value: String,
              display_name: String,
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The dimension value
            dimension_value:,
            # Display name for this dimension value
            display_name:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                dimension_value: String,
                display_name: String,
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedTieredPackageConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::GroupedTieredPackageConfig,
              Orb::Internal::AnyHash
            )
          end

        # The event property used to group before tiering
        sig { returns(String) }
        attr_accessor :grouping_key

        # Package size
        sig { returns(String) }
        attr_accessor :package_size

        # Apply tiered pricing after rounding up the quantity to the package size. Tiers
        # are defined using exclusive lower bounds.
        sig do
          returns(
            T::Array[Orb::PriceCreateParams::GroupedTieredPackageConfig::Tier]
          )
        end
        attr_accessor :tiers

        # Configuration for grouped_tiered_package pricing
        sig do
          params(
            grouping_key: String,
            package_size: String,
            tiers:
              T::Array[
                Orb::PriceCreateParams::GroupedTieredPackageConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The event property used to group before tiering
          grouping_key:,
          # Package size
          package_size:,
          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds.
          tiers:
        )
        end

        sig do
          override.returns(
            {
              grouping_key: String,
              package_size: String,
              tiers:
                T::Array[
                  Orb::PriceCreateParams::GroupedTieredPackageConfig::Tier
                ]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::GroupedTieredPackageConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Price per package
          sig { returns(String) }
          attr_accessor :per_unit

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Configuration for a single tier
          sig do
            params(per_unit: String, tier_lower_bound: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Price per package
            per_unit:,
            # Tier lower bound
            tier_lower_bound:
          )
          end

          sig do
            override.returns({ per_unit: String, tier_lower_bound: String })
          end
          def to_hash
          end
        end
      end

      class MaxGroupTieredPackageConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::MaxGroupTieredPackageConfig,
              Orb::Internal::AnyHash
            )
          end

        # The event property used to group before tiering the group with the highest value
        sig { returns(String) }
        attr_accessor :grouping_key

        # Package size
        sig { returns(String) }
        attr_accessor :package_size

        # Apply tiered pricing to the largest group after grouping with the provided key.
        sig do
          returns(
            T::Array[Orb::PriceCreateParams::MaxGroupTieredPackageConfig::Tier]
          )
        end
        attr_accessor :tiers

        # Configuration for max_group_tiered_package pricing
        sig do
          params(
            grouping_key: String,
            package_size: String,
            tiers:
              T::Array[
                Orb::PriceCreateParams::MaxGroupTieredPackageConfig::Tier::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The event property used to group before tiering the group with the highest value
          grouping_key:,
          # Package size
          package_size:,
          # Apply tiered pricing to the largest group after grouping with the provided key.
          tiers:
        )
        end

        sig do
          override.returns(
            {
              grouping_key: String,
              package_size: String,
              tiers:
                T::Array[
                  Orb::PriceCreateParams::MaxGroupTieredPackageConfig::Tier
                ]
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::MaxGroupTieredPackageConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a single tier
          sig do
            params(tier_lower_bound: String, unit_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Tier lower bound
            tier_lower_bound:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns({ tier_lower_bound: String, unit_amount: String })
          end
          def to_hash
          end
        end
      end

      class ScalableMatrixWithUnitPricingConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig,
              Orb::Internal::AnyHash
            )
          end

        # Used to determine the unit rate
        sig { returns(String) }
        attr_accessor :first_dimension

        # Apply a scaling factor to each dimension
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor
            ]
          )
        end
        attr_accessor :matrix_scaling_factors

        # The final unit price to rate against the output of the matrix
        sig { returns(String) }
        attr_accessor :unit_price

        # If true, the unit price will be prorated to the billing period
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :prorate

        # Used to determine the unit rate (optional)
        sig { returns(T.nilable(String)) }
        attr_accessor :second_dimension

        # Configuration for scalable_matrix_with_unit_pricing pricing
        sig do
          params(
            first_dimension: String,
            matrix_scaling_factors:
              T::Array[
                Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor::OrHash
              ],
            unit_price: String,
            prorate: T.nilable(T::Boolean),
            second_dimension: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Used to determine the unit rate
          first_dimension:,
          # Apply a scaling factor to each dimension
          matrix_scaling_factors:,
          # The final unit price to rate against the output of the matrix
          unit_price:,
          # If true, the unit price will be prorated to the billing period
          prorate: nil,
          # Used to determine the unit rate (optional)
          second_dimension: nil
        )
        end

        sig do
          override.returns(
            {
              first_dimension: String,
              matrix_scaling_factors:
                T::Array[
                  Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor
                ],
              unit_price: String,
              prorate: T.nilable(T::Boolean),
              second_dimension: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class MatrixScalingFactor < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor,
                Orb::Internal::AnyHash
              )
            end

          # First dimension value
          sig { returns(String) }
          attr_accessor :first_dimension_value

          # Scaling factor
          sig { returns(String) }
          attr_accessor :scaling_factor

          # Second dimension value (optional)
          sig { returns(T.nilable(String)) }
          attr_accessor :second_dimension_value

          # Configuration for a single matrix scaling factor
          sig do
            params(
              first_dimension_value: String,
              scaling_factor: String,
              second_dimension_value: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # First dimension value
            first_dimension_value:,
            # Scaling factor
            scaling_factor:,
            # Second dimension value (optional)
            second_dimension_value: nil
          )
          end

          sig do
            override.returns(
              {
                first_dimension_value: String,
                scaling_factor: String,
                second_dimension_value: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      class ScalableMatrixWithTieredPricingConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig,
              Orb::Internal::AnyHash
            )
          end

        # Used for the scalable matrix first dimension
        sig { returns(String) }
        attr_accessor :first_dimension

        # Apply a scaling factor to each dimension
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor
            ]
          )
        end
        attr_accessor :matrix_scaling_factors

        # Tier pricing structure
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::Tier
            ]
          )
        end
        attr_accessor :tiers

        # Used for the scalable matrix second dimension (optional)
        sig { returns(T.nilable(String)) }
        attr_accessor :second_dimension

        # Configuration for scalable_matrix_with_tiered_pricing pricing
        sig do
          params(
            first_dimension: String,
            matrix_scaling_factors:
              T::Array[
                Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor::OrHash
              ],
            tiers:
              T::Array[
                Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::Tier::OrHash
              ],
            second_dimension: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Used for the scalable matrix first dimension
          first_dimension:,
          # Apply a scaling factor to each dimension
          matrix_scaling_factors:,
          # Tier pricing structure
          tiers:,
          # Used for the scalable matrix second dimension (optional)
          second_dimension: nil
        )
        end

        sig do
          override.returns(
            {
              first_dimension: String,
              matrix_scaling_factors:
                T::Array[
                  Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor
                ],
              tiers:
                T::Array[
                  Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::Tier
                ],
              second_dimension: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class MatrixScalingFactor < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor,
                Orb::Internal::AnyHash
              )
            end

          # First dimension value
          sig { returns(String) }
          attr_accessor :first_dimension_value

          # Scaling factor
          sig { returns(String) }
          attr_accessor :scaling_factor

          # Second dimension value (optional)
          sig { returns(T.nilable(String)) }
          attr_accessor :second_dimension_value

          # Configuration for a single matrix scaling factor
          sig do
            params(
              first_dimension_value: String,
              scaling_factor: String,
              second_dimension_value: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # First dimension value
            first_dimension_value:,
            # Scaling factor
            scaling_factor:,
            # Second dimension value (optional)
            second_dimension_value: nil
          )
          end

          sig do
            override.returns(
              {
                first_dimension_value: String,
                scaling_factor: String,
                second_dimension_value: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::ScalableMatrixWithTieredPricingConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Per unit amount
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a single tier entry with business logic
          sig do
            params(tier_lower_bound: String, unit_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Tier lower bound
            tier_lower_bound:,
            # Per unit amount
            unit_amount:
          )
          end

          sig do
            override.returns({ tier_lower_bound: String, unit_amount: String })
          end
          def to_hash
          end
        end
      end

      class CumulativeGroupedBulkConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::CumulativeGroupedBulkConfig,
              Orb::Internal::AnyHash
            )
          end

        # Each tier lower bound must have the same group of values.
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::CumulativeGroupedBulkConfig::DimensionValue
            ]
          )
        end
        attr_accessor :dimension_values

        # Grouping key name
        sig { returns(String) }
        attr_accessor :group

        # Configuration for cumulative_grouped_bulk pricing
        sig do
          params(
            dimension_values:
              T::Array[
                Orb::PriceCreateParams::CumulativeGroupedBulkConfig::DimensionValue::OrHash
              ],
            group: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Each tier lower bound must have the same group of values.
          dimension_values:,
          # Grouping key name
          group:
        )
        end

        sig do
          override.returns(
            {
              dimension_values:
                T::Array[
                  Orb::PriceCreateParams::CumulativeGroupedBulkConfig::DimensionValue
                ],
              group: String
            }
          )
        end
        def to_hash
        end

        class DimensionValue < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::CumulativeGroupedBulkConfig::DimensionValue,
                Orb::Internal::AnyHash
              )
            end

          # Grouping key value
          sig { returns(String) }
          attr_accessor :grouping_key

          # Tier lower bound
          sig { returns(String) }
          attr_accessor :tier_lower_bound

          # Unit amount for this combination
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for a dimension value entry
          sig do
            params(
              grouping_key: String,
              tier_lower_bound: String,
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Grouping key value
            grouping_key:,
            # Tier lower bound
            tier_lower_bound:,
            # Unit amount for this combination
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                grouping_key: String,
                tier_lower_bound: String,
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class MinimumConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::MinimumConfig, Orb::Internal::AnyHash)
          end

        # The minimum amount to apply
        sig { returns(String) }
        attr_accessor :minimum_amount

        # If true, subtotals from this price are prorated based on the service period
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :prorated

        sig { params(prorated: T::Boolean).void }
        attr_writer :prorated

        # Configuration for minimum pricing
        sig do
          params(minimum_amount: String, prorated: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(
          # The minimum amount to apply
          minimum_amount:,
          # If true, subtotals from this price are prorated based on the service period
          prorated: nil
        )
        end

        sig do
          override.returns({ minimum_amount: String, prorated: T::Boolean })
        end
        def to_hash
        end
      end
    end
  end
end
