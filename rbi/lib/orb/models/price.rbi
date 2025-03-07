# typed: strong

module Orb
  module Models
    class Price < Orb::Union
      abstract!

      class UnitPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::UnitPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::UnitPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::UnitPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::UnitPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::UnitPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::UnitPrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::UnitPrice::Item).returns(Orb::Models::Price::UnitPrice::Item) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::UnitPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::UnitPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(Orb::Models::Price::UnitPrice::UnitConfig) }
        def unit_config
        end

        sig { params(_: Orb::Models::Price::UnitPrice::UnitConfig).returns(Orb::Models::Price::UnitPrice::UnitConfig) }
        def unit_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::UnitPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::UnitPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::UnitPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::UnitPrice::Item,
            maximum: T.nilable(Orb::Models::Price::UnitPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::UnitPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            unit_config: Orb::Models::Price::UnitPrice::UnitConfig,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          unit_config:,
          dimensional_price_configuration: nil,
          model_type: :unit
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::UnitPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::UnitPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::UnitPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::UnitPrice::Item,
                maximum: T.nilable(Orb::Models::Price::UnitPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::UnitPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                unit_config: Orb::Models::Price::UnitPrice::UnitConfig,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

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

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class PackagePrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackagePrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::PackagePrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::PackagePrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::PackagePrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::PackagePrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackagePrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::PackagePrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::PackagePrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::PackagePrice::Item).returns(Orb::Models::Price::PackagePrice::Item) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackagePrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::PackagePrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackagePrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::PackagePrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(Orb::Models::Price::PackagePrice::PackageConfig) }
        def package_config
        end

        sig do
          params(_: Orb::Models::Price::PackagePrice::PackageConfig)
            .returns(Orb::Models::Price::PackagePrice::PackageConfig)
        end
        def package_config=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::PackagePrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::PackagePrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::PackagePrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::PackagePrice::Item,
            maximum: T.nilable(Orb::Models::Price::PackagePrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::PackagePrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            package_config: Orb::Models::Price::PackagePrice::PackageConfig,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          package_config:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :package
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::PackagePrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::PackagePrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::PackagePrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::PackagePrice::Item,
                maximum: T.nilable(Orb::Models::Price::PackagePrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::PackagePrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                package_config: Orb::Models::Price::PackagePrice::PackageConfig,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class MatrixPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::MatrixPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::MatrixPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::MatrixPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::MatrixPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::MatrixPrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::MatrixPrice::Item).returns(Orb::Models::Price::MatrixPrice::Item) }
        def item=(_)
        end

        sig { returns(Orb::Models::Price::MatrixPrice::MatrixConfig) }
        def matrix_config
        end

        sig do
          params(_: Orb::Models::Price::MatrixPrice::MatrixConfig)
            .returns(Orb::Models::Price::MatrixPrice::MatrixConfig)
        end
        def matrix_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::MatrixPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::MatrixPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::MatrixPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::MatrixPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::MatrixPrice::Item,
            matrix_config: Orb::Models::Price::MatrixPrice::MatrixConfig,
            maximum: T.nilable(Orb::Models::Price::MatrixPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::MatrixPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          matrix_config:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :matrix
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::MatrixPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::MatrixPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::MatrixPrice::Item,
                matrix_config: Orb::Models::Price::MatrixPrice::MatrixConfig,
                maximum: T.nilable(Orb::Models::Price::MatrixPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::MatrixPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
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

          sig { returns(T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]) }
          def matrix_values
          end

          sig do
            params(_: T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue])
              .returns(T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue])
          end
          def matrix_values=(_)
          end

          sig do
            params(
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]
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
                  matrix_values: T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]
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

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class TieredPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::TieredPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::TieredPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::TieredPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::TieredPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::TieredPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::TieredPrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::TieredPrice::Item).returns(Orb::Models::Price::TieredPrice::Item) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::TieredPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::TieredPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(Orb::Models::Price::TieredPrice::TieredConfig) }
        def tiered_config
        end

        sig do
          params(_: Orb::Models::Price::TieredPrice::TieredConfig)
            .returns(Orb::Models::Price::TieredPrice::TieredConfig)
        end
        def tiered_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::TieredPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::TieredPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::TieredPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::TieredPrice::Item,
            maximum: T.nilable(Orb::Models::Price::TieredPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::TieredPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_config: Orb::Models::Price::TieredPrice::TieredConfig,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredPrice::Item,
                maximum: T.nilable(Orb::Models::Price::TieredPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_config: Orb::Models::Price::TieredPrice::TieredConfig,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class TieredConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]) }
          def tiers
          end

          sig do
            params(_: T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier])
              .returns(T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier])
          end
          def tiers=(_)
          end

          sig { params(tiers: T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]}) }
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

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class TieredBpsPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredBpsPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::TieredBpsPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredBpsPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::TieredBpsPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::TieredBpsPrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::TieredBpsPrice::Item).returns(Orb::Models::Price::TieredBpsPrice::Item) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredBpsPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredBpsPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(Orb::Models::Price::TieredBpsPrice::TieredBpsConfig) }
        def tiered_bps_config
        end

        sig do
          params(_: Orb::Models::Price::TieredBpsPrice::TieredBpsConfig)
            .returns(Orb::Models::Price::TieredBpsPrice::TieredBpsConfig)
        end
        def tiered_bps_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::TieredBpsPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::TieredBpsPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::TieredBpsPrice::Item,
            maximum: T.nilable(Orb::Models::Price::TieredBpsPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::TieredBpsPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_bps_config: Orb::Models::Price::TieredBpsPrice::TieredBpsConfig,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_bps_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_bps
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredBpsPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredBpsPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredBpsPrice::Item,
                maximum: T.nilable(Orb::Models::Price::TieredBpsPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredBpsPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_bps_config: Orb::Models::Price::TieredBpsPrice::TieredBpsConfig,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class TieredBpsConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]) }
          def tiers
          end

          sig do
            params(_: T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier])
              .returns(T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier])
          end
          def tiers=(_)
          end

          sig { params(tiers: T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]}) }
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

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class BpsPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BpsPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::BpsPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::BpsPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::BpsPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::BpsPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::BpsPrice::BpsConfig) }
        def bps_config
        end

        sig { params(_: Orb::Models::Price::BpsPrice::BpsConfig).returns(Orb::Models::Price::BpsPrice::BpsConfig) }
        def bps_config=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BpsPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::BpsPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::BpsPrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::BpsPrice::Item).returns(Orb::Models::Price::BpsPrice::Item) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BpsPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::BpsPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BpsPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::BpsPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::BpsPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::BpsPrice::BillingCycleConfiguration,
            bps_config: Orb::Models::Price::BpsPrice::BpsConfig,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::BpsPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::BpsPrice::Item,
            maximum: T.nilable(Orb::Models::Price::BpsPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::BpsPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          bps_config:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bps
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::BpsPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::BpsPrice::BillingCycleConfiguration,
                bps_config: Orb::Models::Price::BpsPrice::BpsConfig,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::BpsPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::BpsPrice::Item,
                maximum: T.nilable(Orb::Models::Price::BpsPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::BpsPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class BulkBpsPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkBpsPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::BulkBpsPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::BulkBpsPrice::BulkBpsConfig) }
        def bulk_bps_config
        end

        sig do
          params(_: Orb::Models::Price::BulkBpsPrice::BulkBpsConfig)
            .returns(Orb::Models::Price::BulkBpsPrice::BulkBpsConfig)
        end
        def bulk_bps_config=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkBpsPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::BulkBpsPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::BulkBpsPrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::BulkBpsPrice::Item).returns(Orb::Models::Price::BulkBpsPrice::Item) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkBpsPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkBpsPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::BulkBpsPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration,
            bulk_bps_config: Orb::Models::Price::BulkBpsPrice::BulkBpsConfig,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::BulkBpsPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::BulkBpsPrice::Item,
            maximum: T.nilable(Orb::Models::Price::BulkBpsPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::BulkBpsPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          bulk_bps_config:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bulk_bps
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::BulkBpsPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration,
                bulk_bps_config: Orb::Models::Price::BulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::BulkBpsPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::BulkBpsPrice::Item,
                maximum: T.nilable(Orb::Models::Price::BulkBpsPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::BulkBpsPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class BulkBpsConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]) }
          def tiers
          end

          sig do
            params(_: T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier])
              .returns(T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier])
          end
          def tiers=(_)
          end

          sig { params(tiers: T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class BulkPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::BulkPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::BulkPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::BulkPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::BulkPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::BulkPrice::BulkConfig) }
        def bulk_config
        end

        sig { params(_: Orb::Models::Price::BulkPrice::BulkConfig).returns(Orb::Models::Price::BulkPrice::BulkConfig) }
        def bulk_config=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::BulkPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::BulkPrice::Item) }
        def item
        end

        sig { params(_: Orb::Models::Price::BulkPrice::Item).returns(Orb::Models::Price::BulkPrice::Item) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::BulkPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::BulkPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::BulkPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::BulkPrice::BillingCycleConfiguration,
            bulk_config: Orb::Models::Price::BulkPrice::BulkConfig,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::BulkPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::BulkPrice::Item,
            maximum: T.nilable(Orb::Models::Price::BulkPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::BulkPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          bulk_config:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bulk
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::BulkPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::BulkPrice::BillingCycleConfiguration,
                bulk_config: Orb::Models::Price::BulkPrice::BulkConfig,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::BulkPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::BulkPrice::Item,
                maximum: T.nilable(Orb::Models::Price::BulkPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::BulkPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class BulkConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]) }
          def tiers
          end

          sig do
            params(_: T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier])
              .returns(T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier])
          end
          def tiers=(_)
          end

          sig { params(tiers: T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]}) }
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

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class ThresholdTotalAmountPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::ThresholdTotalAmountPrice::Item)
            .returns(Orb::Models::Price::ThresholdTotalAmountPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def threshold_total_amount_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def threshold_total_amount_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::ThresholdTotalAmountPrice::Item,
            maximum: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            threshold_total_amount_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          threshold_total_amount_config:,
          dimensional_price_configuration: nil,
          model_type: :threshold_total_amount
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::ThresholdTotalAmountPrice::Item,
                maximum: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class TieredPackagePrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackagePrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::TieredPackagePrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackagePrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::TieredPackagePrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::TieredPackagePrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::TieredPackagePrice::Item)
            .returns(Orb::Models::Price::TieredPackagePrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackagePrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackagePrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def tiered_package_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def tiered_package_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::TieredPackagePrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::TieredPackagePrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::TieredPackagePrice::Item,
            maximum: T.nilable(Orb::Models::Price::TieredPackagePrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::TieredPackagePrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_package_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_package_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_package
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredPackagePrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredPackagePrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredPackagePrice::Item,
                maximum: T.nilable(Orb::Models::Price::TieredPackagePrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredPackagePrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_package_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class GroupedTieredPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T::Hash[Symbol, T.anything]) }
        def grouped_tiered_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def grouped_tiered_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::GroupedTieredPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::GroupedTieredPrice::Item)
            .returns(Orb::Models::Price::GroupedTieredPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::GroupedTieredPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::GroupedTieredPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::GroupedTieredPrice::Item,
            maximum: T.nilable(Orb::Models::Price::GroupedTieredPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::GroupedTieredPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          grouped_tiered_config:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_tiered
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedTieredPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedTieredPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                grouped_tiered_config: T::Hash[Symbol, T.anything],
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedTieredPrice::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedTieredPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedTieredPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class TieredWithMinimumPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::TieredWithMinimumPrice::Item)
            .returns(Orb::Models::Price::TieredWithMinimumPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def tiered_with_minimum_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def tiered_with_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::TieredWithMinimumPrice::Item,
            maximum: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_with_minimum_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_with_minimum
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredWithMinimumPrice::Item,
                maximum: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class TieredPackageWithMinimumPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::TieredPackageWithMinimumPrice::Item)
            .returns(Orb::Models::Price::TieredPackageWithMinimumPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def tiered_package_with_minimum_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def tiered_package_with_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::TieredPackageWithMinimumPrice::Item,
            maximum: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_package_with_minimum_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_package_with_minimum
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredPackageWithMinimumPrice::Item,
                maximum: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class PackageWithAllocationPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::PackageWithAllocationPrice::Item)
            .returns(Orb::Models::Price::PackageWithAllocationPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::PackageWithAllocationPrice::Item,
            maximum: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            package_with_allocation_config: T::Hash[Symbol, T.anything],
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          package_with_allocation_config:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :package_with_allocation
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::PackageWithAllocationPrice::Item,
                maximum: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class UnitWithPercentPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithPercentPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::UnitWithPercentPrice::Item)
            .returns(Orb::Models::Price::UnitWithPercentPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithPercentPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithPercentPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def unit_with_percent_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def unit_with_percent_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::UnitWithPercentPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::UnitWithPercentPrice::Item,
            maximum: T.nilable(Orb::Models::Price::UnitWithPercentPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::UnitWithPercentPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            unit_with_percent_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          unit_with_percent_config:,
          dimensional_price_configuration: nil,
          model_type: :unit_with_percent
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::UnitWithPercentPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::UnitWithPercentPrice::Item,
                maximum: T.nilable(Orb::Models::Price::UnitWithPercentPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::UnitWithPercentPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class MatrixWithAllocationPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::MatrixWithAllocationPrice::Item)
            .returns(Orb::Models::Price::MatrixWithAllocationPrice::Item)
        end
        def item=(_)
        end

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig) }
        def matrix_with_allocation_config
        end

        sig do
          params(_: Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig)
            .returns(Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig)
        end
        def matrix_with_allocation_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::MatrixWithAllocationPrice::Item,
            matrix_with_allocation_config: Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig,
            maximum: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          matrix_with_allocation_config:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :matrix_with_allocation
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::MatrixWithAllocationPrice::Item,
                matrix_with_allocation_config: Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig,
                maximum: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
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

          sig { returns(T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]) }
          def matrix_values
          end

          sig do
            params(
              _: T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
            )
              .returns(T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue])
          end
          def matrix_values=(_)
          end

          sig do
            params(
              allocation: Float,
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
            )
              .void
          end
          def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
          end

          sig do
            override
              .returns(
                {
                  allocation: Float,
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
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

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class TieredWithProrationPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithProrationPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::TieredWithProrationPrice::Item)
            .returns(Orb::Models::Price::TieredWithProrationPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithProrationPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithProrationPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def tiered_with_proration_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def tiered_with_proration_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::TieredWithProrationPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::TieredWithProrationPrice::Item,
            maximum: T.nilable(Orb::Models::Price::TieredWithProrationPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::TieredWithProrationPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_with_proration_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_with_proration
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredWithProrationPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredWithProrationPrice::Item,
                maximum: T.nilable(Orb::Models::Price::TieredWithProrationPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredWithProrationPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class UnitWithProrationPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithProrationPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::UnitWithProrationPrice::Item)
            .returns(Orb::Models::Price::UnitWithProrationPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithProrationPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithProrationPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def unit_with_proration_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def unit_with_proration_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::UnitWithProrationPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::UnitWithProrationPrice::Item,
            maximum: T.nilable(Orb::Models::Price::UnitWithProrationPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::UnitWithProrationPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            unit_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          unit_with_proration_config:,
          dimensional_price_configuration: nil,
          model_type: :unit_with_proration
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::UnitWithProrationPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::UnitWithProrationPrice::Item,
                maximum: T.nilable(Orb::Models::Price::UnitWithProrationPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::UnitWithProrationPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class GroupedAllocationPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedAllocationPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T::Hash[Symbol, T.anything]) }
        def grouped_allocation_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def grouped_allocation_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::GroupedAllocationPrice::Item)
            .returns(Orb::Models::Price::GroupedAllocationPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedAllocationPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedAllocationPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::GroupedAllocationPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_allocation_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::GroupedAllocationPrice::Item,
            maximum: T.nilable(Orb::Models::Price::GroupedAllocationPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::GroupedAllocationPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          grouped_allocation_config:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_allocation
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedAllocationPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedAllocationPrice::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedAllocationPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedAllocationPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class GroupedWithProratedMinimumPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T::Hash[Symbol, T.anything]) }
        def grouped_with_prorated_minimum_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def grouped_with_prorated_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::GroupedWithProratedMinimumPrice::Item)
            .returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::GroupedWithProratedMinimumPrice::Item,
            maximum: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          grouped_with_prorated_minimum_config:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_with_prorated_minimum
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedWithProratedMinimumPrice::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class GroupedWithMeteredMinimumPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T::Hash[Symbol, T.anything]) }
        def grouped_with_metered_minimum_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def grouped_with_metered_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item)
            .returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item,
            maximum: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          grouped_with_metered_minimum_config:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_with_metered_minimum
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class MatrixWithDisplayNamePrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::MatrixWithDisplayNamePrice::Item)
            .returns(Orb::Models::Price::MatrixWithDisplayNamePrice::Item)
        end
        def item=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def matrix_with_display_name_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def matrix_with_display_name_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::MatrixWithDisplayNamePrice::Item,
            matrix_with_display_name_config: T::Hash[Symbol, T.anything],
            maximum: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          matrix_with_display_name_config:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :matrix_with_display_name
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::MatrixWithDisplayNamePrice::Item,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                maximum: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class BulkWithProrationPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkWithProrationPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

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

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::BulkWithProrationPrice::Item)
            .returns(Orb::Models::Price::BulkWithProrationPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkWithProrationPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkWithProrationPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::BulkWithProrationPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration,
            bulk_with_proration_config: T::Hash[Symbol, T.anything],
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::BulkWithProrationPrice::Item,
            maximum: T.nilable(Orb::Models::Price::BulkWithProrationPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::BulkWithProrationPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          bulk_with_proration_config:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bulk_with_proration
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::BulkWithProrationPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration,
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::BulkWithProrationPrice::Item,
                maximum: T.nilable(Orb::Models::Price::BulkWithProrationPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::BulkWithProrationPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class GroupedTieredPackagePrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T::Hash[Symbol, T.anything]) }
        def grouped_tiered_package_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def grouped_tiered_package_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::GroupedTieredPackagePrice::Item)
            .returns(Orb::Models::Price::GroupedTieredPackagePrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_package_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::GroupedTieredPackagePrice::Item,
            maximum: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          grouped_tiered_package_config:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_tiered_package
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedTieredPackagePrice::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class MaxGroupTieredPackagePrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::MaxGroupTieredPackagePrice::Item)
            .returns(Orb::Models::Price::MaxGroupTieredPackagePrice::Item)
        end
        def item=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def max_group_tiered_package_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def max_group_tiered_package_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::MaxGroupTieredPackagePrice::Item,
            max_group_tiered_package_config: T::Hash[Symbol, T.anything],
            maximum: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          max_group_tiered_package_config:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :max_group_tiered_package
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::MaxGroupTieredPackagePrice::Item,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                maximum: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class ScalableMatrixWithUnitPricingPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item)
            .returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def scalable_matrix_with_unit_pricing_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def scalable_matrix_with_unit_pricing_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(
            _: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration)
          )
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item,
            maximum: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          scalable_matrix_with_unit_pricing_config:,
          dimensional_price_configuration: nil,
          model_type: :scalable_matrix_with_unit_pricing
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item,
                maximum: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class ScalableMatrixWithTieredPricingPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(
            _: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration)
          )
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item)
            .returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def scalable_matrix_with_tiered_pricing_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def scalable_matrix_with_tiered_pricing_config=(_)
        end

        sig do
          returns(
            T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration)
          )
        end
        def dimensional_price_configuration
        end

        sig do
          params(
            _: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration)
          )
            .returns(
              T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration)
            )
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item,
            maximum: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          scalable_matrix_with_tiered_pricing_config:,
          dimensional_price_configuration: nil,
          model_type: :scalable_matrix_with_tiered_pricing
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation),
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item,
                maximum: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class CumulativeGroupedBulkPrice < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric))
            .returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration)
            .returns(Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
        end

        sig { returns(T.nilable(Float)) }
        def conversion_rate
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def conversion_rate=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation)) }
        def credit_allocation
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation))
            .returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation))
        end
        def credit_allocation=(_)
        end

        sig { returns(T::Hash[Symbol, T.anything]) }
        def cumulative_grouped_bulk_config
        end

        sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
        def cumulative_grouped_bulk_config=(_)
        end

        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        def discount
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              )
            )
        end
        def discount=(_)
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

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration))
            .returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::Item) }
        def item
        end

        sig do
          params(_: Orb::Models::Price::CumulativeGroupedBulkPrice::Item)
            .returns(Orb::Models::Price::CumulativeGroupedBulkPrice::Item)
        end
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum)) }
        def maximum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum))
            .returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum))
        end
        def maximum=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def metadata
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def metadata=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum)) }
        def minimum
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum))
            .returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum))
        end
        def minimum=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
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

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(Symbol) }
        def price_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def price_type=(_)
        end

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration))
            .returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric),
            billing_cycle_configuration: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation),
            cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration),
            item: Orb::Models::Price::CumulativeGroupedBulkPrice::Item,
            maximum: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration),
            model_type: Symbol
          )
            .void
        end
        def initialize(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          cadence:,
          conversion_rate:,
          created_at:,
          credit_allocation:,
          cumulative_grouped_bulk_config:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          item:,
          maximum:,
          maximum_amount:,
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :cumulative_grouped_bulk
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation),
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                currency: String,
                discount: T.nilable(
                  T.any(
                    Orb::Models::PercentageDiscount,
                    Orb::Models::TrialDiscount,
                    Orb::Models::UsageDiscount,
                    Orb::Models::AmountDiscount
                  )
                ),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration),
                item: Orb::Models::Price::CumulativeGroupedBulkPrice::Item,
                maximum: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          def allows_rollover
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def allows_rollover=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def maximum_amount
          end

          sig { params(_: String).returns(String) }
          def maximum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(String) }
          def minimum_amount
          end

          sig { params(_: String).returns(String) }
          def minimum_amount=(_)
          end

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          def dimension_values
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def dimension_values=(_)
          end

          sig { returns(String) }
          def dimensional_price_group_id
          end

          sig { params(_: String).returns(String) }
          def dimensional_price_group_id=(_)
          end

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      class << self
        sig do
          override
            .returns(
              [[Symbol, Orb::Models::Price::UnitPrice], [Symbol, Orb::Models::Price::PackagePrice], [Symbol, Orb::Models::Price::MatrixPrice], [Symbol, Orb::Models::Price::TieredPrice], [Symbol, Orb::Models::Price::TieredBpsPrice], [Symbol, Orb::Models::Price::BpsPrice], [Symbol, Orb::Models::Price::BulkBpsPrice], [Symbol, Orb::Models::Price::BulkPrice], [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice], [Symbol, Orb::Models::Price::TieredPackagePrice], [Symbol, Orb::Models::Price::GroupedTieredPrice], [Symbol, Orb::Models::Price::TieredWithMinimumPrice], [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice], [Symbol, Orb::Models::Price::PackageWithAllocationPrice], [Symbol, Orb::Models::Price::UnitWithPercentPrice], [Symbol, Orb::Models::Price::MatrixWithAllocationPrice], [Symbol, Orb::Models::Price::TieredWithProrationPrice], [Symbol, Orb::Models::Price::UnitWithProrationPrice], [Symbol, Orb::Models::Price::GroupedAllocationPrice], [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice], [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice], [Symbol, Orb::Models::Price::BulkWithProrationPrice], [Symbol, Orb::Models::Price::GroupedTieredPackagePrice], [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice], [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice]]
            )
        end
        private def variants
        end
      end
    end
  end
end
