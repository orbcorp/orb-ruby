# typed: strong

module Orb
  module Models
    class NewSubscriptionPriceModel < Orb::Union
      abstract!

      class NewSubscriptionUnitPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::UnitConfigModel) }
        def unit_config
        end

        sig { params(_: Orb::Models::UnitConfigModel).returns(Orb::Models::UnitConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            unit_config: Orb::Models::UnitConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                unit_config: Orb::Models::UnitConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionPackagePrice < Orb::BaseModel
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

        sig { returns(Orb::Models::PackageConfigModel) }
        def package_config
        end

        sig { params(_: Orb::Models::PackageConfigModel).returns(Orb::Models::PackageConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            package_config: Orb::Models::PackageConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                package_config: Orb::Models::PackageConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionMatrixPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::MatrixConfigModel) }
        def matrix_config
        end

        sig { params(_: Orb::Models::MatrixConfigModel).returns(Orb::Models::MatrixConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            matrix_config: Orb::Models::MatrixConfigModel,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :matrix
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                item_id: String,
                matrix_config: Orb::Models::MatrixConfigModel,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionTieredPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::TieredConfigModel) }
        def tiered_config
        end

        sig { params(_: Orb::Models::TieredConfigModel).returns(Orb::Models::TieredConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            tiered_config: Orb::Models::TieredConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                tiered_config: Orb::Models::TieredConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionTieredBpsPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::TieredBpsConfigModel) }
        def tiered_bps_config
        end

        sig { params(_: Orb::Models::TieredBpsConfigModel).returns(Orb::Models::TieredBpsConfigModel) }
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            tiered_bps_config: Orb::Models::TieredBpsConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                tiered_bps_config: Orb::Models::TieredBpsConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionBpsPrice < Orb::BaseModel
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            bps_config: Orb::Models::BpsConfigModel,
            cadence: Symbol,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :bps
        )
        end

        sig do
          override
            .returns(
              {
                bps_config: Orb::Models::BpsConfigModel,
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionBulkBpsPrice < Orb::BaseModel
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            bulk_bps_config: Orb::Models::BulkBpsConfigModel,
            cadence: Symbol,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :bulk_bps
        )
        end

        sig do
          override
            .returns(
              {
                bulk_bps_config: Orb::Models::BulkBpsConfigModel,
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionBulkPrice < Orb::BaseModel
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            bulk_config: Orb::Models::BulkConfigModel,
            cadence: Symbol,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :bulk
        )
        end

        sig do
          override
            .returns(
              {
                bulk_config: Orb::Models::BulkConfigModel,
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def threshold_total_amount_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            threshold_total_amount_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                threshold_total_amount_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionTieredPackagePrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def tiered_package_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def tiered_with_minimum_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            tiered_with_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                tiered_with_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def unit_with_percent_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            unit_with_percent_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                unit_with_percent_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def package_with_allocation_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            package_with_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                package_with_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def tiered_with_proration_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            tiered_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                tiered_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def unit_with_proration_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            unit_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                unit_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            grouped_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :grouped_allocation
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                grouped_allocation_config: Orb::Models::CustomRatingFunctionConfigModel,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            grouped_with_prorated_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :grouped_with_prorated_minimum
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                grouped_with_prorated_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            bulk_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
            cadence: Symbol,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :bulk_with_proration
        )
        end

        sig do
          override
            .returns(
              {
                bulk_with_proration_config: Orb::Models::CustomRatingFunctionConfigModel,
                cadence: Symbol,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def scalable_matrix_with_unit_pricing_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            scalable_matrix_with_unit_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                scalable_matrix_with_unit_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def scalable_matrix_with_tiered_pricing_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            name: String,
            scalable_matrix_with_tiered_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
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
                scalable_matrix_with_tiered_pricing_config: Orb::Models::CustomRatingFunctionConfigModel,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            cumulative_grouped_bulk_config: Orb::Models::CustomRatingFunctionConfigModel,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :cumulative_grouped_bulk
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                cumulative_grouped_bulk_config: Orb::Models::CustomRatingFunctionConfigModel,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def max_group_tiered_package_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            max_group_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :max_group_tiered_package
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                item_id: String,
                max_group_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            grouped_with_metered_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :grouped_with_metered_minimum
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                grouped_with_metered_minimum_config: Orb::Models::CustomRatingFunctionConfigModel,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
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

        sig { returns(Orb::Models::CustomRatingFunctionConfigModel) }
        def matrix_with_display_name_config
        end

        sig do
          params(_: Orb::Models::CustomRatingFunctionConfigModel)
            .returns(Orb::Models::CustomRatingFunctionConfigModel)
        end
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            item_id: String,
            matrix_with_display_name_config: Orb::Models::CustomRatingFunctionConfigModel,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :matrix_with_display_name
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                item_id: String,
                matrix_with_display_name_config: Orb::Models::CustomRatingFunctionConfigModel,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
        sig { returns(Symbol) }
        def cadence
        end

        sig { params(_: Symbol).returns(Symbol) }
        def cadence=(_)
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def billing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel)) }
        def invoicing_cycle_configuration
        end

        sig do
          params(_: T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
            .returns(T.nilable(Orb::Models::NewBillingCycleConfigurationModel))
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

        sig { returns(T.nilable(String)) }
        def reference_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reference_id=(_)
        end

        sig do
          params(
            cadence: Symbol,
            grouped_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
            item_id: String,
            name: String,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            conversion_rate: T.nilable(Float),
            currency: T.nilable(String),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String),
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
          reference_id: nil,
          model_type: :grouped_tiered_package
        )
        end

        sig do
          override
            .returns(
              {
                cadence: Symbol,
                grouped_tiered_package_config: Orb::Models::CustomRatingFunctionConfigModel,
                item_id: String,
                model_type: Symbol,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::NewBillingCycleConfigurationModel),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String)
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
      end

      sig do
        override
          .returns(
            [[Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice], [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
