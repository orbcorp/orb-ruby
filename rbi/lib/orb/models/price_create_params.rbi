# typed: strong

module Orb
  module Models
    class PriceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # The cadence to bill for this price on.
      sig { returns(Symbol) }
      def cadence
      end

      sig { params(_: Symbol).returns(Symbol) }
      def cadence=(_)
      end

      # An ISO 4217 currency string for which this price is billed in.
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      # The id of the item the price will be associated with.
      sig { returns(String) }
      def item_id
      end

      sig { params(_: String).returns(String) }
      def item_id=(_)
      end

      sig { returns(Symbol) }
      def model_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def model_type=(_)
      end

      # The name of the price.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::UnitConfig) }
      def unit_config
      end

      sig { params(_: Orb::Models::PriceCreateParams::UnitConfig).returns(Orb::Models::PriceCreateParams::UnitConfig) }
      def unit_config=(_)
      end

      # The id of the billable metric for the price. Only needed if the price is
      #   usage-based.
      sig { returns(T.nilable(String)) }
      def billable_metric_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def billable_metric_id=(_)
      end

      # If the Price represents a fixed cost, the price will be billed in-advance if
      #   this is true, and in-arrears if this is false.
      sig { returns(T.nilable(T::Boolean)) }
      def billed_in_advance
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def billed_in_advance=(_)
      end

      # For custom cadence: specifies the duration of the billing period in days or
      #   months.
      sig { returns(T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration)) }
      def billing_cycle_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration))
          .returns(T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration))
      end
      def billing_cycle_configuration=(_)
      end

      # The per unit conversion rate of the price currency to the invoicing currency.
      sig { returns(T.nilable(Float)) }
      def conversion_rate
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def conversion_rate=(_)
      end

      # An alias for the price.
      sig { returns(T.nilable(String)) }
      def external_price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_price_id=(_)
      end

      # If the Price represents a fixed cost, this represents the quantity of units
      #   applied.
      sig { returns(T.nilable(Float)) }
      def fixed_price_quantity
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def fixed_price_quantity=(_)
      end

      # The property used to group this price on an invoice
      sig { returns(T.nilable(String)) }
      def invoice_grouping_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoice_grouping_key=(_)
      end

      # Within each billing cycle, specifies the cadence at which invoices are produced.
      #   If unspecified, a single invoice is produced per billing cycle.
      sig { returns(T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration)) }
      def invoicing_cycle_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration))
          .returns(T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration))
      end
      def invoicing_cycle_configuration=(_)
      end

      # User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::PackageConfig) }
      def package_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::PackageConfig)
          .returns(Orb::Models::PriceCreateParams::PackageConfig)
      end
      def package_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::MatrixConfig) }
      def matrix_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::MatrixConfig)
          .returns(Orb::Models::PriceCreateParams::MatrixConfig)
      end
      def matrix_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig) }
      def matrix_with_allocation_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::MatrixWithAllocationConfig)
          .returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig)
      end
      def matrix_with_allocation_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::TieredConfig) }
      def tiered_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::TieredConfig)
          .returns(Orb::Models::PriceCreateParams::TieredConfig)
      end
      def tiered_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::TieredBpsConfig) }
      def tiered_bps_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::TieredBpsConfig)
          .returns(Orb::Models::PriceCreateParams::TieredBpsConfig)
      end
      def tiered_bps_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::BpsConfig) }
      def bps_config
      end

      sig { params(_: Orb::Models::PriceCreateParams::BpsConfig).returns(Orb::Models::PriceCreateParams::BpsConfig) }
      def bps_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::BulkBpsConfig) }
      def bulk_bps_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::BulkBpsConfig)
          .returns(Orb::Models::PriceCreateParams::BulkBpsConfig)
      end
      def bulk_bps_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::BulkConfig) }
      def bulk_config
      end

      sig { params(_: Orb::Models::PriceCreateParams::BulkConfig).returns(Orb::Models::PriceCreateParams::BulkConfig) }
      def bulk_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def threshold_total_amount_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def threshold_total_amount_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def tiered_package_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def tiered_package_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def grouped_tiered_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def grouped_tiered_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def max_group_tiered_package_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def max_group_tiered_package_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def tiered_with_minimum_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def tiered_with_minimum_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def package_with_allocation_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def package_with_allocation_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def tiered_package_with_minimum_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def tiered_package_with_minimum_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def unit_with_percent_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def unit_with_percent_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def tiered_with_proration_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def tiered_with_proration_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def unit_with_proration_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def unit_with_proration_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def grouped_allocation_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def grouped_allocation_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def grouped_with_prorated_minimum_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def grouped_with_prorated_minimum_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def grouped_with_metered_minimum_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def grouped_with_metered_minimum_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def matrix_with_display_name_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def matrix_with_display_name_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def bulk_with_proration_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def bulk_with_proration_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def grouped_tiered_package_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def grouped_tiered_package_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def scalable_matrix_with_unit_pricing_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def scalable_matrix_with_unit_pricing_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def scalable_matrix_with_tiered_pricing_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def scalable_matrix_with_tiered_pricing_config=(_)
      end

      sig { returns(T::Hash[Symbol, T.anything]) }
      def cumulative_grouped_bulk_config
      end

      sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
      def cumulative_grouped_bulk_config=(_)
      end

      sig do
        params(
          cadence: Symbol,
          currency: String,
          item_id: String,
          model_type: Symbol,
          name: String,
          unit_config: Orb::Models::PriceCreateParams::UnitConfig,
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
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration),
          conversion_rate: T.nilable(Float),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

      sig do
        override
          .returns(
            {
              cadence: Symbol,
              currency: String,
              item_id: String,
              model_type: Symbol,
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
      def to_hash
      end

      # The cadence to bill for this price on.
      class Cadence < Orb::Enum
        abstract!

        ANNUAL = :annual
        SEMI_ANNUAL = :semi_annual
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        ONE_TIME = :one_time
        CUSTOM = :custom

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ModelType < Orb::Enum
        abstract!

        CUMULATIVE_GROUPED_BULK = :cumulative_grouped_bulk

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class UnitConfig < Orb::BaseModel
        # Rate per unit of usage
        sig { returns(String) }
        def unit_amount
        end

        sig { params(_: String).returns(String) }
        def unit_amount=(_)
        end

        sig { params(unit_amount: String).returns(T.attached_class) }
        def self.new(unit_amount:)
        end

        sig { override.returns({unit_amount: String}) }
        def to_hash
        end
      end

      class BillingCycleConfiguration < Orb::BaseModel
        # The duration of the billing period.
        sig { returns(Integer) }
        def duration
        end

        sig { params(_: Integer).returns(Integer) }
        def duration=(_)
        end

        # The unit of billing period duration.
        sig { returns(Symbol) }
        def duration_unit
        end

        sig { params(_: Symbol).returns(Symbol) }
        def duration_unit=(_)
        end

        # For custom cadence: specifies the duration of the billing period in days or
        #   months.
        sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
        def self.new(duration:, duration_unit:)
        end

        sig { override.returns({duration: Integer, duration_unit: Symbol}) }
        def to_hash
        end

        # The unit of billing period duration.
        class DurationUnit < Orb::Enum
          abstract!

          DAY = :day
          MONTH = :month

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class InvoicingCycleConfiguration < Orb::BaseModel
        # The duration of the billing period.
        sig { returns(Integer) }
        def duration
        end

        sig { params(_: Integer).returns(Integer) }
        def duration=(_)
        end

        # The unit of billing period duration.
        sig { returns(Symbol) }
        def duration_unit
        end

        sig { params(_: Symbol).returns(Symbol) }
        def duration_unit=(_)
        end

        # Within each billing cycle, specifies the cadence at which invoices are produced.
        #   If unspecified, a single invoice is produced per billing cycle.
        sig { params(duration: Integer, duration_unit: Symbol).returns(T.attached_class) }
        def self.new(duration:, duration_unit:)
        end

        sig { override.returns({duration: Integer, duration_unit: Symbol}) }
        def to_hash
        end

        # The unit of billing period duration.
        class DurationUnit < Orb::Enum
          abstract!

          DAY = :day
          MONTH = :month

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class PackageConfig < Orb::BaseModel
        # A currency amount to rate usage by
        sig { returns(String) }
        def package_amount
        end

        sig { params(_: String).returns(String) }
        def package_amount=(_)
        end

        # An integer amount to represent package size. For example, 1000 here would divide
        #   usage by 1000 before multiplying by package_amount in rating
        sig { returns(Integer) }
        def package_size
        end

        sig { params(_: Integer).returns(Integer) }
        def package_size=(_)
        end

        sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
        def self.new(package_amount:, package_size:)
        end

        sig { override.returns({package_amount: String, package_size: Integer}) }
        def to_hash
        end
      end

      class MatrixConfig < Orb::BaseModel
        # Default per unit rate for any usage not bucketed into a specified matrix_value
        sig { returns(String) }
        def default_unit_amount
        end

        sig { params(_: String).returns(String) }
        def default_unit_amount=(_)
        end

        # One or two event property values to evaluate matrix groups by
        sig { returns(T::Array[T.nilable(String)]) }
        def dimensions
        end

        sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
        def dimensions=(_)
        end

        # Matrix values for specified matrix grouping keys
        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]) }
        def matrix_values
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue])
            .returns(T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue])
        end
        def matrix_values=(_)
        end

        sig do
          params(
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]
          )
            .returns(T.attached_class)
        end
        def self.new(default_unit_amount:, dimensions:, matrix_values:)
        end

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
        def to_hash
        end

        class MatrixValue < Orb::BaseModel
          # One or two matrix keys to filter usage to this Matrix value by. For example,
          #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #   instance tier.
          sig { returns(T::Array[T.nilable(String)]) }
          def dimension_values
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def dimension_values=(_)
          end

          # Unit price for the specified dimension_values
          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          sig do
            params(
              dimension_values: T::Array[T.nilable(String)],
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, unit_amount:)
          end

          sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
          def to_hash
          end
        end
      end

      class MatrixWithAllocationConfig < Orb::BaseModel
        # Allocation to be used to calculate the price
        sig { returns(Float) }
        def allocation
        end

        sig { params(_: Float).returns(Float) }
        def allocation=(_)
        end

        # Default per unit rate for any usage not bucketed into a specified matrix_value
        sig { returns(String) }
        def default_unit_amount
        end

        sig { params(_: String).returns(String) }
        def default_unit_amount=(_)
        end

        # One or two event property values to evaluate matrix groups by
        sig { returns(T::Array[T.nilable(String)]) }
        def dimensions
        end

        sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
        def dimensions=(_)
        end

        # Matrix values for specified matrix grouping keys
        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]) }
        def matrix_values
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue])
            .returns(T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue])
        end
        def matrix_values=(_)
        end

        sig do
          params(
            allocation: Float,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]
          )
            .returns(T.attached_class)
        end
        def self.new(allocation:, default_unit_amount:, dimensions:, matrix_values:)
        end

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
        def to_hash
        end

        class MatrixValue < Orb::BaseModel
          # One or two matrix keys to filter usage to this Matrix value by. For example,
          #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
          #   instance tier.
          sig { returns(T::Array[T.nilable(String)]) }
          def dimension_values
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def dimension_values=(_)
          end

          # Unit price for the specified dimension_values
          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          sig do
            params(
              dimension_values: T::Array[T.nilable(String)],
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, unit_amount:)
          end

          sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
          def to_hash
          end
        end
      end

      class TieredConfig < Orb::BaseModel
        # Tiers for rating based on total usage quantities into the specified tier
        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier])
            .returns(T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]).returns(T.attached_class) }
        def self.new(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          # Inclusive tier starting value
          sig { returns(Float) }
          def first_unit
          end

          sig { params(_: Float).returns(Float) }
          def first_unit=(_)
          end

          # Amount per unit
          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          # Exclusive tier ending value. If null, this is treated as the last tier
          sig { returns(T.nilable(Float)) }
          def last_unit
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def last_unit=(_)
          end

          sig do
            params(
              first_unit: Float,
              unit_amount: String,
              last_unit: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(first_unit:, unit_amount:, last_unit: nil)
          end

          sig { override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)}) }
          def to_hash
          end
        end
      end

      class TieredBpsConfig < Orb::BaseModel
        # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
        #   tiers
        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier])
            .returns(T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]).returns(T.attached_class) }
        def self.new(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          # Per-event basis point rate
          sig { returns(Float) }
          def bps
          end

          sig { params(_: Float).returns(Float) }
          def bps=(_)
          end

          # Inclusive tier starting value
          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          # Exclusive tier ending value
          sig { returns(T.nilable(String)) }
          def maximum_amount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def maximum_amount=(_)
          end

          # Per unit maximum to charge
          sig { returns(T.nilable(String)) }
          def per_unit_maximum
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def per_unit_maximum=(_)
          end

          sig do
            params(
              bps: Float,
              minimum_amount: String,
              maximum_amount: T.nilable(String),
              per_unit_maximum: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
          end

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
          def to_hash
          end
        end
      end

      class BpsConfig < Orb::BaseModel
        # Basis point take rate per event
        sig { returns(Float) }
        def bps
        end

        sig { params(_: Float).returns(Float) }
        def bps=(_)
        end

        # Optional currency amount maximum to cap spend per event
        sig { returns(T.nilable(String)) }
        def per_unit_maximum
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def per_unit_maximum=(_)
        end

        sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
        def self.new(bps:, per_unit_maximum: nil)
        end

        sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
        def to_hash
        end
      end

      class BulkBpsConfig < Orb::BaseModel
        # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
        #   tier based on total volume
        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier])
            .returns(T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]).returns(T.attached_class) }
        def self.new(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          # Basis points to rate on
          sig { returns(Float) }
          def bps
          end

          sig { params(_: Float).returns(Float) }
          def bps=(_)
          end

          # Upper bound for tier
          sig { returns(T.nilable(String)) }
          def maximum_amount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def maximum_amount=(_)
          end

          # The maximum amount to charge for any one event
          sig { returns(T.nilable(String)) }
          def per_unit_maximum
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def per_unit_maximum=(_)
          end

          sig do
            params(bps: Float, maximum_amount: T.nilable(String), per_unit_maximum: T.nilable(String))
              .returns(T.attached_class)
          end
          def self.new(bps:, maximum_amount: nil, per_unit_maximum: nil)
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

      class BulkConfig < Orb::BaseModel
        # Bulk tiers for rating based on total usage volume
        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier])
            .returns(T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]).returns(T.attached_class) }
        def self.new(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          # Amount per unit
          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          # Upper bound for this tier
          sig { returns(T.nilable(Float)) }
          def maximum_units
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def maximum_units=(_)
          end

          sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
          def self.new(unit_amount:, maximum_units: nil)
          end

          sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
          def to_hash
          end
        end
      end
    end
  end
end
