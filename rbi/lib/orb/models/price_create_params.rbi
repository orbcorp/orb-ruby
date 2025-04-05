# typed: strong

module Orb
  module Models
    class PriceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # The cadence to bill for this price on.
      sig { returns(Orb::Models::PriceCreateParams::Cadence::OrSymbol) }
      attr_accessor :cadence

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      attr_accessor :currency

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      sig { returns(Orb::Models::PriceCreateParams::ModelType::OrSymbol) }
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(Orb::Models::PriceCreateParams::UnitConfig) }
      attr_reader :unit_config

      sig { params(unit_config: T.any(Orb::Models::PriceCreateParams::UnitConfig, Orb::Internal::AnyHash)).void }
      attr_writer :unit_config

      # The id of the billable metric for the price. Only needed if the price is
      #   usage-based.
      sig { returns(T.nilable(String)) }
      attr_accessor :billable_metric_id

      # If the Price represents a fixed cost, the price will be billed in-advance if
      #   this is true, and in-arrears if this is false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :billed_in_advance

      # For custom cadence: specifies the duration of the billing period in days or
      #   months.
      sig { returns(T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration)) }
      attr_reader :billing_cycle_configuration

      sig do
        params(
          billing_cycle_configuration: T.nilable(T.any(Orb::Models::PriceCreateParams::BillingCycleConfiguration, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :billing_cycle_configuration

      # The per unit conversion rate of the price currency to the invoicing currency.
      sig { returns(T.nilable(Float)) }
      attr_accessor :conversion_rate

      # An alias for the price.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_price_id

      # If the Price represents a fixed cost, this represents the quantity of units
      #   applied.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_price_quantity

      # The property used to group this price on an invoice
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_grouping_key

      # Within each billing cycle, specifies the cadence at which invoices are produced.
      #   If unspecified, a single invoice is produced per billing cycle.
      sig { returns(T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration)) }
      attr_reader :invoicing_cycle_configuration

      sig do
        params(
          invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :invoicing_cycle_configuration

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(Orb::Models::PriceCreateParams::PackageConfig) }
      attr_reader :package_config

      sig { params(package_config: T.any(Orb::Models::PriceCreateParams::PackageConfig, Orb::Internal::AnyHash)).void }
      attr_writer :package_config

      sig { returns(Orb::Models::PriceCreateParams::MatrixConfig) }
      attr_reader :matrix_config

      sig { params(matrix_config: T.any(Orb::Models::PriceCreateParams::MatrixConfig, Orb::Internal::AnyHash)).void }
      attr_writer :matrix_config

      sig { returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig) }
      attr_reader :matrix_with_allocation_config

      sig do
        params(
          matrix_with_allocation_config: T.any(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig, Orb::Internal::AnyHash)
        )
          .void
      end
      attr_writer :matrix_with_allocation_config

      sig { returns(Orb::Models::PriceCreateParams::TieredConfig) }
      attr_reader :tiered_config

      sig { params(tiered_config: T.any(Orb::Models::PriceCreateParams::TieredConfig, Orb::Internal::AnyHash)).void }
      attr_writer :tiered_config

      sig { returns(Orb::Models::PriceCreateParams::TieredBpsConfig) }
      attr_reader :tiered_bps_config

      sig do
        params(tiered_bps_config: T.any(Orb::Models::PriceCreateParams::TieredBpsConfig, Orb::Internal::AnyHash))
          .void
      end
      attr_writer :tiered_bps_config

      sig { returns(Orb::Models::PriceCreateParams::BpsConfig) }
      attr_reader :bps_config

      sig { params(bps_config: T.any(Orb::Models::PriceCreateParams::BpsConfig, Orb::Internal::AnyHash)).void }
      attr_writer :bps_config

      sig { returns(Orb::Models::PriceCreateParams::BulkBpsConfig) }
      attr_reader :bulk_bps_config

      sig { params(bulk_bps_config: T.any(Orb::Models::PriceCreateParams::BulkBpsConfig, Orb::Internal::AnyHash)).void }
      attr_writer :bulk_bps_config

      sig { returns(Orb::Models::PriceCreateParams::BulkConfig) }
      attr_reader :bulk_config

      sig { params(bulk_config: T.any(Orb::Models::PriceCreateParams::BulkConfig, Orb::Internal::AnyHash)).void }
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
          cadence: Orb::Models::PriceCreateParams::Cadence::OrSymbol,
          currency: String,
          item_id: String,
          model_type: Orb::Models::PriceCreateParams::ModelType::OrSymbol,
          name: String,
          unit_config: T.any(Orb::Models::PriceCreateParams::UnitConfig, Orb::Internal::AnyHash),
          package_config: T.any(Orb::Models::PriceCreateParams::PackageConfig, Orb::Internal::AnyHash),
          matrix_config: T.any(Orb::Models::PriceCreateParams::MatrixConfig, Orb::Internal::AnyHash),
          matrix_with_allocation_config: T.any(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig, Orb::Internal::AnyHash),
          tiered_config: T.any(Orb::Models::PriceCreateParams::TieredConfig, Orb::Internal::AnyHash),
          tiered_bps_config: T.any(Orb::Models::PriceCreateParams::TieredBpsConfig, Orb::Internal::AnyHash),
          bps_config: T.any(Orb::Models::PriceCreateParams::BpsConfig, Orb::Internal::AnyHash),
          bulk_bps_config: T.any(Orb::Models::PriceCreateParams::BulkBpsConfig, Orb::Internal::AnyHash),
          bulk_config: T.any(Orb::Models::PriceCreateParams::BulkConfig, Orb::Internal::AnyHash),
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
          scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
          cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration: T.nilable(T.any(Orb::Models::PriceCreateParams::BillingCycleConfiguration, Orb::Internal::AnyHash)),
          conversion_rate: T.nilable(Float),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        cadence:,
        currency:,
        item_id:,
        model_type:,
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
        billable_metric_id: nil,
        billed_in_advance: nil,
        billing_cycle_configuration: nil,
        conversion_rate: nil,
        external_price_id: nil,
        fixed_price_quantity: nil,
        invoice_grouping_key: nil,
        invoicing_cycle_configuration: nil,
        metadata: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              cadence: Orb::Models::PriceCreateParams::Cadence::OrSymbol,
              currency: String,
              item_id: String,
              model_type: Orb::Models::PriceCreateParams::ModelType::OrSymbol,
              name: String,
              unit_config: Orb::Models::PriceCreateParams::UnitConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              package_config: Orb::Models::PriceCreateParams::PackageConfig,
              matrix_config: Orb::Models::PriceCreateParams::MatrixConfig,
              matrix_with_allocation_config: Orb::Models::PriceCreateParams::MatrixWithAllocationConfig,
              tiered_config: Orb::Models::PriceCreateParams::TieredConfig,
              tiered_bps_config: Orb::Models::PriceCreateParams::TieredBpsConfig,
              bps_config: Orb::Models::PriceCreateParams::BpsConfig,
              bulk_bps_config: Orb::Models::PriceCreateParams::BulkBpsConfig,
              bulk_config: Orb::Models::PriceCreateParams::BulkConfig,
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
              scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
              cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash; end

      # The cadence to bill for this price on.
      module Cadence
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::PriceCreateParams::Cadence) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::PriceCreateParams::Cadence::TaggedSymbol) }

        ANNUAL = T.let(:annual, Orb::Models::PriceCreateParams::Cadence::TaggedSymbol)
        SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::PriceCreateParams::Cadence::TaggedSymbol)
        MONTHLY = T.let(:monthly, Orb::Models::PriceCreateParams::Cadence::TaggedSymbol)
        QUARTERLY = T.let(:quarterly, Orb::Models::PriceCreateParams::Cadence::TaggedSymbol)
        ONE_TIME = T.let(:one_time, Orb::Models::PriceCreateParams::Cadence::TaggedSymbol)
        CUSTOM = T.let(:custom, Orb::Models::PriceCreateParams::Cadence::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::PriceCreateParams::Cadence::TaggedSymbol]) }
        def self.values; end
      end

      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::PriceCreateParams::ModelType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Orb::Models::PriceCreateParams::ModelType::TaggedSymbol) }

        CUMULATIVE_GROUPED_BULK =
          T.let(:cumulative_grouped_bulk, Orb::Models::PriceCreateParams::ModelType::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::PriceCreateParams::ModelType::TaggedSymbol]) }
        def self.values; end
      end

      class UnitConfig < Orb::Internal::Type::BaseModel
        # Rate per unit of usage
        sig { returns(String) }
        attr_accessor :unit_amount

        sig { params(unit_amount: String).returns(T.attached_class) }
        def self.new(unit_amount:); end

        sig { override.returns({unit_amount: String}) }
        def to_hash; end
      end

      class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
        # The duration of the billing period.
        sig { returns(Integer) }
        attr_accessor :duration

        # The unit of billing period duration.
        sig { returns(Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit::OrSymbol) }
        attr_accessor :duration_unit

        # For custom cadence: specifies the duration of the billing period in days or
        #   months.
        sig do
          params(
            duration: Integer,
            duration_unit: Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(duration:, duration_unit:); end

        sig do
          override
            .returns(
              {
                duration: Integer,
                duration_unit: Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit::OrSymbol
              }
            )
        end
        def to_hash; end

        # The unit of billing period duration.
        module DurationUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            end

          DAY = T.let(:day, Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
          MONTH =
            T.let(:month, Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Orb::Models::PriceCreateParams::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
        # The duration of the billing period.
        sig { returns(Integer) }
        attr_accessor :duration

        # The unit of billing period duration.
        sig { returns(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::OrSymbol) }
        attr_accessor :duration_unit

        # Within each billing cycle, specifies the cadence at which invoices are produced.
        #   If unspecified, a single invoice is produced per billing cycle.
        sig do
          params(
            duration: Integer,
            duration_unit: Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(duration:, duration_unit:); end

        sig do
          override
            .returns(
              {
                duration: Integer,
                duration_unit: Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::OrSymbol
              }
            )
        end
        def to_hash; end

        # The unit of billing period duration.
        module DurationUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            end

          DAY =
            T.let(:day, Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
          MONTH =
            T.let(:month, Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
          end
          def self.values; end
        end
      end

      class PackageConfig < Orb::Internal::Type::BaseModel
        # A currency amount to rate usage by
        sig { returns(String) }
        attr_accessor :package_amount

        # An integer amount to represent package size. For example, 1000 here would divide
        #   usage by 1000 before multiplying by package_amount in rating
        sig { returns(Integer) }
        attr_accessor :package_size

        sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
        def self.new(package_amount:, package_size:); end

        sig { override.returns({package_amount: String, package_size: Integer}) }
        def to_hash; end
      end

      class MatrixConfig < Orb::Internal::Type::BaseModel
        # Default per unit rate for any usage not bucketed into a specified matrix_value
        sig { returns(String) }
        attr_accessor :default_unit_amount

        # One or two event property values to evaluate matrix groups by
        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :dimensions

        # Matrix values for specified matrix grouping keys
        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]) }
        attr_accessor :matrix_values

        sig do
          params(
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[T.any(Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue, Orb::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(default_unit_amount:, dimensions:, matrix_values:); end

        sig do
          override
            .returns(
              {
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]
              }
            )
        end
        def to_hash; end

        class MatrixValue < Orb::Internal::Type::BaseModel
          # One or two matrix keys to filter usage to this Matrix value by. For example,
          #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #   instance tier.
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
          def self.new(dimension_values:, unit_amount:); end

          sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
          def to_hash; end
        end
      end

      class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
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
        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]) }
        attr_accessor :matrix_values

        sig do
          params(
            allocation: Float,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[T.any(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue, Orb::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(allocation:, default_unit_amount:, dimensions:, matrix_values:); end

        sig do
          override
            .returns(
              {
                allocation: Float,
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]
              }
            )
        end
        def to_hash; end

        class MatrixValue < Orb::Internal::Type::BaseModel
          # One or two matrix keys to filter usage to this Matrix value by. For example,
          #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #   instance tier.
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
          def self.new(dimension_values:, unit_amount:); end

          sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
          def to_hash; end
        end
      end

      class TieredConfig < Orb::Internal::Type::BaseModel
        # Tiers for rating based on total usage quantities into the specified tier
        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(tiers: T::Array[T.any(Orb::Models::PriceCreateParams::TieredConfig::Tier, Orb::Internal::AnyHash)])
            .returns(T.attached_class)
        end
        def self.new(tiers:); end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]}) }
        def to_hash; end

        class Tier < Orb::Internal::Type::BaseModel
          # Inclusive tier starting value
          sig { returns(Float) }
          attr_accessor :first_unit

          # Amount per unit
          sig { returns(String) }
          attr_accessor :unit_amount

          # Exclusive tier ending value. If null, this is treated as the last tier
          sig { returns(T.nilable(Float)) }
          attr_accessor :last_unit

          sig do
            params(
              first_unit: Float,
              unit_amount: String,
              last_unit: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(first_unit:, unit_amount:, last_unit: nil); end

          sig { override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)}) }
          def to_hash; end
        end
      end

      class TieredBpsConfig < Orb::Internal::Type::BaseModel
        # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
        #   tiers
        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(
            tiers: T::Array[T.any(Orb::Models::PriceCreateParams::TieredBpsConfig::Tier, Orb::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(tiers:); end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]}) }
        def to_hash; end

        class Tier < Orb::Internal::Type::BaseModel
          # Per-event basis point rate
          sig { returns(Float) }
          attr_accessor :bps

          # Inclusive tier starting value
          sig { returns(String) }
          attr_accessor :minimum_amount

          # Exclusive tier ending value
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
            )
              .returns(T.attached_class)
          end
          def self.new(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil); end

          sig do
            override
              .returns(
                {
                  bps: Float,
                  minimum_amount: String,
                  maximum_amount: T.nilable(String),
                  per_unit_maximum: T.nilable(String)
                }
              )
          end
          def to_hash; end
        end
      end

      class BpsConfig < Orb::Internal::Type::BaseModel
        # Basis point take rate per event
        sig { returns(Float) }
        attr_accessor :bps

        # Optional currency amount maximum to cap spend per event
        sig { returns(T.nilable(String)) }
        attr_accessor :per_unit_maximum

        sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
        def self.new(bps:, per_unit_maximum: nil); end

        sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
        def to_hash; end
      end

      class BulkBpsConfig < Orb::Internal::Type::BaseModel
        # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
        #   tier based on total volume
        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(
            tiers: T::Array[T.any(Orb::Models::PriceCreateParams::BulkBpsConfig::Tier, Orb::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(tiers:); end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]}) }
        def to_hash; end

        class Tier < Orb::Internal::Type::BaseModel
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
            params(bps: Float, maximum_amount: T.nilable(String), per_unit_maximum: T.nilable(String))
              .returns(T.attached_class)
          end
          def self.new(bps:, maximum_amount: nil, per_unit_maximum: nil); end

          sig do
            override.returns(
              {
                bps: Float,
                maximum_amount: T.nilable(String),
                per_unit_maximum: T.nilable(String)
              }
            )
          end
          def to_hash; end
        end
      end

      class BulkConfig < Orb::Internal::Type::BaseModel
        # Bulk tiers for rating based on total usage volume
        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]) }
        attr_accessor :tiers

        sig do
          params(tiers: T::Array[T.any(Orb::Models::PriceCreateParams::BulkConfig::Tier, Orb::Internal::AnyHash)])
            .returns(T.attached_class)
        end
        def self.new(tiers:); end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]}) }
        def to_hash; end

        class Tier < Orb::Internal::Type::BaseModel
          # Amount per unit
          sig { returns(String) }
          attr_accessor :unit_amount

          # Upper bound for this tier
          sig { returns(T.nilable(Float)) }
          attr_accessor :maximum_units

          sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
          def self.new(unit_amount:, maximum_units: nil); end

          sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
          def to_hash; end
        end
      end
    end
  end
end
