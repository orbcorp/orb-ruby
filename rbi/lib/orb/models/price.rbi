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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::UnitConfigModel) }
        def unit_config
        end

        sig { params(_: Orb::Models::UnitConfigModel).returns(Orb::Models::UnitConfigModel) }
        def unit_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            unit_config: Orb::Models::UnitConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                unit_config: Orb::Models::UnitConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::PackageConfigModel) }
        def package_config
        end

        sig { params(_: Orb::Models::PackageConfigModel).returns(Orb::Models::PackageConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            package_config: Orb::Models::PackageConfigModel,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                package_config: Orb::Models::PackageConfigModel,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(Orb::Models::MatrixConfigModel) }
        def matrix_config
        end

        sig { params(_: Orb::Models::MatrixConfigModel).returns(Orb::Models::MatrixConfigModel) }
        def matrix_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            matrix_config: Orb::Models::MatrixConfigModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                matrix_config: Orb::Models::MatrixConfigModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::TieredConfigModel) }
        def tiered_config
        end

        sig { params(_: Orb::Models::TieredConfigModel).returns(Orb::Models::TieredConfigModel) }
        def tiered_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_config: Orb::Models::TieredConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_config: Orb::Models::TieredConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::TieredBpsConfigModel) }
        def tiered_bps_config
        end

        sig { params(_: Orb::Models::TieredBpsConfigModel).returns(Orb::Models::TieredBpsConfigModel) }
        def tiered_bps_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_bps_config: Orb::Models::TieredBpsConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_bps_config: Orb::Models::TieredBpsConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::BpsConfigModel) }
        def bps_config
        end

        sig { params(_: Orb::Models::BpsConfigModel).returns(Orb::Models::BpsConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            bps_config: Orb::Models::BpsConfigModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                bps_config: Orb::Models::BpsConfigModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::BulkBpsConfigModel) }
        def bulk_bps_config
        end

        sig { params(_: Orb::Models::BulkBpsConfigModel).returns(Orb::Models::BulkBpsConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            bulk_bps_config: Orb::Models::BulkBpsConfigModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                bulk_bps_config: Orb::Models::BulkBpsConfigModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::BulkConfigModel) }
        def bulk_config
        end

        sig { params(_: Orb::Models::BulkConfigModel).returns(Orb::Models::BulkConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            bulk_config: Orb::Models::BulkConfigModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                bulk_config: Orb::Models::BulkConfigModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def threshold_total_amount_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def threshold_total_amount_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            threshold_total_amount_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                threshold_total_amount_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def tiered_package_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def tiered_package_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def grouped_tiered_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def grouped_tiered_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            grouped_tiered_config: Orb::Models::CustomRatingFunctionConfigModel,
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                grouped_tiered_config: Orb::Models::CustomRatingFunctionConfigModel,
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def tiered_with_minimum_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def tiered_with_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_with_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_with_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def tiered_package_with_minimum_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def tiered_package_with_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_package_with_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_package_with_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def package_with_allocation_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            package_with_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                package_with_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def unit_with_percent_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def unit_with_percent_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            unit_with_percent_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                unit_with_percent_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(Orb::Models::MatrixWithAllocationConfigModel) }
        def matrix_with_allocation_config
        end

        sig do
          params(_: Orb::Models::MatrixWithAllocationConfigModel)
            .returns(Orb::Models::MatrixWithAllocationConfigModel)
        end
        def matrix_with_allocation_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            matrix_with_allocation_config: Orb::Models::MatrixWithAllocationConfigModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                matrix_with_allocation_config: Orb::Models::MatrixWithAllocationConfigModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def tiered_with_proration_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def tiered_with_proration_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            tiered_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                tiered_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def unit_with_proration_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def unit_with_proration_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            unit_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                unit_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def grouped_allocation_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def grouped_allocation_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            grouped_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                grouped_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def grouped_with_prorated_minimum_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def grouped_with_prorated_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            grouped_with_prorated_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                grouped_with_prorated_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def grouped_with_metered_minimum_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def grouped_with_metered_minimum_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            grouped_with_metered_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                grouped_with_metered_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def matrix_with_display_name_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def matrix_with_display_name_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            matrix_with_display_name_config: Orb::Models::CustomRatingFunctionConfigModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                matrix_with_display_name_config: Orb::Models::CustomRatingFunctionConfigModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
        end
        def billing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def bulk_with_proration_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            bulk_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                bulk_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def grouped_tiered_package_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def grouped_tiered_package_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            grouped_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                grouped_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def max_group_tiered_package_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def max_group_tiered_package_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            max_group_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                max_group_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def scalable_matrix_with_unit_pricing_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def scalable_matrix_with_unit_pricing_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            scalable_matrix_with_unit_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                scalable_matrix_with_unit_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def scalable_matrix_with_tiered_pricing_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
        def scalable_matrix_with_tiered_pricing_config=(_)
        end

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            scalable_matrix_with_tiered_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                scalable_matrix_with_tiered_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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

        sig { returns(T.nilable(Orb::Models::BillableMetricTinyModel)) }
        def billable_metric
        end

        sig do
          params(_: T.nilable(Orb::Models::BillableMetricTinyModel))
            .returns(T.nilable(Orb::Models::BillableMetricTinyModel))
        end
        def billable_metric=(_)
        end

        sig { returns(Orb::Models::BillingCycleConfigurationModel) }
        def billing_cycle_configuration
        end

        sig do
          params(_: Orb::Models::BillingCycleConfigurationModel).returns(Orb::Models::BillingCycleConfigurationModel)
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

        sig { returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation
        end

        sig { params(_: T.nilable(Orb::Models::AllocationModel)).returns(T.nilable(Orb::Models::AllocationModel)) }
        def credit_allocation=(_)
        end

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def cumulative_grouped_bulk_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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
                Orb::Models::Discount::UsageDiscount,
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
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            )
          )
            .returns(
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

        sig { returns(T.nilable(Orb::Models::BillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::BillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::BillingCycleConfigurationModel))
        end
        def invoicing_cycle_configuration=(_)
        end

        sig { returns(Orb::Models::ItemSlimModel) }
        def item
        end

        sig { params(_: Orb::Models::ItemSlimModel).returns(Orb::Models::ItemSlimModel) }
        def item=(_)
        end

        sig { returns(T.nilable(Orb::Models::MaximumModel)) }
        def maximum
        end

        sig { params(_: T.nilable(Orb::Models::MaximumModel)).returns(T.nilable(Orb::Models::MaximumModel)) }
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

        sig { returns(T.nilable(Orb::Models::MinimumModel)) }
        def minimum
        end

        sig { params(_: T.nilable(Orb::Models::MinimumModel)).returns(T.nilable(Orb::Models::MinimumModel)) }
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

        sig { returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel)) }
        def dimensional_price_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
            .returns(T.nilable(Orb::Models::DimensionalPriceConfigurationModel))
        end
        def dimensional_price_configuration=(_)
        end

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
            billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
            cadence: Symbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Models::AllocationModel),
            cumulative_grouped_bulk_config: Orb::Models::CustomRatingFunctionConfigModel,
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
            invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
            item: Orb::Models::ItemSlimModel,
            maximum: T.nilable(Orb::Models::MaximumModel),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::MinimumModel),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Symbol,
            dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel),
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
                billable_metric: T.nilable(Orb::Models::BillableMetricTinyModel),
                billing_cycle_configuration: Orb::Models::BillingCycleConfigurationModel,
                cadence: Symbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::AllocationModel),
                cumulative_grouped_bulk_config: Orb::Models::CustomRatingFunctionConfigModel,
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::BillingCycleConfigurationModel),
                item: Orb::Models::ItemSlimModel,
                maximum: T.nilable(Orb::Models::MaximumModel),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::MinimumModel),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Symbol,
                dimensional_price_configuration: T.nilable(Orb::Models::DimensionalPriceConfigurationModel)
              }
            )
        end
        def to_hash
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

        class PriceType < Orb::Enum
          abstract!

          USAGE_PRICE = :usage_price
          FIXED_PRICE = :fixed_price

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      sig do
        override
          .returns(
            [[Symbol, Orb::Models::Price::UnitPrice], [Symbol, Orb::Models::Price::PackagePrice], [Symbol, Orb::Models::Price::MatrixPrice], [Symbol, Orb::Models::Price::TieredPrice], [Symbol, Orb::Models::Price::TieredBpsPrice], [Symbol, Orb::Models::Price::BpsPrice], [Symbol, Orb::Models::Price::BulkBpsPrice], [Symbol, Orb::Models::Price::BulkPrice], [Symbol, Orb::Models::Price::ThresholdTotalAmountPrice], [Symbol, Orb::Models::Price::TieredPackagePrice], [Symbol, Orb::Models::Price::GroupedTieredPrice], [Symbol, Orb::Models::Price::TieredWithMinimumPrice], [Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice], [Symbol, Orb::Models::Price::PackageWithAllocationPrice], [Symbol, Orb::Models::Price::UnitWithPercentPrice], [Symbol, Orb::Models::Price::MatrixWithAllocationPrice], [Symbol, Orb::Models::Price::TieredWithProrationPrice], [Symbol, Orb::Models::Price::UnitWithProrationPrice], [Symbol, Orb::Models::Price::GroupedAllocationPrice], [Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice], [Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice], [Symbol, Orb::Models::Price::BulkWithProrationPrice], [Symbol, Orb::Models::Price::GroupedTieredPackagePrice], [Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice], [Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
