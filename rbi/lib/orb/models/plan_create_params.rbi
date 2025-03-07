# typed: strong

module Orb
  module Models
    class PlanCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        returns(
          T::Array[
          T.any(
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
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice
          )
          ]
        )
      end
      def prices
      end

      sig do
        params(
          _: T::Array[
          T.any(
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
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
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
              Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice,
              Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice
            )
            ]
          )
      end
      def prices=(_)
      end

      sig { returns(T.nilable(String)) }
      def default_invoice_memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_invoice_memo=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_plan_id=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def net_terms
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def net_terms=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          currency: String,
          name: String,
          prices: T::Array[
          T.any(
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
            Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice,
            Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice
          )
          ],
          default_invoice_memo: T.nilable(String),
          external_plan_id: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          status: Symbol,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
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
        override
          .returns(
            {
              currency: String,
              name: String,
              prices: T::Array[
              T.any(
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
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice,
                Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice
              )
              ],
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
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::UnitConfig) }
          def unit_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::UnitConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::UnitConfig)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::BillingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::InvoicingCycleConfiguration)) }
          def invoicing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::InvoicingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice::InvoicingCycleConfiguration))
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::PackageConfig) }
          def package_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::PackageConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::PackageConfig)
          end
          def package_config=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::BillingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::InvoicingCycleConfiguration)) }
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::InvoicingCycleConfiguration)
            )
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice::InvoicingCycleConfiguration))
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanMatrixPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig) }
          def matrix_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig)
          end
          def matrix_config=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::BillingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::InvoicingCycleConfiguration)) }
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::InvoicingCycleConfiguration)
            )
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::InvoicingCycleConfiguration))
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

            sig { returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig::MatrixValue]) }
            def matrix_values
            end

            sig do
              params(_: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig::MatrixValue])
                .returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig::MatrixValue])
            end
            def matrix_values=(_)
            end

            sig do
              params(
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice::MatrixConfig::MatrixValue]
              )
                .void
            end
            def initialize(default_unit_amount:, dimensions:, matrix_values:)
            end

            sig do
              override
                .returns(
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanTieredPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig) }
          def tiered_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig)
          end
          def tiered_config=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::BillingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::InvoicingCycleConfiguration)) }
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::InvoicingCycleConfiguration)
            )
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::InvoicingCycleConfiguration))
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class TieredConfig < Orb::BaseModel
            sig { returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier]) }
            def tiers
            end

            sig do
              params(_: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier])
                .returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier])
            end
            def tiers=(_)
            end

            sig { params(tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier]).void }
            def initialize(tiers:)
            end

            sig do
              override
                .returns({tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice::TieredConfig::Tier]})
            end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanTieredBpsPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig) }
          def tiered_bps_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig)
          end
          def tiered_bps_config=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::BillingCycleConfiguration)
            )
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::InvoicingCycleConfiguration)
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::InvoicingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::InvoicingCycleConfiguration)
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class TieredBpsConfig < Orb::BaseModel
            sig { returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier]) }
            def tiers
            end

            sig do
              params(_: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier])
                .returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier])
            end
            def tiers=(_)
            end

            sig do
              params(
                tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier]
              )
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns(
                  {tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice::TieredBpsConfig::Tier]}
                )
            end
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
                )
                  .void
              end
              def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanBpsPrice < Orb::BaseModel
          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BpsConfig) }
          def bps_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BpsConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BpsConfig)
          end
          def bps_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BillingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::InvoicingCycleConfiguration)) }
          def invoicing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::InvoicingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice::InvoicingCycleConfiguration))
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanBulkBpsPrice < Orb::BaseModel
          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig) }
          def bulk_bps_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig)
          end
          def bulk_bps_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BillingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::InvoicingCycleConfiguration)) }
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::InvoicingCycleConfiguration)
            )
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::InvoicingCycleConfiguration))
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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
            sig { returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier]) }
            def tiers
            end

            sig do
              params(_: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier])
                .returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier])
            end
            def tiers=(_)
            end

            sig do
              params(tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier])
                .void
            end
            def initialize(tiers:)
            end

            sig do
              override
                .returns({tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice::BulkBpsConfig::Tier]})
            end
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanBulkPrice < Orb::BaseModel
          sig { returns(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig) }
          def bulk_config
          end

          sig do
            params(_: Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig)
              .returns(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig)
          end
          def bulk_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BillingCycleConfiguration)) }
          def billing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BillingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BillingCycleConfiguration))
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig { returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::InvoicingCycleConfiguration)) }
          def invoicing_cycle_configuration
          end

          sig do
            params(_: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::InvoicingCycleConfiguration))
              .returns(T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::InvoicingCycleConfiguration))
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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
            sig { returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier]) }
            def tiers
            end

            sig do
              params(_: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier])
                .returns(T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier])
            end
            def tiers=(_)
            end

            sig { params(tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier]).void }
            def initialize(tiers:)
            end

            sig do
              override
                .returns({tiers: T::Array[Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice::BulkConfig::Tier]})
            end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanThresholdTotalAmountPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def threshold_total_amount_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def threshold_total_amount_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              threshold_total_amount_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  threshold_total_amount_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def tiered_package_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def tiered_package_config=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::BillingCycleConfiguration)
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::BillingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::BillingCycleConfiguration)
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::InvoicingCycleConfiguration)
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::InvoicingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice::InvoicingCycleConfiguration)
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanTieredWithMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_minimum_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_minimum_config=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::BillingCycleConfiguration)
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::BillingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::BillingCycleConfiguration)
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
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
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanUnitWithPercentPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def unit_with_percent_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def unit_with_percent_config=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::BillingCycleConfiguration)
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::BillingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::BillingCycleConfiguration)
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::InvoicingCycleConfiguration)
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::InvoicingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice::InvoicingCycleConfiguration)
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanPackageWithAllocationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def package_with_allocation_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def package_with_allocation_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              package_with_allocation_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_with_allocation_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanTierWithProrationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_proration_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def tiered_with_proration_config=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::BillingCycleConfiguration)
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::BillingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::BillingCycleConfiguration)
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
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
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanUnitWithProrationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def unit_with_proration_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def unit_with_proration_config=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::BillingCycleConfiguration)
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::BillingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::BillingCycleConfiguration)
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
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
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanGroupedAllocationPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_allocation_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_allocation_config=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::BillingCycleConfiguration)
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::BillingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::BillingCycleConfiguration)
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
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
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanGroupedWithProratedMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_prorated_minimum_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_prorated_minimum_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanGroupedWithMeteredMinimumPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_metered_minimum_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_with_metered_minimum_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanMatrixWithDisplayNamePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def matrix_with_display_name_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def matrix_with_display_name_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              matrix_with_display_name_config: T::Hash[Symbol, T.anything],
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanBulkWithProrationPrice < Orb::BaseModel
          sig { returns(T::Hash[Symbol, T.anything]) }
          def bulk_with_proration_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def bulk_with_proration_config=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig do
            returns(
              T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::BillingCycleConfiguration)
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::BillingCycleConfiguration)
            )
              .returns(
                T.nilable(Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::BillingCycleConfiguration)
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

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
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
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
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanGroupedTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def grouped_tiered_package_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def grouped_tiered_package_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              grouped_tiered_package_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanMaxGroupTieredPackagePrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def item_id
          end

          sig { params(_: String).returns(String) }
          def item_id=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def max_group_tiered_package_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def max_group_tiered_package_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              max_group_tiered_package_config: T::Hash[Symbol, T.anything],
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanScalableMatrixWithUnitPricingPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_unit_pricing_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_unit_pricing_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanScalableMatrixWithTieredPricingPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
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

          sig { returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_tiered_pricing_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def scalable_matrix_with_tiered_pricing_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              item_id: String,
              name: String,
              scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
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
            override
              .returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class NewPlanCumulativeGroupedBulkPrice < Orb::BaseModel
          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(T::Hash[Symbol, T.anything]) }
          def cumulative_grouped_bulk_config
          end

          sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
          def cumulative_grouped_bulk_config=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::BillingCycleConfiguration
              )
            )
          end
          def billing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::BillingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
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
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
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

          sig do
            returns(
              T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              )
            )
          end
          def invoicing_cycle_configuration
          end

          sig do
            params(
              _: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              )
            )
              .returns(
                T.nilable(
                  Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
          end
          def invoicing_cycle_configuration=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          sig do
            params(
              cadence: Symbol,
              cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
              item_id: String,
              name: String,
              billable_metric_id: T.nilable(String),
              billed_in_advance: T.nilable(T::Boolean),
              billing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::BillingCycleConfiguration
              ),
              conversion_rate: T.nilable(Float),
              currency: T.nilable(String),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration: T.nilable(
                Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
              ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            )
              .void
          end
          def initialize(
            cadence:,
            cumulative_grouped_bulk_config:,
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
            model_type: :cumulative_grouped_bulk
          )
          end

          sig do
            override
              .returns(
                {
                  cadence: Symbol,
                  cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::BillingCycleConfiguration
                  ),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(
                    Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                  ),
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end
        end

        class << self
          sig do
            override
              .returns(
                [[Symbol, Orb::Models::PlanCreateParams::Price::NewPlanUnitPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanPackagePrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanMatrixPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredBpsPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBpsPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBulkBpsPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBulkPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanThresholdTotalAmountPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredPackagePrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTieredWithMinimumPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanUnitWithPercentPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanPackageWithAllocationPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanTierWithProrationPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanUnitWithProrationPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedAllocationPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithProratedMinimumPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanMatrixWithDisplayNamePrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanBulkWithProrationPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanGroupedTieredPackagePrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanMaxGroupTieredPackagePrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::PlanCreateParams::Price::NewPlanCumulativeGroupedBulkPrice]]
              )
          end
          private def variants
          end
        end
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        DRAFT = :draft

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
