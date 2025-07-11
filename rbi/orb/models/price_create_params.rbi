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

      sig { returns(Orb::PriceCreateParams::ModelType::OrSymbol) }
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

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

      sig { returns(Orb::PackageConfig) }
      attr_reader :package_config

      sig { params(package_config: Orb::PackageConfig::OrHash).void }
      attr_writer :package_config

      sig { returns(Orb::MatrixConfig) }
      attr_reader :matrix_config

      sig { params(matrix_config: Orb::MatrixConfig::OrHash).void }
      attr_writer :matrix_config

      sig { returns(Orb::MatrixWithAllocationConfig) }
      attr_reader :matrix_with_allocation_config

      sig do
        params(
          matrix_with_allocation_config: Orb::MatrixWithAllocationConfig::OrHash
        ).void
      end
      attr_writer :matrix_with_allocation_config

      sig { returns(Orb::TieredConfig) }
      attr_reader :tiered_config

      sig { params(tiered_config: Orb::TieredConfig::OrHash).void }
      attr_writer :tiered_config

      sig { returns(Orb::TieredBPSConfig) }
      attr_reader :tiered_bps_config

      sig { params(tiered_bps_config: Orb::TieredBPSConfig::OrHash).void }
      attr_writer :tiered_bps_config

      sig { returns(Orb::BPSConfig) }
      attr_reader :bps_config

      sig { params(bps_config: Orb::BPSConfig::OrHash).void }
      attr_writer :bps_config

      sig { returns(Orb::BulkBPSConfig) }
      attr_reader :bulk_bps_config

      sig { params(bulk_bps_config: Orb::BulkBPSConfig::OrHash).void }
      attr_writer :bulk_bps_config

      sig { returns(Orb::BulkConfig) }
      attr_reader :bulk_config

      sig { params(bulk_config: Orb::BulkConfig::OrHash).void }
      attr_writer :bulk_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :threshold_total_amount_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :tiered_package_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :grouped_tiered_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :max_group_tiered_package_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :tiered_with_minimum_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :package_with_allocation_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :tiered_package_with_minimum_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :unit_with_percent_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :tiered_with_proration_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :unit_with_proration_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :grouped_allocation_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :grouped_with_prorated_minimum_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :grouped_with_metered_minimum_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :matrix_with_display_name_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :bulk_with_proration_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :grouped_tiered_package_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :scalable_matrix_with_unit_pricing_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :scalable_matrix_with_tiered_pricing_config

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :cumulative_grouped_bulk_config

      sig do
        params(
          cadence: Orb::PriceCreateParams::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type: Orb::PriceCreateParams::ModelType::OrSymbol,
          name: String,
          unit_config: Orb::UnitConfig::OrHash,
          package_config: Orb::PackageConfig::OrHash,
          matrix_config: Orb::MatrixConfig::OrHash,
          matrix_with_allocation_config:
            Orb::MatrixWithAllocationConfig::OrHash,
          tiered_config: Orb::TieredConfig::OrHash,
          tiered_bps_config: Orb::TieredBPSConfig::OrHash,
          bps_config: Orb::BPSConfig::OrHash,
          bulk_bps_config: Orb::BulkBPSConfig::OrHash,
          bulk_config: Orb::BulkConfig::OrHash,
          threshold_total_amount_config: T::Hash[Symbol, T.anything],
          tiered_package_config: T::Hash[Symbol, T.anything],
          grouped_tiered_config: T::Hash[Symbol, T.anything],
          max_group_tiered_package_config: T::Hash[Symbol, T.anything],
          tiered_with_minimum_config: T::Hash[Symbol, T.anything],
          package_with_allocation_config: T::Hash[Symbol, T.anything],
          tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
          unit_with_percent_config: T::Hash[Symbol, T.anything],
          tiered_with_proration_config: T::Hash[Symbol, T.anything],
          unit_with_proration_config: T::Hash[Symbol, T.anything],
          grouped_allocation_config: T::Hash[Symbol, T.anything],
          grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
          grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
          matrix_with_display_name_config: T::Hash[Symbol, T.anything],
          bulk_with_proration_config: T::Hash[Symbol, T.anything],
          grouped_tiered_package_config: T::Hash[Symbol, T.anything],
          scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
          scalable_matrix_with_tiered_pricing_config:
            T::Hash[Symbol, T.anything],
          cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
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
        model_type:,
        # The name of the price.
        name:,
        unit_config:,
        package_config:,
        matrix_config:,
        matrix_with_allocation_config:,
        tiered_config:,
        tiered_bps_config:,
        bps_config:,
        bulk_bps_config:,
        bulk_config:,
        threshold_total_amount_config:,
        tiered_package_config:,
        grouped_tiered_config:,
        max_group_tiered_package_config:,
        tiered_with_minimum_config:,
        package_with_allocation_config:,
        tiered_package_with_minimum_config:,
        unit_with_percent_config:,
        tiered_with_proration_config:,
        unit_with_proration_config:,
        grouped_allocation_config:,
        grouped_with_prorated_minimum_config:,
        grouped_with_metered_minimum_config:,
        matrix_with_display_name_config:,
        bulk_with_proration_config:,
        grouped_tiered_package_config:,
        scalable_matrix_with_unit_pricing_config:,
        scalable_matrix_with_tiered_pricing_config:,
        cumulative_grouped_bulk_config:,
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
            package_config: Orb::PackageConfig,
            matrix_config: Orb::MatrixConfig,
            matrix_with_allocation_config: Orb::MatrixWithAllocationConfig,
            tiered_config: Orb::TieredConfig,
            tiered_bps_config: Orb::TieredBPSConfig,
            bps_config: Orb::BPSConfig,
            bulk_bps_config: Orb::BulkBPSConfig,
            bulk_config: Orb::BulkConfig,
            threshold_total_amount_config: T::Hash[Symbol, T.anything],
            tiered_package_config: T::Hash[Symbol, T.anything],
            grouped_tiered_config: T::Hash[Symbol, T.anything],
            max_group_tiered_package_config: T::Hash[Symbol, T.anything],
            tiered_with_minimum_config: T::Hash[Symbol, T.anything],
            package_with_allocation_config: T::Hash[Symbol, T.anything],
            tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
            unit_with_percent_config: T::Hash[Symbol, T.anything],
            tiered_with_proration_config: T::Hash[Symbol, T.anything],
            unit_with_proration_config: T::Hash[Symbol, T.anything],
            grouped_allocation_config: T::Hash[Symbol, T.anything],
            grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
            grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
            matrix_with_display_name_config: T::Hash[Symbol, T.anything],
            bulk_with_proration_config: T::Hash[Symbol, T.anything],
            grouped_tiered_package_config: T::Hash[Symbol, T.anything],
            scalable_matrix_with_unit_pricing_config:
              T::Hash[Symbol, T.anything],
            scalable_matrix_with_tiered_pricing_config:
              T::Hash[Symbol, T.anything],
            cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
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

      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PriceCreateParams::ModelType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUMULATIVE_GROUPED_BULK =
          T.let(
            :cumulative_grouped_bulk,
            Orb::PriceCreateParams::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PriceCreateParams::ModelType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The configuration for the rate of the price currency to the invoicing currency.
      module ConversionRateConfig
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::UnitConversionRateConfig,
              Orb::TieredConversionRateConfig
            )
          end

        sig do
          override.returns(
            T::Array[Orb::PriceCreateParams::ConversionRateConfig::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
