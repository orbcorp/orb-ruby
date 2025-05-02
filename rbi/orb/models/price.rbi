# typed: strong

module Orb
  module Models
    # The Price resource represents a price that can be billed on a subscription,
    # resulting in a charge on an invoice in the form of an invoice line item. Prices
    # take a quantity and determine an amount to bill.
    #
    # Orb supports a few different pricing models out of the box. Each of these models
    # is serialized differently in a given Price object. The model_type field
    # determines the key for the configuration object that is present.
    #
    # For more on the types of prices, see
    # [the core concepts documentation](/core-concepts#plan-and-price)
    module Price
      extend Orb::Internal::Type::Union

      class Unit < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::Unit::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::Unit::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::Unit::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::Unit::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::Unit::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::Unit::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Unit::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::Unit::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Unit::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::Unit::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::Unit::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::Unit::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::Unit::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::Unit::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::Unit::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::Unit::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::Unit::UnitConfig) }
        attr_reader :unit_config

        sig { params(unit_config: T.any(Orb::Models::Price::Unit::UnitConfig, Orb::Internal::AnyHash)).void }
        attr_writer :unit_config

        sig { returns(T.nilable(Orb::Models::Price::Unit::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Unit::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::Unit::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::Unit::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::Unit::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Unit::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Unit::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::Unit::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::Unit::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::Unit::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::Unit::PriceType::OrSymbol,
            unit_config: T.any(Orb::Models::Price::Unit::UnitConfig, Orb::Internal::AnyHash),
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Unit::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          unit_config:,
          dimensional_price_configuration: nil,
          model_type: :unit
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::Unit::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::Unit::BillingCycleConfiguration,
                cadence: Orb::Models::Price::Unit::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::Unit::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::Unit::InvoicingCycleConfiguration),
                item: Orb::Models::Price::Unit::Item,
                maximum: T.nilable(Orb::Models::Price::Unit::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::Unit::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::Unit::PriceType::TaggedSymbol,
                unit_config: Orb::Models::Price::Unit::UnitConfig,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::Unit::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override.returns(T::Array[Orb::Models::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Unit::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::Unit::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::Unit::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::Unit::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::Unit::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::Unit::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::Unit::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Unit::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Unit::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::Unit::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::Unit::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Unit::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class UnitConfig < Orb::Internal::Type::BaseModel
          # Rate per unit of usage
          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(unit_amount: String).returns(T.attached_class) }
          def self.new(
            # Rate per unit of usage
            unit_amount:
          ); end
          sig { override.returns({unit_amount: String}) }
          def to_hash; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class Package < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::Package::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::Package::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::Package::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::Package::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::Package::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::Package::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Package::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::Package::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Package::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::Package::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::Package::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::Package::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::Package::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::Package::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::Package::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Orb::Models::Price::Package::PackageConfig) }
        attr_reader :package_config

        sig { params(package_config: T.any(Orb::Models::Price::Package::PackageConfig, Orb::Internal::AnyHash)).void }
        attr_writer :package_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::Package::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::Package::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Package::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::Package::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::Package::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::Package::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Package::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Package::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::Package::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::Package::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::Package::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            package_config: T.any(Orb::Models::Price::Package::PackageConfig, Orb::Internal::AnyHash),
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::Package::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Package::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          package_config:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :package
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::Package::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::Package::BillingCycleConfiguration,
                cadence: Orb::Models::Price::Package::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::Package::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::Package::InvoicingCycleConfiguration),
                item: Orb::Models::Price::Package::Item,
                maximum: T.nilable(Orb::Models::Price::Package::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::Package::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                package_config: Orb::Models::Price::Package::PackageConfig,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::Package::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::Package::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Package::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::Package::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::Package::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::Package::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::Package::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::Package::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::Package::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Package::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        class PackageConfig < Orb::Internal::Type::BaseModel
          # A currency amount to rate usage by
          sig { returns(String) }
          attr_accessor :package_amount

          # An integer amount to represent package size. For example, 1000 here would divide
          # usage by 1000 before multiplying by package_amount in rating
          sig { returns(Integer) }
          attr_accessor :package_size

          sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
          def self.new(
            # A currency amount to rate usage by
            package_amount:,
            # An integer amount to represent package size. For example, 1000 here would divide
            # usage by 1000 before multiplying by package_amount in rating
            package_size:
          ); end
          sig { override.returns({package_amount: String, package_size: Integer}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Package::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::Package::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::Package::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Package::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class Matrix < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::Matrix::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::Matrix::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::Matrix::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::Matrix::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::Matrix::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::Matrix::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Matrix::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::Matrix::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Matrix::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::Matrix::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::Matrix::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(Orb::Models::Price::Matrix::MatrixConfig) }
        attr_reader :matrix_config

        sig { params(matrix_config: T.any(Orb::Models::Price::Matrix::MatrixConfig, Orb::Internal::AnyHash)).void }
        attr_writer :matrix_config

        sig { returns(T.nilable(Orb::Models::Price::Matrix::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::Matrix::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::Matrix::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::Matrix::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::Matrix::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::Matrix::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Matrix::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::Matrix::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::Matrix::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::Matrix::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Matrix::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Matrix::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::Matrix::Item, Orb::Internal::AnyHash),
            matrix_config: T.any(Orb::Models::Price::Matrix::MatrixConfig, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::Matrix::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::Matrix::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::Matrix::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Matrix::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :matrix
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::Matrix::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::Matrix::BillingCycleConfiguration,
                cadence: Orb::Models::Price::Matrix::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::Matrix::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::Matrix::InvoicingCycleConfiguration),
                item: Orb::Models::Price::Matrix::Item,
                matrix_config: Orb::Models::Price::Matrix::MatrixConfig,
                maximum: T.nilable(Orb::Models::Price::Matrix::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::Matrix::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::Matrix::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::Matrix::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Matrix::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::Matrix::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::Matrix::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::Matrix::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::Matrix::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::Matrix::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::Matrix::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Matrix::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
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
          sig { returns(T::Array[Orb::Models::Price::Matrix::MatrixConfig::MatrixValue]) }
          attr_accessor :matrix_values

          sig do
            params(
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[T.any(Orb::Models::Price::Matrix::MatrixConfig::MatrixValue, Orb::Internal::AnyHash)]
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Default per unit rate for any usage not bucketed into a specified matrix_value
            default_unit_amount:,
            # One or two event property values to evaluate matrix groups by
            dimensions:,
            # Matrix values for specified matrix grouping keys
            matrix_values:
          ); end
          sig do
            override
              .returns(
                {
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::Price::Matrix::MatrixConfig::MatrixValue]
                }
              )
          end
          def to_hash; end

          class MatrixValue < Orb::Internal::Type::BaseModel
            # One or two matrix keys to filter usage to this Matrix value by. For example,
            # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            # instance tier.
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
            def self.new(
              # One or two matrix keys to filter usage to this Matrix value by. For example,
              # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
              # instance tier.
              dimension_values:,
              # Unit price for the specified dimension_values
              unit_amount:
            ); end
            sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
            def to_hash; end
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Matrix::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::Matrix::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::Matrix::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Matrix::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class Tiered < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::Tiered::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::Tiered::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::Tiered::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::Tiered::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::Tiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::Tiered::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Tiered::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::Tiered::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Tiered::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::Tiered::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::Tiered::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::Tiered::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::Tiered::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::Tiered::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::Tiered::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::Tiered::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::Tiered::TieredConfig) }
        attr_reader :tiered_config

        sig { params(tiered_config: T.any(Orb::Models::Price::Tiered::TieredConfig, Orb::Internal::AnyHash)).void }
        attr_writer :tiered_config

        sig { returns(T.nilable(Orb::Models::Price::Tiered::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Tiered::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::Tiered::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::Tiered::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::Tiered::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Tiered::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Tiered::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::Tiered::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::Tiered::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::Tiered::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::Tiered::PriceType::OrSymbol,
            tiered_config: T.any(Orb::Models::Price::Tiered::TieredConfig, Orb::Internal::AnyHash),
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Tiered::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::Tiered::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::Tiered::BillingCycleConfiguration,
                cadence: Orb::Models::Price::Tiered::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::Tiered::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::Tiered::InvoicingCycleConfiguration),
                item: Orb::Models::Price::Tiered::Item,
                maximum: T.nilable(Orb::Models::Price::Tiered::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::Tiered::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::Tiered::PriceType::TaggedSymbol,
                tiered_config: Orb::Models::Price::Tiered::TieredConfig,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::Tiered::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Tiered::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::Tiered::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::Tiered::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::Tiered::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::Tiered::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::Tiered::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::Tiered::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Tiered::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Tiered::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::Tiered::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::Tiered::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Tiered::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class TieredConfig < Orb::Internal::Type::BaseModel
          # Tiers for rating based on total usage quantities into the specified tier
          sig { returns(T::Array[Orb::Models::Price::Tiered::TieredConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(tiers: T::Array[T.any(Orb::Models::Price::Tiered::TieredConfig::Tier, Orb::Internal::AnyHash)])
              .returns(T.attached_class)
          end
          def self.new(
            # Tiers for rating based on total usage quantities into the specified tier
            tiers:
          ); end
          sig { override.returns({tiers: T::Array[Orb::Models::Price::Tiered::TieredConfig::Tier]}) }
          def to_hash; end

          class Tier < Orb::Internal::Type::BaseModel
            # Exclusive tier starting value
            sig { returns(Float) }
            attr_accessor :first_unit

            # Amount per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # Inclusive tier ending value. If null, this is treated as the last tier
            sig { returns(T.nilable(Float)) }
            attr_accessor :last_unit

            sig do
              params(
                first_unit: Float,
                unit_amount: String,
                last_unit: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Exclusive tier starting value
              first_unit:,
              # Amount per unit
              unit_amount:,
              # Inclusive tier ending value. If null, this is treated as the last tier
              last_unit: nil
            ); end
            sig { override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)}) }
            def to_hash; end
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class TieredBps < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredBps::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredBps::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredBps::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredBps::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredBps::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredBps::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredBps::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredBps::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredBps::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredBps::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredBps::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredBps::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::TieredBps::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredBps::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::TieredBps::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredBps::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::TieredBps::TieredBpsConfig) }
        attr_reader :tiered_bps_config

        sig do
          params(tiered_bps_config: T.any(Orb::Models::Price::TieredBps::TieredBpsConfig, Orb::Internal::AnyHash))
            .void
        end
        attr_writer :tiered_bps_config

        sig { returns(T.nilable(Orb::Models::Price::TieredBps::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredBps::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredBps::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredBps::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::TieredBps::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredBps::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredBps::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::TieredBps::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredBps::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredBps::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredBps::PriceType::OrSymbol,
            tiered_bps_config: T.any(Orb::Models::Price::TieredBps::TieredBpsConfig, Orb::Internal::AnyHash),
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredBps::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_bps_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_bps
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredBps::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredBps::BillingCycleConfiguration,
                cadence: Orb::Models::Price::TieredBps::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredBps::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredBps::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredBps::Item,
                maximum: T.nilable(Orb::Models::Price::TieredBps::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredBps::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::TieredBps::PriceType::TaggedSymbol,
                tiered_bps_config: Orb::Models::Price::TieredBps::TieredBpsConfig,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredBps::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBps::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredBps::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredBps::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredBps::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredBps::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredBps::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredBps::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredBps::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBps::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredBps::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredBps::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredBps::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class TieredBpsConfig < Orb::Internal::Type::BaseModel
          # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          # tiers
          sig { returns(T::Array[Orb::Models::Price::TieredBps::TieredBpsConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(
              tiers: T::Array[T.any(Orb::Models::Price::TieredBps::TieredBpsConfig::Tier, Orb::Internal::AnyHash)]
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
            # tiers
            tiers:
          ); end
          sig { override.returns({tiers: T::Array[Orb::Models::Price::TieredBps::TieredBpsConfig::Tier]}) }
          def to_hash; end

          class Tier < Orb::Internal::Type::BaseModel
            # Per-event basis point rate
            sig { returns(Float) }
            attr_accessor :bps

            # Exclusive tier starting value
            sig { returns(String) }
            attr_accessor :minimum_amount

            # Inclusive tier ending value
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
            def self.new(
              # Per-event basis point rate
              bps:,
              # Exclusive tier starting value
              minimum_amount:,
              # Inclusive tier ending value
              maximum_amount: nil,
              # Per unit maximum to charge
              per_unit_maximum: nil
            ); end
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

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class Bps < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::Bps::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(billable_metric: T.nilable(T.any(Orb::Models::Price::Bps::BillableMetric, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::Bps::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::Bps::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::Bps::BpsConfig) }
        attr_reader :bps_config

        sig { params(bps_config: T.any(Orb::Models::Price::Bps::BpsConfig, Orb::Internal::AnyHash)).void }
        attr_writer :bps_config

        sig { returns(Orb::Models::Price::Bps::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::Bps::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Bps::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::Bps::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Bps::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::Bps::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::Bps::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::Bps::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::Bps::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::Bps::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::Bps::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::Bps::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::Bps::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Bps::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::Bps::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::Bps::BillingCycleConfiguration, Orb::Internal::AnyHash),
            bps_config: T.any(Orb::Models::Price::Bps::BpsConfig, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::Bps::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Bps::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Bps::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::Bps::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::Bps::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::Bps::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::Bps::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Bps::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bps
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::Bps::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::Bps::BillingCycleConfiguration,
                bps_config: Orb::Models::Price::Bps::BpsConfig,
                cadence: Orb::Models::Price::Bps::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::Bps::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::Bps::InvoicingCycleConfiguration),
                item: Orb::Models::Price::Bps::Item,
                maximum: T.nilable(Orb::Models::Price::Bps::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::Bps::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::Bps::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::Bps::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig { override.returns(T::Array[Orb::Models::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol]) }
            def self.values; end
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
          def self.new(
            # Basis point take rate per event
            bps:,
            # Optional currency amount maximum to cap spend per event
            per_unit_maximum: nil
          ); end
          sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
          def to_hash; end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Bps::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::Bps::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::Bps::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::Bps::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::Bps::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::Bps::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::Bps::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Bps::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Bps::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::Bps::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::Bps::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Bps::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class BulkBps < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::BulkBps::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkBps::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::BulkBps::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkBps::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkBps::BulkBpsConfig) }
        attr_reader :bulk_bps_config

        sig { params(bulk_bps_config: T.any(Orb::Models::Price::BulkBps::BulkBpsConfig, Orb::Internal::AnyHash)).void }
        attr_writer :bulk_bps_config

        sig { returns(Orb::Models::Price::BulkBps::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkBps::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkBps::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::BulkBps::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BulkBps::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkBps::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::BulkBps::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::BulkBps::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::BulkBps::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkBps::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::BulkBps::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::BulkBps::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkBps::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BulkBps::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkBps::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkBps::BillingCycleConfiguration, Orb::Internal::AnyHash),
            bulk_bps_config: T.any(Orb::Models::Price::BulkBps::BulkBpsConfig, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::BulkBps::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkBps::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BulkBps::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::BulkBps::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::BulkBps::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::BulkBps::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::BulkBps::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BulkBps::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bulk_bps
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::BulkBps::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::BulkBps::BillingCycleConfiguration,
                bulk_bps_config: Orb::Models::Price::BulkBps::BulkBpsConfig,
                cadence: Orb::Models::Price::BulkBps::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::BulkBps::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkBps::InvoicingCycleConfiguration),
                item: Orb::Models::Price::BulkBps::Item,
                maximum: T.nilable(Orb::Models::Price::BulkBps::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::BulkBps::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::BulkBps::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkBps::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class BulkBpsConfig < Orb::Internal::Type::BaseModel
          # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          # tier based on total volume
          sig { returns(T::Array[Orb::Models::Price::BulkBps::BulkBpsConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(tiers: T::Array[T.any(Orb::Models::Price::BulkBps::BulkBpsConfig::Tier, Orb::Internal::AnyHash)])
              .returns(T.attached_class)
          end
          def self.new(
            # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
            # tier based on total volume
            tiers:
          ); end
          sig { override.returns({tiers: T::Array[Orb::Models::Price::BulkBps::BulkBpsConfig::Tier]}) }
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
            def self.new(
              # Basis points to rate on
              bps:,
              # Upper bound for tier
              maximum_amount: nil,
              # The maximum amount to charge for any one event
              per_unit_maximum: nil
            ); end
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

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBps::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::BulkBps::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::BulkBps::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::BulkBps::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::BulkBps::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::BulkBps::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::BulkBps::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkBps::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBps::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::BulkBps::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::BulkBps::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkBps::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class Bulk < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::Bulk::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::Bulk::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::Bulk::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::Bulk::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::Bulk::BulkConfig) }
        attr_reader :bulk_config

        sig { params(bulk_config: T.any(Orb::Models::Price::Bulk::BulkConfig, Orb::Internal::AnyHash)).void }
        attr_writer :bulk_config

        sig { returns(Orb::Models::Price::Bulk::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::Bulk::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Bulk::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::Bulk::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Bulk::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::Bulk::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::Bulk::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::Bulk::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::Bulk::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::Bulk::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::Bulk::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::Bulk::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::Bulk::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Bulk::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::Bulk::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::Bulk::BillingCycleConfiguration, Orb::Internal::AnyHash),
            bulk_config: T.any(Orb::Models::Price::Bulk::BulkConfig, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::Bulk::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::Bulk::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::Bulk::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::Bulk::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::Bulk::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::Bulk::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::Bulk::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::Bulk::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bulk
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::Bulk::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::Bulk::BillingCycleConfiguration,
                bulk_config: Orb::Models::Price::Bulk::BulkConfig,
                cadence: Orb::Models::Price::Bulk::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::Bulk::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::Bulk::InvoicingCycleConfiguration),
                item: Orb::Models::Price::Bulk::Item,
                maximum: T.nilable(Orb::Models::Price::Bulk::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::Bulk::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::Bulk::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::Bulk::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override.returns(T::Array[Orb::Models::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class BulkConfig < Orb::Internal::Type::BaseModel
          # Bulk tiers for rating based on total usage volume
          sig { returns(T::Array[Orb::Models::Price::Bulk::BulkConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(tiers: T::Array[T.any(Orb::Models::Price::Bulk::BulkConfig::Tier, Orb::Internal::AnyHash)])
              .returns(T.attached_class)
          end
          def self.new(
            # Bulk tiers for rating based on total usage volume
            tiers:
          ); end
          sig { override.returns({tiers: T::Array[Orb::Models::Price::Bulk::BulkConfig::Tier]}) }
          def to_hash; end

          class Tier < Orb::Internal::Type::BaseModel
            # Amount per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # Upper bound for this tier
            sig { returns(T.nilable(Float)) }
            attr_accessor :maximum_units

            sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
            def self.new(
              # Amount per unit
              unit_amount:,
              # Upper bound for this tier
              maximum_units: nil
            ); end
            sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
            def to_hash; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Bulk::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::Bulk::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::Bulk::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::Bulk::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::Bulk::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::Bulk::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::Bulk::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Bulk::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY = T.let(:day, Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH = T.let(:month, Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::Bulk::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::Bulk::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::Bulk::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::Bulk::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmount::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmount::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ThresholdTotalAmount::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::ThresholdTotalAmount::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmount::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmount::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::ThresholdTotalAmount::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :threshold_total_amount_config

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmount::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::ThresholdTotalAmount::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::ThresholdTotalAmount::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmount::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::ThresholdTotalAmount::PriceType::OrSymbol,
            threshold_total_amount_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          threshold_total_amount_config:,
          dimensional_price_configuration: nil,
          model_type: :threshold_total_amount
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::ThresholdTotalAmount::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                cadence: Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::ThresholdTotalAmount::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration),
                item: Orb::Models::Price::ThresholdTotalAmount::Item,
                maximum: T.nilable(Orb::Models::Price::ThresholdTotalAmount::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::ThresholdTotalAmount::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::ThresholdTotalAmount::PriceType::TaggedSymbol,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::ThresholdTotalAmount::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmount::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ThresholdTotalAmount::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmount::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::ThresholdTotalAmount::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::ThresholdTotalAmount::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ThresholdTotalAmount::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class TieredPackage < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredPackage::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackage::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredPackage::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackage::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPackage::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackage::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackage::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredPackage::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPackage::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::TieredPackage::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPackage::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::TieredPackage::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredPackage::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::TieredPackage::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredPackage::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackage::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackage::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::TieredPackage::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackage::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::TieredPackage::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredPackage::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredPackage::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredPackage::PriceType::OrSymbol,
            tiered_package_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredPackage::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_package_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_package
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredPackage::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredPackage::BillingCycleConfiguration,
                cadence: Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredPackage::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredPackage::Item,
                maximum: T.nilable(Orb::Models::Price::TieredPackage::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredPackage::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::TieredPackage::PriceType::TaggedSymbol,
                tiered_package_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPackage::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackage::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackage::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackage::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredPackage::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredPackage::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackage::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class GroupedTiered < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedTiered::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTiered::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedTiered::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTiered::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedTiered::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTiered::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_tiered_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTiered::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedTiered::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedTiered::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::GroupedTiered::Maximum, Orb::Internal::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedTiered::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::GroupedTiered::Minimum, Orb::Internal::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::GroupedTiered::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedTiered::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::GroupedTiered::DimensionalPriceConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTiered::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTiered::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::GroupedTiered::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTiered::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::GroupedTiered::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedTiered::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedTiered::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedTiered::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::GroupedTiered::DimensionalPriceConfiguration, Orb::Internal::AnyHash)),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_tiered
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedTiered::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedTiered::BillingCycleConfiguration,
                cadence: Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedTiered::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedTiered::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedTiered::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedTiered::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::GroupedTiered::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTiered::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTiered::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTiered::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTiered::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::GroupedTiered::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::GroupedTiered::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTiered::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class TieredWithMinimum < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimum::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimum::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithMinimum::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredWithMinimum::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimum::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::Maximum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimum::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::Minimum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredWithMinimum::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimum::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimum::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::TieredWithMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::TieredWithMinimum::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimum::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredWithMinimum::PriceType::OrSymbol,
            tiered_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimum::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_with_minimum_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_with_minimum
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredWithMinimum::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration,
                cadence: Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredWithMinimum::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredWithMinimum::Item,
                maximum: T.nilable(Orb::Models::Price::TieredWithMinimum::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredWithMinimum::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::TieredWithMinimum::PriceType::TaggedSymbol,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredWithMinimum::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimum::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithMinimum::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimum::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredWithMinimum::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredWithMinimum::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithMinimum::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimum::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimum::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackageWithMinimum::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredPackageWithMinimum::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimum::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimum::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_with_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::TieredPackageWithMinimum::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimum::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredPackageWithMinimum::PriceType::OrSymbol,
            tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_package_with_minimum_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_package_with_minimum
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredPackageWithMinimum::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration,
                cadence: Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredPackageWithMinimum::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredPackageWithMinimum::Item,
                maximum: T.nilable(Orb::Models::Price::TieredPackageWithMinimum::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredPackageWithMinimum::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol,
                tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimum::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimum::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class PackageWithAllocation < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocation::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocation::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::PackageWithAllocation::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::PackageWithAllocation::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocation::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocation::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

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

        sig { returns(Orb::Models::Price::PackageWithAllocation::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocation::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocation::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::PackageWithAllocation::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::PackageWithAllocation::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocation::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            package_with_allocation_config: T::Hash[Symbol, T.anything],
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::PackageWithAllocation::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocation::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          package_with_allocation_config:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :package_with_allocation
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::PackageWithAllocation::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration,
                cadence: Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::PackageWithAllocation::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration),
                item: Orb::Models::Price::PackageWithAllocation::Item,
                maximum: T.nilable(Orb::Models::Price::PackageWithAllocation::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::PackageWithAllocation::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::PackageWithAllocation::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::PackageWithAllocation::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocation::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::PackageWithAllocation::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocation::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::PackageWithAllocation::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::PackageWithAllocation::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::PackageWithAllocation::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class UnitWithPercent < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercent::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercent::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithPercent::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::UnitWithPercent::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercent::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::Maximum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercent::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::Minimum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::UnitWithPercent::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_percent_config

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercent::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithPercent::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::UnitWithPercent::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration, Orb::Internal::AnyHash)),
            item: T.any(Orb::Models::Price::UnitWithPercent::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::UnitWithPercent::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::UnitWithPercent::PriceType::OrSymbol,
            unit_with_percent_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithPercent::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          unit_with_percent_config:,
          dimensional_price_configuration: nil,
          model_type: :unit_with_percent
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::UnitWithPercent::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration,
                cadence: Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::UnitWithPercent::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration),
                item: Orb::Models::Price::UnitWithPercent::Item,
                maximum: T.nilable(Orb::Models::Price::UnitWithPercent::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::UnitWithPercent::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::UnitWithPercent::PriceType::TaggedSymbol,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitWithPercent::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercent::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithPercent::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercent::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::UnitWithPercent::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::UnitWithPercent::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithPercent::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class MatrixWithAllocation < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocation::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocation::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithAllocation::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::MatrixWithAllocation::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig) }
        attr_reader :matrix_with_allocation_config

        sig do
          params(
            matrix_with_allocation_config: T.any(Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :matrix_with_allocation_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocation::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocation::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::MatrixWithAllocation::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocation::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocation::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::MatrixWithAllocation::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::MatrixWithAllocation::Item, Orb::Internal::AnyHash),
            matrix_with_allocation_config: T.any(Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocation::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::MatrixWithAllocation::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocation::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :matrix_with_allocation
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::MatrixWithAllocation::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration,
                cadence: Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::MatrixWithAllocation::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration),
                item: Orb::Models::Price::MatrixWithAllocation::Item,
                matrix_with_allocation_config: Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
                maximum: T.nilable(Orb::Models::Price::MatrixWithAllocation::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::MatrixWithAllocation::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::MatrixWithAllocation::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithAllocation::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocation::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithAllocation::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
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
          sig { returns(T::Array[Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue]) }
          attr_accessor :matrix_values

          sig do
            params(
              allocation: Float,
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[
                T.any(
                  Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue,
                  Orb::Internal::AnyHash
                )
              ]
            )
              .returns(T.attached_class)
          end
          def self.new(
            # Allocation to be used to calculate the price
            allocation:,
            # Default per unit rate for any usage not bucketed into a specified matrix_value
            default_unit_amount:,
            # One or two event property values to evaluate matrix groups by
            dimensions:,
            # Matrix values for specified matrix grouping keys
            matrix_values:
          ); end
          sig do
            override
              .returns(
                {
                  allocation: Float,
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue]
                }
              )
          end
          def to_hash; end

          class MatrixValue < Orb::Internal::Type::BaseModel
            # One or two matrix keys to filter usage to this Matrix value by. For example,
            # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
            # instance tier.
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
            def self.new(
              # One or two matrix keys to filter usage to this Matrix value by. For example,
              # ["region", "tier"] could be used to filter cloud usage by a cloud region and an
              # instance tier.
              dimension_values:,
              # Unit price for the specified dimension_values
              unit_amount:
            ); end
            sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
            def to_hash; end
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocation::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::MatrixWithAllocation::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::MatrixWithAllocation::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithAllocation::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class TieredWithProration < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProration::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithProration::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredWithProration::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithProration::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProration::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithProration::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithProration::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredWithProration::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProration::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::TieredWithProration::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProration::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::TieredWithProration::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredWithProration::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_proration_config

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProration::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProration::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithProration::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithProration::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::TieredWithProration::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithProration::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::TieredWithProration::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredWithProration::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredWithProration::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredWithProration::PriceType::OrSymbol,
            tiered_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProration::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          tiered_with_proration_config:,
          dimensional_price_configuration: nil,
          model_type: :tiered_with_proration
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::TieredWithProration::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::TieredWithProration::BillingCycleConfiguration,
                cadence: Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::TieredWithProration::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration),
                item: Orb::Models::Price::TieredWithProration::Item,
                maximum: T.nilable(Orb::Models::Price::TieredWithProration::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::TieredWithProration::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::TieredWithProration::PriceType::TaggedSymbol,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::TieredWithProration::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProration::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithProration::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProration::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredWithProration::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredWithProration::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithProration::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class UnitWithProration < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProration::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithProration::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::UnitWithProration::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithProration::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProration::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithProration::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithProration::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::UnitWithProration::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProration::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::UnitWithProration::Maximum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProration::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::UnitWithProration::Minimum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::UnitWithProration::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_proration_config

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProration::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProration::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithProration::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithProration::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::UnitWithProration::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithProration::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::UnitWithProration::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::UnitWithProration::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::UnitWithProration::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::UnitWithProration::PriceType::OrSymbol,
            unit_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProration::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          unit_with_proration_config:,
          dimensional_price_configuration: nil,
          model_type: :unit_with_proration
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::UnitWithProration::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::UnitWithProration::BillingCycleConfiguration,
                cadence: Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::UnitWithProration::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration),
                item: Orb::Models::Price::UnitWithProration::Item,
                maximum: T.nilable(Orb::Models::Price::UnitWithProration::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::UnitWithProration::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::UnitWithProration::PriceType::TaggedSymbol,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::UnitWithProration::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProration::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithProration::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProration::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::UnitWithProration::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::UnitWithProration::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithProration::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class GroupedAllocation < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocation::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocation::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_allocation_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedAllocation::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedAllocation::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocation::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::Maximum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocation::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::Minimum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::GroupedAllocation::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocation::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocation::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::GroupedAllocation::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_allocation_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::GroupedAllocation::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedAllocation::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedAllocation::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocation::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_allocation
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedAllocation::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration,
                cadence: Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedAllocation::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedAllocation::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedAllocation::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedAllocation::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::GroupedAllocation::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedAllocation::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocation::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedAllocation::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocation::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::GroupedAllocation::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::GroupedAllocation::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedAllocation::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_with_prorated_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimum::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedWithProratedMinimum::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::GroupedWithProratedMinimum::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimum::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedWithProratedMinimum::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_with_prorated_minimum
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                cadence: Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedWithProratedMinimum::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimum::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimum::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_with_metered_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimum::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedWithMeteredMinimum::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::GroupedWithMeteredMinimum::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimum::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedWithMeteredMinimum::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_with_metered_minimum
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                cadence: Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedWithMeteredMinimum::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimum::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayName::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayName::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithDisplayName::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::MatrixWithDisplayName::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :matrix_with_display_name_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayName::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayName::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::MatrixWithDisplayName::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayName::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::MatrixWithDisplayName::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::MatrixWithDisplayName::Item, Orb::Internal::AnyHash),
            matrix_with_display_name_config: T::Hash[Symbol, T.anything],
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayName::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::MatrixWithDisplayName::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :matrix_with_display_name
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::MatrixWithDisplayName::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                cadence: Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::MatrixWithDisplayName::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration),
                item: Orb::Models::Price::MatrixWithDisplayName::Item,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                maximum: T.nilable(Orb::Models::Price::MatrixWithDisplayName::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::MatrixWithDisplayName::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::MatrixWithDisplayName::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithDisplayName::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayName::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithDisplayName::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayName::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::MatrixWithDisplayName::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::MatrixWithDisplayName::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithDisplayName::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class BulkWithProration < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProration::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkWithProration::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::BulkWithProration::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkWithProration::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :bulk_with_proration_config

        sig { returns(Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProration::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkWithProration::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkWithProration::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::BulkWithProration::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProration::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::BulkWithProration::Maximum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProration::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::BulkWithProration::Minimum, Orb::Internal::AnyHash)))
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::BulkWithProration::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProration::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProration::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkWithProration::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkWithProration::BillingCycleConfiguration, Orb::Internal::AnyHash),
            bulk_with_proration_config: T::Hash[Symbol, T.anything],
            cadence: Orb::Models::Price::BulkWithProration::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkWithProration::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::BulkWithProration::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::BulkWithProration::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::BulkWithProration::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::BulkWithProration::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProration::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :bulk_with_proration
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::BulkWithProration::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::BulkWithProration::BillingCycleConfiguration,
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::BulkWithProration::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration),
                item: Orb::Models::Price::BulkWithProration::Item,
                maximum: T.nilable(Orb::Models::Price::BulkWithProration::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::BulkWithProration::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::BulkWithProration::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkWithProration::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(:day, Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProration::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkWithProration::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProration::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::BulkWithProration::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::BulkWithProration::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkWithProration::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class GroupedTieredPackage < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackage::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackage::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPackage::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedTieredPackage::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackage::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackage::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::GroupedTieredPackage::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackage::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackage::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::GroupedTieredPackage::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_package_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::GroupedTieredPackage::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackage::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedTieredPackage::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackage::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :grouped_tiered_package
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::GroupedTieredPackage::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration,
                cadence: Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::GroupedTieredPackage::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration),
                item: Orb::Models::Price::GroupedTieredPackage::Item,
                maximum: T.nilable(Orb::Models::Price::GroupedTieredPackage::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::GroupedTieredPackage::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::GroupedTieredPackage::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTieredPackage::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackage::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTieredPackage::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackage::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::GroupedTieredPackage::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::GroupedTieredPackage::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTieredPackage::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackage::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackage::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MaxGroupTieredPackage::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::MaxGroupTieredPackage::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :max_group_tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackage::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackage::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::CreditAllocation, Orb::Internal::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::MaxGroupTieredPackage::Item, Orb::Internal::AnyHash),
            max_group_tiered_package_config: T::Hash[Symbol, T.anything],
            maximum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackage::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::MaxGroupTieredPackage::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :max_group_tiered_package
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::MaxGroupTieredPackage::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                cadence: Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::MaxGroupTieredPackage::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration),
                item: Orb::Models::Price::MaxGroupTieredPackage::Item,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                maximum: T.nilable(Orb::Models::Price::MaxGroupTieredPackage::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::MaxGroupTieredPackage::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackage::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackage::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::BillableMetric, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
              Orb::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::CreditAllocation, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricing::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_unit_pricing_config

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::BillableMetric, Orb::Internal::AnyHash)
            ),
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
              Orb::Internal::AnyHash
            ),
            cadence: Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::CreditAllocation, Orb::Internal::AnyHash)
            ),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            ),
            item: T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricing::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType::OrSymbol,
            scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          scalable_matrix_with_unit_pricing_config:,
          dimensional_price_configuration: nil,
          model_type: :scalable_matrix_with_unit_pricing
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                cadence: Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration),
                item: Orb::Models::Price::ScalableMatrixWithUnitPricing::Item,
                maximum: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::BillableMetric, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
              Orb::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::CreditAllocation, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

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
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricing::Item) }
        attr_reader :item

        sig do
          params(item: T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::Item, Orb::Internal::AnyHash)).void
        end
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_tiered_pricing_config

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::BillableMetric, Orb::Internal::AnyHash)
            ),
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
              Orb::Internal::AnyHash
            ),
            cadence: Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::CreditAllocation, Orb::Internal::AnyHash)
            ),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            ),
            item: T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricing::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType::OrSymbol,
            scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          scalable_matrix_with_tiered_pricing_config:,
          dimensional_price_configuration: nil,
          model_type: :scalable_matrix_with_tiered_pricing
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                cadence: Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration),
                item: Orb::Models::Price::ScalableMatrixWithTieredPricing::Item,
                maximum: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                dimensional_price_configuration: T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    Orb::Models::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulk::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::BillableMetric, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration, Orb::Internal::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulk::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::CreditAllocation, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :credit_allocation

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
                Orb::Models::UsageDiscount,
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

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::CumulativeGroupedBulk::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::CumulativeGroupedBulk::Item, Orb::Internal::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulk::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::Maximum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulk::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::Minimum, Orb::Internal::AnyHash))
          )
            .void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::BillableMetric, Orb::Internal::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration, Orb::Internal::AnyHash),
            cadence: Orb::Models::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::CreditAllocation, Orb::Internal::AnyHash)),
            cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Internal::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, Orb::Internal::AnyHash)
            ),
            item: T.any(Orb::Models::Price::CumulativeGroupedBulk::Item, Orb::Internal::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::Maximum, Orb::Internal::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulk::Minimum, Orb::Internal::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::CumulativeGroupedBulk::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, Orb::Internal::AnyHash)
            ),
            model_type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          # User specified key-value pairs for the resource. If not present, this defaults
          # to an empty dictionary. Individual keys can be removed by setting the value to
          # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          # `null`.
          metadata:,
          minimum:,
          minimum_amount:,
          name:,
          plan_phase_order:,
          price_type:,
          dimensional_price_configuration: nil,
          model_type: :cumulative_grouped_bulk
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                billable_metric: T.nilable(Orb::Models::Price::CumulativeGroupedBulk::BillableMetric),
                billing_cycle_configuration: Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                cadence: Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol,
                conversion_rate: T.nilable(Float),
                created_at: Time,
                credit_allocation: T.nilable(Orb::Models::Price::CumulativeGroupedBulk::CreditAllocation),
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
                invoicing_cycle_configuration: T.nilable(Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration),
                item: Orb::Models::Price::CumulativeGroupedBulk::Item,
                maximum: T.nilable(Orb::Models::Price::CumulativeGroupedBulk::Maximum),
                maximum_amount: T.nilable(String),
                metadata: T::Hash[Symbol, String],
                minimum: T.nilable(Orb::Models::Price::CumulativeGroupedBulk::Minimum),
                minimum_amount: T.nilable(String),
                model_type: Symbol,
                name: String,
                plan_phase_order: T.nilable(Integer),
                price_type: Orb::Models::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash; end

        class BillableMetric < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:); end

          sig { override.returns({id: String}) }
          def to_hash; end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulk::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol]) }
          def self.values; end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:); end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash; end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:); end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash; end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:); end

          sig { override.returns({id: String, name: String}) }
          def to_hash; end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash; end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          ); end
          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash; end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulk::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol]) }
          def self.values; end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :dimensional_price_group_id

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:); end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash; end
        end
      end

      sig do
        override
          .returns(
            [Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk]
          )
      end
      def self.variants; end
    end
  end
end
