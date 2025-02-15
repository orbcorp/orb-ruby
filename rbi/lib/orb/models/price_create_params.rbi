# typed: strong

module Orb
  module Models
    class PriceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(Symbol) }
      def cadence
      end

      sig { params(_: Symbol).returns(Symbol) }
      def cadence=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

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

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::UnitConfig) }
      def unit_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::UnitConfig).returns(Orb::Models::PriceCreateParams::UnitConfig)
      end
      def unit_config=(_)
      end

      sig { returns(T.nilable(String)) }
      def billable_metric_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def billable_metric_id=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def billed_in_advance
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def billed_in_advance=(_)
      end

      sig { returns(T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration)) }
      def billing_cycle_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration)).returns(T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration))
      end
      def billing_cycle_configuration=(_)
      end

      sig { returns(T.nilable(Float)) }
      def conversion_rate
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def conversion_rate=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_price_id=(_)
      end

      sig { returns(T.nilable(Float)) }
      def fixed_price_quantity
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def fixed_price_quantity=(_)
      end

      sig { returns(T.nilable(String)) }
      def invoice_grouping_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoice_grouping_key=(_)
      end

      sig { returns(T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration)) }
      def invoicing_cycle_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration)).returns(T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration))
      end
      def invoicing_cycle_configuration=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(
          _: T.nilable(
            T::Hash[Symbol,
                    T.nilable(String)]
          )
        ).returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::PackageConfig) }
      def package_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::PackageConfig).returns(Orb::Models::PriceCreateParams::PackageConfig)
      end
      def package_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::MatrixConfig) }
      def matrix_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::MatrixConfig).returns(Orb::Models::PriceCreateParams::MatrixConfig)
      end
      def matrix_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig) }
      def matrix_with_allocation_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::MatrixWithAllocationConfig).returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig)
      end
      def matrix_with_allocation_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::TieredConfig) }
      def tiered_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::TieredConfig).returns(Orb::Models::PriceCreateParams::TieredConfig)
      end
      def tiered_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::TieredBpsConfig) }
      def tiered_bps_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::TieredBpsConfig).returns(Orb::Models::PriceCreateParams::TieredBpsConfig)
      end
      def tiered_bps_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::BpsConfig) }
      def bps_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::BpsConfig).returns(Orb::Models::PriceCreateParams::BpsConfig)
      end
      def bps_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::BulkBpsConfig) }
      def bulk_bps_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::BulkBpsConfig).returns(Orb::Models::PriceCreateParams::BulkBpsConfig)
      end
      def bulk_bps_config=(_)
      end

      sig { returns(Orb::Models::PriceCreateParams::BulkConfig) }
      def bulk_config
      end

      sig do
        params(_: Orb::Models::PriceCreateParams::BulkConfig).returns(Orb::Models::PriceCreateParams::BulkConfig)
      end
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
        ).void
      end
      def initialize(
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
        override.returns(
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

      class Cadence < Orb::Enum
        abstract!

        ANNUAL = :annual
        SEMI_ANNUAL = :semi_annual
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        ONE_TIME = :one_time
        CUSTOM = :custom

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class ModelType < Orb::Enum
        abstract!

        CUMULATIVE_GROUPED_BULK = :cumulative_grouped_bulk

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class UnitConfig < Orb::BaseModel
        sig { returns(String) }
        def unit_amount
        end

        sig { params(_: String).returns(String) }
        def unit_amount=(_)
        end

        sig { params(unit_amount: String).void }
        def initialize(unit_amount:)
        end

        sig { override.returns({unit_amount: String}) }
        def to_hash
        end
      end

      class BillingCycleConfiguration < Orb::BaseModel
        sig { returns(Integer) }
        def duration
        end

        sig { params(_: Integer).returns(Integer) }
        def duration=(_)
        end

        sig { returns(Symbol) }
        def duration_unit
        end

        sig { params(_: Symbol).returns(Symbol) }
        def duration_unit=(_)
        end

        sig { params(duration: Integer, duration_unit: Symbol).void }
        def initialize(duration:, duration_unit:)
        end

        sig { override.returns({duration: Integer, duration_unit: Symbol}) }
        def to_hash
        end

        class DurationUnit < Orb::Enum
          abstract!

          DAY = :day
          MONTH = :month

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class InvoicingCycleConfiguration < Orb::BaseModel
        sig { returns(Integer) }
        def duration
        end

        sig { params(_: Integer).returns(Integer) }
        def duration=(_)
        end

        sig { returns(Symbol) }
        def duration_unit
        end

        sig { params(_: Symbol).returns(Symbol) }
        def duration_unit=(_)
        end

        sig { params(duration: Integer, duration_unit: Symbol).void }
        def initialize(duration:, duration_unit:)
        end

        sig { override.returns({duration: Integer, duration_unit: Symbol}) }
        def to_hash
        end

        class DurationUnit < Orb::Enum
          abstract!

          DAY = :day
          MONTH = :month

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class PackageConfig < Orb::BaseModel
        sig { returns(String) }
        def package_amount
        end

        sig { params(_: String).returns(String) }
        def package_amount=(_)
        end

        sig { returns(Integer) }
        def package_size
        end

        sig { params(_: Integer).returns(Integer) }
        def package_size=(_)
        end

        sig { params(package_amount: String, package_size: Integer).void }
        def initialize(package_amount:, package_size:)
        end

        sig { override.returns({package_amount: String, package_size: Integer}) }
        def to_hash
        end
      end

      class MatrixConfig < Orb::BaseModel
        sig { returns(String) }
        def default_unit_amount
        end

        sig { params(_: String).returns(String) }
        def default_unit_amount=(_)
        end

        sig { returns(T::Array[T.nilable(String)]) }
        def dimensions
        end

        sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
        def dimensions=(_)
        end

        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]) }
        def matrix_values
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]).returns(T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue])
        end
        def matrix_values=(_)
        end

        sig do
          params(
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]
          ).void
        end
        def initialize(default_unit_amount:, dimensions:, matrix_values:)
        end

        sig do
          override.returns(
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
          sig { returns(T::Array[T.nilable(String)]) }
          def dimension_values
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
          def initialize(dimension_values:, unit_amount:)
          end

          sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
          def to_hash
          end
        end
      end

      class MatrixWithAllocationConfig < Orb::BaseModel
        sig { returns(Float) }
        def allocation
        end

        sig { params(_: Float).returns(Float) }
        def allocation=(_)
        end

        sig { returns(String) }
        def default_unit_amount
        end

        sig { params(_: String).returns(String) }
        def default_unit_amount=(_)
        end

        sig { returns(T::Array[T.nilable(String)]) }
        def dimensions
        end

        sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
        def dimensions=(_)
        end

        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]) }
        def matrix_values
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]).returns(T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue])
        end
        def matrix_values=(_)
        end

        sig do
          params(
            allocation: Float,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]
          ).void
        end
        def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
        end

        sig do
          override.returns(
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
          sig { returns(T::Array[T.nilable(String)]) }
          def dimension_values
          end

          sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
          def initialize(dimension_values:, unit_amount:)
          end

          sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
          def to_hash
          end
        end
      end

      class TieredConfig < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]).returns(T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]).void }
        def initialize(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          sig { returns(Float) }
          def first_unit
          end

          sig { params(_: Float).returns(Float) }
          def first_unit=(_)
          end

          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          sig { returns(T.nilable(Float)) }
          def last_unit
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def last_unit=(_)
          end

          sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
          def initialize(first_unit:, unit_amount:, last_unit: nil)
          end

          sig { override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)}) }
          def to_hash
          end
        end
      end

      class TieredBpsConfig < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]).returns(T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]).void }
        def initialize(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          sig { returns(Float) }
          def bps
          end

          sig { params(_: Float).returns(Float) }
          def bps=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def maximum_amount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def maximum_amount=(_)
          end

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
            ).void
          end
          def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
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

      class BpsConfig < Orb::BaseModel
        sig { returns(Float) }
        def bps
        end

        sig { params(_: Float).returns(Float) }
        def bps=(_)
        end

        sig { returns(T.nilable(String)) }
        def per_unit_maximum
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def per_unit_maximum=(_)
        end

        sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
        def initialize(bps:, per_unit_maximum: nil)
        end

        sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
        def to_hash
        end
      end

      class BulkBpsConfig < Orb::BaseModel
        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]).returns(T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]).void }
        def initialize(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          sig { returns(Float) }
          def bps
          end

          sig { params(_: Float).returns(Float) }
          def bps=(_)
          end

          sig { returns(T.nilable(String)) }
          def maximum_amount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def maximum_amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def per_unit_maximum
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def per_unit_maximum=(_)
          end

          sig do
            params(bps: Float, maximum_amount: T.nilable(String), per_unit_maximum: T.nilable(String)).void
          end
          def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
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
        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]) }
        def tiers
        end

        sig do
          params(_: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]).returns(T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier])
        end
        def tiers=(_)
        end

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]).void }
        def initialize(tiers:)
        end

        sig { override.returns({tiers: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]}) }
        def to_hash
        end

        class Tier < Orb::BaseModel
          sig { returns(String) }
          def unit_amount
          end

          sig { params(_: String).returns(String) }
          def unit_amount=(_)
          end

          sig { returns(T.nilable(Float)) }
          def maximum_units
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def maximum_units=(_)
          end

          sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
          def initialize(unit_amount:, maximum_units: nil)
          end

          sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
          def to_hash
          end
        end
      end
    end
  end
end
