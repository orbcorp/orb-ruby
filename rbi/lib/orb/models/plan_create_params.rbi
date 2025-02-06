# typed: strong

module Orb
  module Models
    class PlanCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :name

      sig do
        returns(
          T::Array[T.any(
            Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice
          )]
        )
      end
      attr_accessor :prices

      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig { returns(T.nilable(Symbol)) }
      attr_reader :status

      sig { params(status: Symbol).void }
      attr_writer :status

      sig do
        params(
          currency: String,
          name: String,
          prices: T::Array[T.any(
            Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice,
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice
          )],
          default_invoice_memo: T.nilable(String),
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          status: Symbol,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        currency:,
        name:,
        prices:,
        default_invoice_memo: nil,
        external_plan_id: nil,
        metadata: nil,
        net_terms: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            currency: String,
            name: String,
            prices: T::Array[T.any(
              Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice,
              Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice,
              Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice,
              Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice,
              Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice,
              Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice
            )],
            default_invoice_memo: T.nilable(String),
            external_plan_id: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            net_terms: T.nilable(Integer),
            status: Symbol,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Price < Orb::Union
        abstract!

        class NewPlanUnitPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::UnitConfig) }
          attr_accessor :unit_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              unit_config: Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::UnitConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            unit_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :unit
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                unit_config: Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::UnitConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class UnitConfig < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :unit_amount

            sig { params(unit_amount: String).void }
            def initialize(unit_amount:)
            end

            sig { override.returns({unit_amount: String}) }
            def to_hash
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::PackageConfig) }
          attr_accessor :package_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              package_config: Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::PackageConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            package_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :package
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                package_config: Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::PackageConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class PackageConfig < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :package_amount

            sig { returns(Integer) }
            attr_accessor :package_size

            sig { params(package_amount: String, package_size: Integer).void }
            def initialize(package_amount:, package_size:)
            end

            sig { override.returns({package_amount: String, package_size: Integer}) }
            def to_hash
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanMatrixPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig) }
          attr_accessor :matrix_config

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              matrix_config: Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            matrix_config:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :matrix
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                matrix_config: Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class MatrixConfig < Orb::BaseModel
            sig { returns(String) }
            attr_accessor :default_unit_amount

            sig { returns(T::Array[T.nilable(String)]) }
            attr_accessor :dimensions

            sig do
              returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig::MatrixValue])
            end
            attr_accessor :matrix_values

            sig do
              params(
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig::MatrixValue]
              ).void
            end
            def initialize(default_unit_amount:, dimensions:, matrix_values:)
            end

            sig do
              override.returns(
                {
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig::MatrixValue]
                }
              )
            end
            def to_hash
            end

            class MatrixValue < Orb::BaseModel
              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimension_values

              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
              def initialize(dimension_values:, unit_amount:)
              end

              sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
              def to_hash
              end
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanTieredPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig) }
          attr_accessor :tiered_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_config: Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :tiered
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                tiered_config: Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class TieredConfig < Orb::BaseModel
            sig do
              returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier])
            end
            attr_accessor :tiers

            sig do
              params(tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier]).void
            end
            def initialize(tiers:)
            end

            sig do
              override.returns({tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier]})
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
              sig { returns(Float) }
              attr_accessor :first_unit

              sig { returns(String) }
              attr_accessor :unit_amount

              sig { returns(T.nilable(Float)) }
              attr_accessor :last_unit

              sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
              def initialize(first_unit:, unit_amount:, last_unit: nil)
              end

              sig { override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)}) }
              def to_hash
              end
            end
          end

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanTieredBpsPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig) }
          attr_accessor :tiered_bps_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_bps_config: Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_bps_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :tiered_bps
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                tiered_bps_config: Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class TieredBpsConfig < Orb::BaseModel
            sig do
              returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier])
            end
            attr_accessor :tiers

            sig do
              params(
                tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier]
              ).void
            end
            def initialize(tiers:)
            end

            sig do
              override.returns({tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier]})
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanBpsPrice < Orb::BaseModel
          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BpsConfig) }
          attr_accessor :bps_config

          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              bps_config: Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BpsConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            bps_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :bps
          )
          end

          sig do
            override.returns(
              {
                bps_config: Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BpsConfig,
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
              }
            )
          end
          def to_hash
          end

          class BpsConfig < Orb::BaseModel
            sig { returns(Float) }
            attr_accessor :bps

            sig { returns(T.nilable(String)) }
            attr_accessor :per_unit_maximum

            sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
            def initialize(bps:, per_unit_maximum: nil)
            end

            sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
            def to_hash
            end
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanBulkBpsPrice < Orb::BaseModel
          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig) }
          attr_accessor :bulk_bps_config

          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              bulk_bps_config: Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            bulk_bps_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :bulk_bps
          )
          end

          sig do
            override.returns(
              {
                bulk_bps_config: Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
              }
            )
          end
          def to_hash
          end

          class BulkBpsConfig < Orb::BaseModel
            sig do
              returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier])
            end
            attr_accessor :tiers

            sig do
              params(tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier]).void
            end
            def initialize(tiers:)
            end

            sig do
              override.returns({tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier]})
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
              sig { returns(Float) }
              attr_accessor :bps

              sig { returns(T.nilable(String)) }
              attr_accessor :maximum_amount

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig do
                params(
                  bps: Float,
                  maximum_amount: T.nilable(String),
                  per_unit_maximum: T.nilable(String)
                ).void
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanBulkPrice < Orb::BaseModel
          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig) }
          attr_accessor :bulk_config

          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              bulk_config: Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig,
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            bulk_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :bulk
          )
          end

          sig do
            override.returns(
              {
                bulk_config: Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig,
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
              }
            )
          end
          def to_hash
          end

          class BulkConfig < Orb::BaseModel
            sig do
              returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier])
            end
            attr_accessor :tiers

            sig do
              params(tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier]).void
            end
            def initialize(tiers:)
            end

            sig do
              override.returns({tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier]})
            end
            def to_hash
            end

            class Tier < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { returns(T.nilable(Float)) }
              attr_accessor :maximum_units

              sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
              def initialize(unit_amount:, maximum_units: nil)
              end

              sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
              def to_hash
              end
            end
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanThresholdTotalAmountPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :threshold_total_amount_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              threshold_total_amount_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            threshold_total_amount_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :threshold_total_amount
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :tiered_package_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_package_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_package_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :tiered_package
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanTieredWithMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :tiered_with_minimum_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_with_minimum_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_with_minimum_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :tiered_with_minimum
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanUnitWithPercentPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :unit_with_percent_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              unit_with_percent_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            unit_with_percent_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :unit_with_percent
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanPackageWithAllocationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :package_with_allocation_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              package_with_allocation_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            package_with_allocation_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :package_with_allocation
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanTierWithProrationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :tiered_with_proration_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              tiered_with_proration_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            tiered_with_proration_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :tiered_with_proration
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanUnitWithProrationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :unit_with_proration_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              unit_with_proration_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            unit_with_proration_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :unit_with_proration
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanGroupedAllocationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :grouped_allocation_config

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              grouped_allocation_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            grouped_allocation_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :grouped_allocation
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanGroupedWithProratedMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :grouped_with_prorated_minimum_config

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            grouped_with_prorated_minimum_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :grouped_with_prorated_minimum
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanGroupedWithMeteredMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :grouped_with_metered_minimum_config

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            grouped_with_metered_minimum_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :grouped_with_metered_minimum
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanMatrixWithDisplayNamePrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :matrix_with_display_name_config

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              matrix_with_display_name_config: T::Hash[Symbol, T.anything],
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            matrix_with_display_name_config:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :matrix_with_display_name
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanBulkWithProrationPrice < Orb::BaseModel
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :bulk_with_proration_config

          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              bulk_with_proration_config: T::Hash[Symbol, T.anything],
              cadence: Symbol,
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            bulk_with_proration_config:,
            cadence:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :bulk_with_proration
          )
          end

          sig do
            override.returns(
              {
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanGroupedTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :grouped_tiered_package_config

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              grouped_tiered_package_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            grouped_tiered_package_config:,
            item_id:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :grouped_tiered_package
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanMaxGroupTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :max_group_tiered_package_config

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              max_group_tiered_package_config: T::Hash[Symbol, T.anything],
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            max_group_tiered_package_config:,
            name:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :max_group_tiered_package
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanScalableMatrixWithUnitPricingPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :scalable_matrix_with_unit_pricing_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            scalable_matrix_with_unit_pricing_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :scalable_matrix_with_unit_pricing
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        class NewPlanScalableMatrixWithTieredPricingPrice < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :cadence

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(Symbol) }
          attr_accessor :model_type

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :scalable_matrix_with_tiered_pricing_config

          sig { returns(T.nilable(String)) }
          attr_accessor :billable_metric_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :billed_in_advance

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration))
          end
          attr_accessor :billing_cycle_configuration

          sig { returns(T.nilable(Float)) }
          attr_accessor :conversion_rate

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :external_price_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :fixed_price_quantity

          sig { returns(T.nilable(String)) }
          attr_accessor :invoice_grouping_key

          sig do
            returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration))
          end
          attr_accessor :invoicing_cycle_configuration

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).void
          end
          def initialize(
            cadence:,
            item_id:,
            name:,
            scalable_matrix_with_tiered_pricing_config:,
            billable_metric_id: nil,
            billed_in_advance: nil,
            billing_cycle_configuration: nil,
            conversion_rate: nil,
            currency: nil,
            external_price_id: nil,
            fixed_price_quantity: nil,
            invoice_grouping_key: nil,
            invoicing_cycle_configuration: nil,
            metadata: nil,
            model_type: :scalable_matrix_with_tiered_pricing
          )
          end

          sig do
            override.returns(
              {
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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

          class BillingCycleConfiguration < Orb::BaseModel
            sig { returns(Integer) }
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
            attr_accessor :duration

            sig { returns(Symbol) }
            attr_accessor :duration_unit

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
        end

        sig do
          override.returns(
            [
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice],
              [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice]
            ]
          )
        end
        private_class_method def self.variants
        end
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        DRAFT = :draft

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
