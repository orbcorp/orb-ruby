# typed: strong

module Orb
  module Models
    class Price < Orb::Union
      abstract!

      class UnitPrice < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::UnitPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::UnitPrice::UnitConfig) }
        attr_accessor :unit_config

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::PackagePrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::PackagePrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Orb::Models::Price::PackagePrice::PackageConfig) }
        attr_accessor :package_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::MatrixPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixPrice::Item) }
        attr_accessor :item

        sig { returns(Orb::Models::Price::MatrixPrice::MatrixConfig) }
        attr_accessor :matrix_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class MatrixConfig < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :default_unit_amount

          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimensions

          sig { returns(T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]) }
          attr_accessor :matrix_values

          sig do
            params(
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]
            ).void
          end
          def initialize(default_unit_amount:, dimensions:, matrix_values:)
          end

          sig do
            override.returns(
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

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::TieredPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::TieredPrice::TieredConfig) }
        attr_accessor :tiered_config

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class TieredConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]) }
          attr_accessor :tiers

          sig { params(tiers: T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]}) }
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

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredBpsPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::TieredBpsPrice::TieredBpsConfig) }
        attr_accessor :tiered_bps_config

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class TieredBpsConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]) }
          attr_accessor :tiers

          sig { params(tiers: T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig do
            override.returns({tiers: T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]})
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

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::BpsPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Orb::Models::Price::BpsPrice::BpsConfig) }
        attr_accessor :bps_config

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BpsPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkBpsPrice::BulkBpsConfig) }
        attr_accessor :bulk_bps_config

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkBpsPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class BulkBpsConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]) }
          attr_accessor :tiers

          sig { params(tiers: T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]}) }
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::BulkPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkPrice::BulkConfig) }
        attr_accessor :bulk_config

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class BulkConfig < Orb::BaseModel
          sig { returns(T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]) }
          attr_accessor :tiers

          sig { params(tiers: T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]).void }
          def initialize(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]}) }
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

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :threshold_total_amount_config

        sig do
          returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackagePrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_tiered_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_with_minimum_config

        sig do
          returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :package_with_allocation_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_percent_config

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::Item) }
        attr_accessor :item

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig) }
        attr_accessor :matrix_with_allocation_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class MatrixWithAllocationConfig < Orb::BaseModel
          sig { returns(Float) }
          attr_accessor :allocation

          sig { returns(String) }
          attr_accessor :default_unit_amount

          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimensions

          sig do
            returns(T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue])
          end
          attr_accessor :matrix_values

          sig do
            params(
              allocation: Float,
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
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
                matrix_values: T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
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

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_proration_config

        sig do
          returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_proration_config

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_allocation_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_with_prorated_minimum_config

        sig do
          returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_with_metered_minimum_config

        sig do
          returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::Item) }
        attr_accessor :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :matrix_with_display_name_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :bulk_with_proration_config

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration)) }
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration)) }
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::Item) }
        attr_accessor :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :max_group_tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_unit_pricing_config

        sig do
          returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_tiered_pricing_config

        sig do
          returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

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
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric)) }
        attr_accessor :billable_metric

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration) }
        attr_accessor :billing_cycle_configuration

        sig { returns(Symbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation)) }
        attr_accessor :credit_allocation

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :cumulative_grouped_bulk_config

        sig { returns(String) }
        attr_accessor :currency

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
        end
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration))
        end
        attr_accessor :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::Item) }
        attr_accessor :item

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Symbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration))
        end
        attr_accessor :dimensional_price_configuration

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
                Orb::Models::Discount::UsageDiscount,
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
          ).void
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
          override.returns(
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
                  Orb::Models::Discount::UsageDiscount,
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
          attr_accessor :id

          sig { params(id: String).void }
          def initialize(id:)
          end

          sig { override.returns({id: String}) }
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

        class Cadence < Orb::Enum
          abstract!

          ONE_TIME = :one_time
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual
          CUSTOM = :custom

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).void }
          def initialize(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
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

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig { params(dimension_values: T::Array[String], dimensional_price_group_id: String).void }
          def initialize(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      sig do
        override.returns(
          [
            [Symbol, Orb::Models::Price::UnitPrice],
            [Symbol, Orb::Models::Price::PackagePrice],
            [Symbol, Orb::Models::Price::MatrixPrice],
            [Symbol, Orb::Models::Price::TieredPrice],
            [Symbol, Orb::Models::Price::TieredBpsPrice],
            [Symbol, Orb::Models::Price::BpsPrice],
            [Symbol, Orb::Models::Price::BulkBpsPrice],
            [Symbol, Orb::Models::Price::BulkPrice],
            [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice],
            [Symbol, Orb::Models::Price::TieredPackagePrice],
            [Symbol, Orb::Models::Price::GroupedTieredPrice],
            [Symbol, Orb::Models::Price::TieredWithMinimumPrice],
            [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice],
            [Symbol, Orb::Models::Price::PackageWithAllocationPrice],
            [Symbol, Orb::Models::Price::UnitWithPercentPrice],
            [Symbol, Orb::Models::Price::MatrixWithAllocationPrice],
            [Symbol, Orb::Models::Price::TieredWithProrationPrice],
            [Symbol, Orb::Models::Price::UnitWithProrationPrice],
            [Symbol, Orb::Models::Price::GroupedAllocationPrice],
            [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice],
            [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice],
            [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice],
            [Symbol, Orb::Models::Price::BulkWithProrationPrice],
            [Symbol, Orb::Models::Price::GroupedTieredPackagePrice],
            [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice],
            [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice],
            [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice],
            [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice]
          ]
        )
      end
      private_class_method def self.variants
      end
    end
  end
end
