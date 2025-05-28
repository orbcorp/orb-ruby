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

      sig { returns(Orb::PriceCreateParams::UnitConfig) }
      attr_reader :unit_config

      sig do
        params(unit_config: Orb::PriceCreateParams::UnitConfig::OrHash).void
      end
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
      sig do
        returns(T.nilable(Orb::PriceCreateParams::BillingCycleConfiguration))
      end
      attr_reader :billing_cycle_configuration

      sig do
        params(
          billing_cycle_configuration:
            T.nilable(Orb::PriceCreateParams::BillingCycleConfiguration::OrHash)
        ).void
      end
      attr_writer :billing_cycle_configuration

      # The per unit conversion rate of the price currency to the invoicing currency.
      sig { returns(T.nilable(Float)) }
      attr_accessor :conversion_rate

      # For dimensional price: specifies a price group and dimension values
      sig do
        returns(
          T.nilable(Orb::PriceCreateParams::DimensionalPriceConfiguration)
        )
      end
      attr_reader :dimensional_price_configuration

      sig do
        params(
          dimensional_price_configuration:
            T.nilable(
              Orb::PriceCreateParams::DimensionalPriceConfiguration::OrHash
            )
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
      sig do
        returns(T.nilable(Orb::PriceCreateParams::InvoicingCycleConfiguration))
      end
      attr_reader :invoicing_cycle_configuration

      sig do
        params(
          invoicing_cycle_configuration:
            T.nilable(
              Orb::PriceCreateParams::InvoicingCycleConfiguration::OrHash
            )
        ).void
      end
      attr_writer :invoicing_cycle_configuration

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(Orb::PriceCreateParams::PackageConfig) }
      attr_reader :package_config

      sig do
        params(
          package_config: Orb::PriceCreateParams::PackageConfig::OrHash
        ).void
      end
      attr_writer :package_config

      sig { returns(Orb::PriceCreateParams::MatrixConfig) }
      attr_reader :matrix_config

      sig do
        params(matrix_config: Orb::PriceCreateParams::MatrixConfig::OrHash).void
      end
      attr_writer :matrix_config

      sig { returns(Orb::PriceCreateParams::MatrixWithAllocationConfig) }
      attr_reader :matrix_with_allocation_config

      sig do
        params(
          matrix_with_allocation_config:
            Orb::PriceCreateParams::MatrixWithAllocationConfig::OrHash
        ).void
      end
      attr_writer :matrix_with_allocation_config

      sig { returns(Orb::PriceCreateParams::TieredConfig) }
      attr_reader :tiered_config

      sig do
        params(tiered_config: Orb::PriceCreateParams::TieredConfig::OrHash).void
      end
      attr_writer :tiered_config

      sig { returns(Orb::PriceCreateParams::TieredBpsConfig) }
      attr_reader :tiered_bps_config

      sig do
        params(
          tiered_bps_config: Orb::PriceCreateParams::TieredBpsConfig::OrHash
        ).void
      end
      attr_writer :tiered_bps_config

      sig { returns(Orb::PriceCreateParams::BpsConfig) }
      attr_reader :bps_config

      sig { params(bps_config: Orb::PriceCreateParams::BpsConfig::OrHash).void }
      attr_writer :bps_config

      sig { returns(Orb::PriceCreateParams::BulkBpsConfig) }
      attr_reader :bulk_bps_config

      sig do
        params(
          bulk_bps_config: Orb::PriceCreateParams::BulkBpsConfig::OrHash
        ).void
      end
      attr_writer :bulk_bps_config

      sig { returns(Orb::PriceCreateParams::BulkConfig) }
      attr_reader :bulk_config

      sig do
        params(bulk_config: Orb::PriceCreateParams::BulkConfig::OrHash).void
      end
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
          unit_config: Orb::PriceCreateParams::UnitConfig::OrHash,
          package_config: Orb::PriceCreateParams::PackageConfig::OrHash,
          matrix_config: Orb::PriceCreateParams::MatrixConfig::OrHash,
          matrix_with_allocation_config:
            Orb::PriceCreateParams::MatrixWithAllocationConfig::OrHash,
          tiered_config: Orb::PriceCreateParams::TieredConfig::OrHash,
          tiered_bps_config: Orb::PriceCreateParams::TieredBpsConfig::OrHash,
          bps_config: Orb::PriceCreateParams::BpsConfig::OrHash,
          bulk_bps_config: Orb::PriceCreateParams::BulkBpsConfig::OrHash,
          bulk_config: Orb::PriceCreateParams::BulkConfig::OrHash,
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
            T.nilable(
              Orb::PriceCreateParams::BillingCycleConfiguration::OrHash
            ),
          conversion_rate: T.nilable(Float),
          dimensional_price_configuration:
            T.nilable(
              Orb::PriceCreateParams::DimensionalPriceConfiguration::OrHash
            ),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration:
            T.nilable(
              Orb::PriceCreateParams::InvoicingCycleConfiguration::OrHash
            ),
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
            unit_config: Orb::PriceCreateParams::UnitConfig,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration:
              T.nilable(Orb::PriceCreateParams::BillingCycleConfiguration),
            conversion_rate: T.nilable(Float),
            dimensional_price_configuration:
              T.nilable(Orb::PriceCreateParams::DimensionalPriceConfiguration),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration:
              T.nilable(Orb::PriceCreateParams::InvoicingCycleConfiguration),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            package_config: Orb::PriceCreateParams::PackageConfig,
            matrix_config: Orb::PriceCreateParams::MatrixConfig,
            matrix_with_allocation_config:
              Orb::PriceCreateParams::MatrixWithAllocationConfig,
            tiered_config: Orb::PriceCreateParams::TieredConfig,
            tiered_bps_config: Orb::PriceCreateParams::TieredBpsConfig,
            bps_config: Orb::PriceCreateParams::BpsConfig,
            bulk_bps_config: Orb::PriceCreateParams::BulkBpsConfig,
            bulk_config: Orb::PriceCreateParams::BulkConfig,
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

      class UnitConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::UnitConfig, Orb::Internal::AnyHash)
          end

        # Rate per unit of usage
        sig { returns(String) }
        attr_accessor :unit_amount

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

      class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::BillingCycleConfiguration,
              Orb::Internal::AnyHash
            )
          end

        # The duration of the billing period.
        sig { returns(Integer) }
        attr_accessor :duration

        # The unit of billing period duration.
        sig do
          returns(
            Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit::OrSymbol
          )
        end
        attr_accessor :duration_unit

        # For custom cadence: specifies the duration of the billing period in days or
        # months.
        sig do
          params(
            duration: Integer,
            duration_unit:
              Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The duration of the billing period.
          duration:,
          # The unit of billing period duration.
          duration_unit:
        )
        end

        sig do
          override.returns(
            {
              duration: Integer,
              duration_unit:
                Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The unit of billing period duration.
        module DurationUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :day,
              Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          MONTH =
            T.let(
              :month,
              Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PriceCreateParams::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::DimensionalPriceConfiguration,
              Orb::Internal::AnyHash
            )
          end

        # The list of dimension values matching (in order) the dimensions of the price
        # group
        sig { returns(T::Array[String]) }
        attr_accessor :dimension_values

        # The id of the dimensional price group to include this price in
        sig { returns(T.nilable(String)) }
        attr_accessor :dimensional_price_group_id

        # The external id of the dimensional price group to include this price in
        sig { returns(T.nilable(String)) }
        attr_accessor :external_dimensional_price_group_id

        # For dimensional price: specifies a price group and dimension values
        sig do
          params(
            dimension_values: T::Array[String],
            dimensional_price_group_id: T.nilable(String),
            external_dimensional_price_group_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The list of dimension values matching (in order) the dimensions of the price
          # group
          dimension_values:,
          # The id of the dimensional price group to include this price in
          dimensional_price_group_id: nil,
          # The external id of the dimensional price group to include this price in
          external_dimensional_price_group_id: nil
        )
        end

        sig do
          override.returns(
            {
              dimension_values: T::Array[String],
              dimensional_price_group_id: T.nilable(String),
              external_dimensional_price_group_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::InvoicingCycleConfiguration,
              Orb::Internal::AnyHash
            )
          end

        # The duration of the billing period.
        sig { returns(Integer) }
        attr_accessor :duration

        # The unit of billing period duration.
        sig do
          returns(
            Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::OrSymbol
          )
        end
        attr_accessor :duration_unit

        # Within each billing cycle, specifies the cadence at which invoices are produced.
        # If unspecified, a single invoice is produced per billing cycle.
        sig do
          params(
            duration: Integer,
            duration_unit:
              Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The duration of the billing period.
          duration:,
          # The unit of billing period duration.
          duration_unit:
        )
        end

        sig do
          override.returns(
            {
              duration: Integer,
              duration_unit:
                Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The unit of billing period duration.
        module DurationUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAY =
            T.let(
              :day,
              Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          MONTH =
            T.let(
              :month,
              Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PackageConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::PackageConfig, Orb::Internal::AnyHash)
          end

        # A currency amount to rate usage by
        sig { returns(String) }
        attr_accessor :package_amount

        # An integer amount to represent package size. For example, 1000 here would divide
        # usage by 1000 before multiplying by package_amount in rating
        sig { returns(Integer) }
        attr_accessor :package_size

        sig do
          params(package_amount: String, package_size: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # A currency amount to rate usage by
          package_amount:,
          # An integer amount to represent package size. For example, 1000 here would divide
          # usage by 1000 before multiplying by package_amount in rating
          package_size:
        )
        end

        sig do
          override.returns({ package_amount: String, package_size: Integer })
        end
        def to_hash
        end
      end

      class MatrixConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::MatrixConfig, Orb::Internal::AnyHash)
          end

        # Default per unit rate for any usage not bucketed into a specified matrix_value
        sig { returns(String) }
        attr_accessor :default_unit_amount

        # One or two event property values to evaluate matrix groups by
        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :dimensions

        # Matrix values for specified matrix grouping keys
        sig do
          returns(T::Array[Orb::PriceCreateParams::MatrixConfig::MatrixValue])
        end
        attr_accessor :matrix_values

        sig do
          params(
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values:
              T::Array[
                Orb::PriceCreateParams::MatrixConfig::MatrixValue::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Default per unit rate for any usage not bucketed into a specified matrix_value
          default_unit_amount:,
          # One or two event property values to evaluate matrix groups by
          dimensions:,
          # Matrix values for specified matrix grouping keys
          matrix_values:
        )
        end

        sig do
          override.returns(
            {
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values:
                T::Array[Orb::PriceCreateParams::MatrixConfig::MatrixValue]
            }
          )
        end
        def to_hash
        end

        class MatrixValue < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::MatrixConfig::MatrixValue,
                Orb::Internal::AnyHash
              )
            end

          # One or two matrix keys to filter usage to this Matrix value by. For example,
          # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          # instance tier.
          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimension_values

          # Unit price for the specified dimension_values
          sig { returns(String) }
          attr_accessor :unit_amount

          sig do
            params(
              dimension_values: T::Array[T.nilable(String)],
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # One or two matrix keys to filter usage to this Matrix value by. For example,
            # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            # instance tier.
            dimension_values:,
            # Unit price for the specified dimension_values
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                dimension_values: T::Array[T.nilable(String)],
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::MatrixWithAllocationConfig,
              Orb::Internal::AnyHash
            )
          end

        # Allocation to be used to calculate the price
        sig { returns(Float) }
        attr_accessor :allocation

        # Default per unit rate for any usage not bucketed into a specified matrix_value
        sig { returns(String) }
        attr_accessor :default_unit_amount

        # One or two event property values to evaluate matrix groups by
        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :dimensions

        # Matrix values for specified matrix grouping keys
        sig do
          returns(
            T::Array[
              Orb::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue
            ]
          )
        end
        attr_accessor :matrix_values

        sig do
          params(
            allocation: Float,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values:
              T::Array[
                Orb::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Allocation to be used to calculate the price
          allocation:,
          # Default per unit rate for any usage not bucketed into a specified matrix_value
          default_unit_amount:,
          # One or two event property values to evaluate matrix groups by
          dimensions:,
          # Matrix values for specified matrix grouping keys
          matrix_values:
        )
        end

        sig do
          override.returns(
            {
              allocation: Float,
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values:
                T::Array[
                  Orb::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue
                ]
            }
          )
        end
        def to_hash
        end

        class MatrixValue < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue,
                Orb::Internal::AnyHash
              )
            end

          # One or two matrix keys to filter usage to this Matrix value by. For example,
          # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          # instance tier.
          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimension_values

          # Unit price for the specified dimension_values
          sig { returns(String) }
          attr_accessor :unit_amount

          sig do
            params(
              dimension_values: T::Array[T.nilable(String)],
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # One or two matrix keys to filter usage to this Matrix value by. For example,
            # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            # instance tier.
            dimension_values:,
            # Unit price for the specified dimension_values
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                dimension_values: T::Array[T.nilable(String)],
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class TieredConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::TieredConfig, Orb::Internal::AnyHash)
          end

        # Tiers for rating based on total usage quantities into the specified tier
        sig { returns(T::Array[Orb::PriceCreateParams::TieredConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(
            tiers: T::Array[Orb::PriceCreateParams::TieredConfig::Tier::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Tiers for rating based on total usage quantities into the specified tier
          tiers:
        )
        end

        sig do
          override.returns(
            { tiers: T::Array[Orb::PriceCreateParams::TieredConfig::Tier] }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::TieredConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Exclusive tier starting value
          sig { returns(Float) }
          attr_accessor :first_unit

          # Amount per unit
          sig { returns(String) }
          attr_accessor :unit_amount

          # Inclusive tier ending value. If null, this is treated as the last tier
          sig { returns(T.nilable(Float)) }
          attr_accessor :last_unit

          sig do
            params(
              first_unit: Float,
              unit_amount: String,
              last_unit: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(
            # Exclusive tier starting value
            first_unit:,
            # Amount per unit
            unit_amount:,
            # Inclusive tier ending value. If null, this is treated as the last tier
            last_unit: nil
          )
          end

          sig do
            override.returns(
              {
                first_unit: Float,
                unit_amount: String,
                last_unit: T.nilable(Float)
              }
            )
          end
          def to_hash
          end
        end
      end

      class TieredBpsConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PriceCreateParams::TieredBpsConfig,
              Orb::Internal::AnyHash
            )
          end

        # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
        # tiers
        sig { returns(T::Array[Orb::PriceCreateParams::TieredBpsConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(
            tiers:
              T::Array[Orb::PriceCreateParams::TieredBpsConfig::Tier::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          # tiers
          tiers:
        )
        end

        sig do
          override.returns(
            { tiers: T::Array[Orb::PriceCreateParams::TieredBpsConfig::Tier] }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::TieredBpsConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Per-event basis point rate
          sig { returns(Float) }
          attr_accessor :bps

          # Exclusive tier starting value
          sig { returns(String) }
          attr_accessor :minimum_amount

          # Inclusive tier ending value
          sig { returns(T.nilable(String)) }
          attr_accessor :maximum_amount

          # Per unit maximum to charge
          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_maximum

          sig do
            params(
              bps: Float,
              minimum_amount: String,
              maximum_amount: T.nilable(String),
              per_unit_maximum: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Per-event basis point rate
            bps:,
            # Exclusive tier starting value
            minimum_amount:,
            # Inclusive tier ending value
            maximum_amount: nil,
            # Per unit maximum to charge
            per_unit_maximum: nil
          )
          end

          sig do
            override.returns(
              {
                bps: Float,
                minimum_amount: String,
                maximum_amount: T.nilable(String),
                per_unit_maximum: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      class BpsConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::BpsConfig, Orb::Internal::AnyHash)
          end

        # Basis point take rate per event
        sig { returns(Float) }
        attr_accessor :bps

        # Optional currency amount maximum to cap spend per event
        sig { returns(T.nilable(String)) }
        attr_accessor :per_unit_maximum

        sig do
          params(bps: Float, per_unit_maximum: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # Basis point take rate per event
          bps:,
          # Optional currency amount maximum to cap spend per event
          per_unit_maximum: nil
        )
        end

        sig do
          override.returns({ bps: Float, per_unit_maximum: T.nilable(String) })
        end
        def to_hash
        end
      end

      class BulkBpsConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::BulkBpsConfig, Orb::Internal::AnyHash)
          end

        # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
        # tier based on total volume
        sig { returns(T::Array[Orb::PriceCreateParams::BulkBpsConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(
            tiers: T::Array[Orb::PriceCreateParams::BulkBpsConfig::Tier::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          # tier based on total volume
          tiers:
        )
        end

        sig do
          override.returns(
            { tiers: T::Array[Orb::PriceCreateParams::BulkBpsConfig::Tier] }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::BulkBpsConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Basis points to rate on
          sig { returns(Float) }
          attr_accessor :bps

          # Upper bound for tier
          sig { returns(T.nilable(String)) }
          attr_accessor :maximum_amount

          # The maximum amount to charge for any one event
          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_maximum

          sig do
            params(
              bps: Float,
              maximum_amount: T.nilable(String),
              per_unit_maximum: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Basis points to rate on
            bps:,
            # Upper bound for tier
            maximum_amount: nil,
            # The maximum amount to charge for any one event
            per_unit_maximum: nil
          )
          end

          sig do
            override.returns(
              {
                bps: Float,
                maximum_amount: T.nilable(String),
                per_unit_maximum: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      class BulkConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PriceCreateParams::BulkConfig, Orb::Internal::AnyHash)
          end

        # Bulk tiers for rating based on total usage volume
        sig { returns(T::Array[Orb::PriceCreateParams::BulkConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(
            tiers: T::Array[Orb::PriceCreateParams::BulkConfig::Tier::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Bulk tiers for rating based on total usage volume
          tiers:
        )
        end

        sig do
          override.returns(
            { tiers: T::Array[Orb::PriceCreateParams::BulkConfig::Tier] }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::BulkConfig::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Amount per unit
          sig { returns(String) }
          attr_accessor :unit_amount

          # Upper bound for this tier
          sig { returns(T.nilable(Float)) }
          attr_accessor :maximum_units

          sig do
            params(
              unit_amount: String,
              maximum_units: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(
            # Amount per unit
            unit_amount:,
            # Upper bound for this tier
            maximum_units: nil
          )
          end

          sig do
            override.returns(
              { unit_amount: String, maximum_units: T.nilable(Float) }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
