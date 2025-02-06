# typed: strong

module Orb
  module Models
    class PriceCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
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
            scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything]
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(Symbol) }
      attr_accessor :cadence

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :item_id

      sig { returns(Symbol) }
      attr_accessor :model_type

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Orb::Models::PriceCreateParams::UnitConfig) }
      attr_accessor :unit_config

      sig { returns(T.nilable(String)) }
      attr_accessor :billable_metric_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :billed_in_advance

      sig { returns(T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration)) }
      attr_accessor :billing_cycle_configuration

      sig { returns(T.nilable(Float)) }
      attr_accessor :conversion_rate

      sig { returns(T.nilable(String)) }
      attr_accessor :external_price_id

      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_price_quantity

      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_grouping_key

      sig { returns(T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration)) }
      attr_accessor :invoicing_cycle_configuration

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(Orb::Models::PriceCreateParams::PackageConfig) }
      attr_accessor :package_config

      sig { returns(Orb::Models::PriceCreateParams::MatrixConfig) }
      attr_accessor :matrix_config

      sig { returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig) }
      attr_accessor :matrix_with_allocation_config

      sig { returns(Orb::Models::PriceCreateParams::TieredConfig) }
      attr_accessor :tiered_config

      sig { returns(Orb::Models::PriceCreateParams::TieredBpsConfig) }
      attr_accessor :tiered_bps_config

      sig { returns(Orb::Models::PriceCreateParams::BpsConfig) }
      attr_accessor :bps_config

      sig { returns(Orb::Models::PriceCreateParams::BulkBpsConfig) }
      attr_accessor :bulk_bps_config

      sig { returns(Orb::Models::PriceCreateParams::BulkConfig) }
      attr_accessor :bulk_config

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
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::BillingCycleConfiguration),
          conversion_rate: T.nilable(Float),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration: T.nilable(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOpts
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

      sig { returns(Orb::Models::PriceCreateParams::Shape) }
      def to_h; end

      class Cadence < Orb::Enum
        abstract!

        ANNUAL = :annual
        SEMI_ANNUAL = :semi_annual
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        ONE_TIME = :one_time
        CUSTOM = :custom

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class ModelType < Orb::Enum
        abstract!

        SCALABLE_MATRIX_WITH_TIERED_PRICING = :scalable_matrix_with_tiered_pricing

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class UnitConfig < Orb::BaseModel
        Shape = T.type_alias { {unit_amount: String} }

        sig { returns(String) }
        attr_accessor :unit_amount

        sig { params(unit_amount: String).void }
        def initialize(unit_amount:); end

        sig { returns(Orb::Models::PriceCreateParams::UnitConfig::Shape) }
        def to_h; end
      end

      class BillingCycleConfiguration < Orb::BaseModel
        Shape = T.type_alias { {duration: Integer, duration_unit: Symbol} }

        sig { returns(Integer) }
        attr_accessor :duration

        sig { returns(Symbol) }
        attr_accessor :duration_unit

        sig { params(duration: Integer, duration_unit: Symbol).void }
        def initialize(duration:, duration_unit:); end

        sig { returns(Orb::Models::PriceCreateParams::BillingCycleConfiguration::Shape) }
        def to_h; end

        class DurationUnit < Orb::Enum
          abstract!

          DAY = :day
          MONTH = :month

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class InvoicingCycleConfiguration < Orb::BaseModel
        Shape = T.type_alias { {duration: Integer, duration_unit: Symbol} }

        sig { returns(Integer) }
        attr_accessor :duration

        sig { returns(Symbol) }
        attr_accessor :duration_unit

        sig { params(duration: Integer, duration_unit: Symbol).void }
        def initialize(duration:, duration_unit:); end

        sig { returns(Orb::Models::PriceCreateParams::InvoicingCycleConfiguration::Shape) }
        def to_h; end

        class DurationUnit < Orb::Enum
          abstract!

          DAY = :day
          MONTH = :month

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class PackageConfig < Orb::BaseModel
        Shape = T.type_alias { {package_amount: String, package_size: Integer} }

        sig { returns(String) }
        attr_accessor :package_amount

        sig { returns(Integer) }
        attr_accessor :package_size

        sig { params(package_amount: String, package_size: Integer).void }
        def initialize(package_amount:, package_size:); end

        sig { returns(Orb::Models::PriceCreateParams::PackageConfig::Shape) }
        def to_h; end
      end

      class MatrixConfig < Orb::BaseModel
        Shape = T.type_alias do
          {
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]
          }
        end

        sig { returns(String) }
        attr_accessor :default_unit_amount

        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :dimensions

        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]) }
        attr_accessor :matrix_values

        sig do
          params(
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue]
          ).void
        end
        def initialize(default_unit_amount:, dimensions:, matrix_values:); end

        sig { returns(Orb::Models::PriceCreateParams::MatrixConfig::Shape) }
        def to_h; end

        class MatrixValue < Orb::BaseModel
          Shape = T.type_alias { {dimension_values: T::Array[T.nilable(String)], unit_amount: String} }

          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
          def initialize(dimension_values:, unit_amount:); end

          sig { returns(Orb::Models::PriceCreateParams::MatrixConfig::MatrixValue::Shape) }
          def to_h; end
        end
      end

      class MatrixWithAllocationConfig < Orb::BaseModel
        Shape = T.type_alias do
          {
            allocation: Float,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]
          }
        end

        sig { returns(Float) }
        attr_accessor :allocation

        sig { returns(String) }
        attr_accessor :default_unit_amount

        sig { returns(T::Array[T.nilable(String)]) }
        attr_accessor :dimensions

        sig { returns(T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]) }
        attr_accessor :matrix_values

        sig do
          params(
            allocation: Float,
            default_unit_amount: String,
            dimensions: T::Array[T.nilable(String)],
            matrix_values: T::Array[Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue]
          ).void
        end
        def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:); end

        sig { returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::Shape) }
        def to_h; end

        class MatrixValue < Orb::BaseModel
          Shape = T.type_alias { {dimension_values: T::Array[T.nilable(String)], unit_amount: String} }

          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
          def initialize(dimension_values:, unit_amount:); end

          sig { returns(Orb::Models::PriceCreateParams::MatrixWithAllocationConfig::MatrixValue::Shape) }
          def to_h; end
        end
      end

      class TieredConfig < Orb::BaseModel
        Shape = T.type_alias { {tiers: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]} }

        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]) }
        attr_accessor :tiers

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::TieredConfig::Tier]).void }
        def initialize(tiers:); end

        sig { returns(Orb::Models::PriceCreateParams::TieredConfig::Shape) }
        def to_h; end

        class Tier < Orb::BaseModel
          Shape = T.type_alias { {first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)} }

          sig { returns(Float) }
          attr_accessor :first_unit

          sig { returns(String) }
          attr_accessor :unit_amount

          sig { returns(T.nilable(Float)) }
          attr_accessor :last_unit

          sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
          def initialize(first_unit:, unit_amount:, last_unit: nil); end

          sig { returns(Orb::Models::PriceCreateParams::TieredConfig::Tier::Shape) }
          def to_h; end
        end
      end

      class TieredBpsConfig < Orb::BaseModel
        Shape = T.type_alias { {tiers: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]} }

        sig { returns(T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]) }
        attr_accessor :tiers

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::TieredBpsConfig::Tier]).void }
        def initialize(tiers:); end

        sig { returns(Orb::Models::PriceCreateParams::TieredBpsConfig::Shape) }
        def to_h; end

        class Tier < Orb::BaseModel
          Shape = T.type_alias do
            {
              bps: Float,
              minimum_amount: String,
              maximum_amount: T.nilable(String),
              per_unit_maximum: T.nilable(String)
            }
          end

          sig { returns(Float) }
          attr_accessor :bps

          sig { returns(String) }
          attr_accessor :minimum_amount

          sig { returns(T.nilable(String)) }
          attr_accessor :maximum_amount

          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_maximum

          sig do
            params(
              bps: Float,
              minimum_amount: String,
              maximum_amount: T.nilable(String),
              per_unit_maximum: T.nilable(String)
            ).void
          end
          def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil); end

          sig { returns(Orb::Models::PriceCreateParams::TieredBpsConfig::Tier::Shape) }
          def to_h; end
        end
      end

      class BpsConfig < Orb::BaseModel
        Shape = T.type_alias { {bps: Float, per_unit_maximum: T.nilable(String)} }

        sig { returns(Float) }
        attr_accessor :bps

        sig { returns(T.nilable(String)) }
        attr_accessor :per_unit_maximum

        sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
        def initialize(bps:, per_unit_maximum: nil); end

        sig { returns(Orb::Models::PriceCreateParams::BpsConfig::Shape) }
        def to_h; end
      end

      class BulkBpsConfig < Orb::BaseModel
        Shape = T.type_alias { {tiers: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]} }

        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]) }
        attr_accessor :tiers

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::BulkBpsConfig::Tier]).void }
        def initialize(tiers:); end

        sig { returns(Orb::Models::PriceCreateParams::BulkBpsConfig::Shape) }
        def to_h; end

        class Tier < Orb::BaseModel
          Shape = T.type_alias do
            {bps: Float, maximum_amount: T.nilable(String), per_unit_maximum: T.nilable(String)}
          end

          sig { returns(Float) }
          attr_accessor :bps

          sig { returns(T.nilable(String)) }
          attr_accessor :maximum_amount

          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_maximum

          sig do
            params(bps: Float, maximum_amount: T.nilable(String), per_unit_maximum: T.nilable(String)).void
          end
          def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil); end

          sig { returns(Orb::Models::PriceCreateParams::BulkBpsConfig::Tier::Shape) }
          def to_h; end
        end
      end

      class BulkConfig < Orb::BaseModel
        Shape = T.type_alias { {tiers: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]} }

        sig { returns(T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]) }
        attr_accessor :tiers

        sig { params(tiers: T::Array[Orb::Models::PriceCreateParams::BulkConfig::Tier]).void }
        def initialize(tiers:); end

        sig { returns(Orb::Models::PriceCreateParams::BulkConfig::Shape) }
        def to_h; end

        class Tier < Orb::BaseModel
          Shape = T.type_alias { {unit_amount: String, maximum_units: T.nilable(Float)} }

          sig { returns(String) }
          attr_accessor :unit_amount

          sig { returns(T.nilable(Float)) }
          attr_accessor :maximum_units

          sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
          def initialize(unit_amount:, maximum_units: nil); end

          sig { returns(Orb::Models::PriceCreateParams::BulkConfig::Tier::Shape) }
          def to_h; end
        end
      end
    end
  end
end
