# typed: strong

module Orb
  module Models
    # The Price resource represents a price that can be billed on a subscription,
    #   resulting in a charge on an invoice in the form of an invoice line item. Prices
    #   take a quantity and determine an amount to bill.
    #
    #   Orb supports a few different pricing models out of the box. Each of these models
    #   is serialized differently in a given Price object. The model_type field
    #   determines the key for the configuration object that is present.
    #
    #   For more on the types of prices, see
    #   [the core concepts documentation](/core-concepts#plan-and-price)
    module Price
      extend Orb::Union

      class UnitPrice < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::UnitPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::UnitPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::UnitPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::UnitPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::UnitPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::UnitPrice::UnitConfig) }
        attr_reader :unit_config

        sig { params(unit_config: T.any(Orb::Models::Price::UnitPrice::UnitConfig, Orb::Util::AnyHash)).void }
        attr_writer :unit_config

        sig { returns(T.nilable(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::UnitPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::UnitPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::UnitPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::UnitPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::UnitPrice::PriceType::OrSymbol,
            unit_config: T.any(Orb::Models::Price::UnitPrice::UnitConfig, Orb::Util::AnyHash),
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::UnitPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::UnitPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY = T.let(:day, Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::UnitPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitPrice::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY = T.let(:day, Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::UnitPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitPrice::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::UnitPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::UnitPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::UnitPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class UnitConfig < Orb::BaseModel
          # Rate per unit of usage
          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(unit_amount: String).returns(T.attached_class) }
          def self.new(unit_amount:)
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

          sig do
            params(
              dimension_values: T::Array[String],
              dimensional_price_group_id: String
            ).returns(T.attached_class)
          end
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::PackagePrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::PackagePrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::PackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::PackagePrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::PackagePrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::PackagePrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::PackagePrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::PackagePrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Orb::Models::Price::PackagePrice::PackageConfig) }
        attr_reader :package_config

        sig { params(package_config: T.any(Orb::Models::Price::PackagePrice::PackageConfig, Orb::Util::AnyHash)).void }
        attr_writer :package_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::PackagePrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::PackagePrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::PackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::PackagePrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::PackagePrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::PackagePrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::PackagePrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::PackagePrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            package_config: T.any(Orb::Models::Price::PackagePrice::PackageConfig, Orb::Util::AnyHash),
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::PackagePrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::PackagePrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::PackagePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::PackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::PackagePrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::PackagePrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::PackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        class PackageConfig < Orb::BaseModel
          # A currency amount to rate usage by
          sig { returns(String) }
          attr_accessor :package_amount

          # An integer amount to represent package size. For example, 1000 here would divide
          #   usage by 1000 before multiplying by package_amount in rating
          sig { returns(Integer) }
          attr_accessor :package_size

          sig { params(package_amount: String, package_size: Integer).returns(T.attached_class) }
          def self.new(package_amount:, package_size:)
          end

          sig { override.returns({package_amount: String, package_size: Integer}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::PackagePrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::PackagePrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::PackagePrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::PackagePrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::PackagePrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::MatrixPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::MatrixPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(Orb::Models::Price::MatrixPrice::MatrixConfig) }
        attr_reader :matrix_config

        sig { params(matrix_config: T.any(Orb::Models::Price::MatrixPrice::MatrixConfig, Orb::Util::AnyHash)).void }
        attr_writer :matrix_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::MatrixPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::MatrixPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::MatrixPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::MatrixPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::MatrixPrice::Item, Orb::Util::AnyHash),
            matrix_config: T.any(Orb::Models::Price::MatrixPrice::MatrixConfig, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::MatrixPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::MatrixPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY = T.let(:day, Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::MatrixPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixPrice::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class MatrixConfig < Orb::BaseModel
          # Default per unit rate for any usage not bucketed into a specified matrix_value
          sig { returns(String) }
          attr_accessor :default_unit_amount

          # One or two event property values to evaluate matrix groups by
          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimensions

          # Matrix values for specified matrix grouping keys
          sig { returns(T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]) }
          attr_accessor :matrix_values

          sig do
            params(
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[T.any(Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue, Orb::Util::AnyHash)]
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
                  matrix_values: T::Array[Orb::Models::Price::MatrixPrice::MatrixConfig::MatrixValue]
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
            def self.new(dimension_values:, unit_amount:)
            end

            sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
            def to_hash
            end
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::MatrixPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::MatrixPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::MatrixPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::TieredPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::TieredPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::TieredPrice::TieredConfig) }
        attr_reader :tiered_config

        sig { params(tiered_config: T.any(Orb::Models::Price::TieredPrice::TieredConfig, Orb::Util::AnyHash)).void }
        attr_writer :tiered_config

        sig { returns(T.nilable(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::TieredPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::TieredPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredPrice::PriceType::OrSymbol,
            tiered_config: T.any(Orb::Models::Price::TieredPrice::TieredConfig, Orb::Util::AnyHash),
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::TieredPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY = T.let(:day, Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::TieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPrice::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class TieredConfig < Orb::BaseModel
          # Tiers for rating based on total usage quantities into the specified tier
          sig { returns(T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(tiers: T::Array[T.any(Orb::Models::Price::TieredPrice::TieredConfig::Tier, Orb::Util::AnyHash)])
              .returns(T.attached_class)
          end
          def self.new(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::TieredPrice::TieredConfig::Tier]}) }
          def to_hash
          end

          class Tier < Orb::BaseModel
            # Inclusive tier starting value
            sig { returns(Float) }
            attr_accessor :first_unit

            # Amount per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # Exclusive tier ending value. If null, this is treated as the last tier
            sig { returns(T.nilable(Float)) }
            attr_accessor :last_unit

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

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredBpsPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredBpsPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredBpsPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Models::Price::TieredBpsPrice::TieredBpsConfig) }
        attr_reader :tiered_bps_config

        sig do
          params(tiered_bps_config: T.any(Orb::Models::Price::TieredBpsPrice::TieredBpsConfig, Orb::Util::AnyHash))
            .void
        end
        attr_writer :tiered_bps_config

        sig { returns(T.nilable(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::TieredBpsPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::TieredBpsPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredBpsPrice::PriceType::OrSymbol,
            tiered_bps_config: T.any(Orb::Models::Price::TieredBpsPrice::TieredBpsConfig, Orb::Util::AnyHash),
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::TieredBpsPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::TieredBpsPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBpsPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredBpsPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredBpsPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredBpsPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredBpsPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredBpsPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredBpsPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class TieredBpsConfig < Orb::BaseModel
          # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          #   tiers
          sig { returns(T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(
              tiers: T::Array[T.any(Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier, Orb::Util::AnyHash)]
            )
              .returns(T.attached_class)
          end
          def self.new(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::TieredBpsPrice::TieredBpsConfig::Tier]}) }
          def to_hash
          end

          class Tier < Orb::BaseModel
            # Per-event basis point rate
            sig { returns(Float) }
            attr_accessor :bps

            # Inclusive tier starting value
            sig { returns(String) }
            attr_accessor :minimum_amount

            # Exclusive tier ending value
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

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::BpsPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::BpsPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::BpsPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::BpsPrice::BpsConfig) }
        attr_reader :bps_config

        sig { params(bps_config: T.any(Orb::Models::Price::BpsPrice::BpsConfig, Orb::Util::AnyHash)).void }
        attr_writer :bps_config

        sig { returns(Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BpsPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BpsPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::BpsPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::BpsPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::BpsPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::BpsPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::BpsPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::BpsPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            bps_config: T.any(Orb::Models::Price::BpsPrice::BpsConfig, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::BpsPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BpsPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::BpsPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::BpsPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::BpsPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::BpsPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::BpsPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BpsPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }

            DAY = T.let(:day, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::BpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class BpsConfig < Orb::BaseModel
          # Basis point take rate per event
          sig { returns(Float) }
          attr_accessor :bps

          # Optional currency amount maximum to cap spend per event
          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_maximum

          sig { params(bps: Float, per_unit_maximum: T.nilable(String)).returns(T.attached_class) }
          def self.new(bps:, per_unit_maximum: nil)
          end

          sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
          def to_hash
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BpsPrice::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BpsPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY = T.let(:day, Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::BpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BpsPrice::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::BpsPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::BpsPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::BpsPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BpsPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkBpsPrice::BulkBpsConfig) }
        attr_reader :bulk_bps_config

        sig { params(bulk_bps_config: T.any(Orb::Models::Price::BulkBpsPrice::BulkBpsConfig, Orb::Util::AnyHash)).void }
        attr_writer :bulk_bps_config

        sig { returns(Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkBpsPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::BulkBpsPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::BulkBpsPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            bulk_bps_config: T.any(Orb::Models::Price::BulkBpsPrice::BulkBpsConfig, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::BulkBpsPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::BulkBpsPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::BulkBpsPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::BulkBpsPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkBpsPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::BulkBpsPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class BulkBpsConfig < Orb::BaseModel
          # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          #   tier based on total volume
          sig { returns(T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(tiers: T::Array[T.any(Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier, Orb::Util::AnyHash)])
              .returns(T.attached_class)
          end
          def self.new(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::BulkBpsPrice::BulkBpsConfig::Tier]}) }
          def to_hash
          end

          class Tier < Orb::BaseModel
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

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBpsPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkBpsPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::BulkBpsPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkBpsPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::BulkBpsPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::BulkBpsPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::BulkBpsPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkBpsPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::BulkPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkPrice::BulkConfig) }
        attr_reader :bulk_config

        sig { params(bulk_config: T.any(Orb::Models::Price::BulkPrice::BulkConfig, Orb::Util::AnyHash)).void }
        attr_writer :bulk_config

        sig { returns(Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::BulkPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::BulkPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::BulkPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::BulkPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            bulk_config: T.any(Orb::Models::Price::BulkPrice::BulkConfig, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::BulkPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::BulkPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::BulkPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::BulkPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::BulkPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(T.any(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)),
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
                cadence: Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::BulkPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY = T.let(:day, Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::BulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class BulkConfig < Orb::BaseModel
          # Bulk tiers for rating based on total usage volume
          sig { returns(T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(tiers: T::Array[T.any(Orb::Models::Price::BulkPrice::BulkConfig::Tier, Orb::Util::AnyHash)])
              .returns(T.attached_class)
          end
          def self.new(tiers:)
          end

          sig { override.returns({tiers: T::Array[Orb::Models::Price::BulkPrice::BulkConfig::Tier]}) }
          def to_hash
          end

          class Tier < Orb::BaseModel
            # Amount per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # Upper bound for this tier
            sig { returns(T.nilable(Float)) }
            attr_accessor :maximum_units

            sig { params(unit_amount: String, maximum_units: T.nilable(Float)).returns(T.attached_class) }
            def self.new(unit_amount:, maximum_units: nil)
            end

            sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
            def to_hash
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkPrice::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY = T.let(:day, Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(:month, Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Price::BulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol])
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkPrice::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Price::BulkPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::BulkPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::BulkPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::ThresholdTotalAmountPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::ThresholdTotalAmountPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :threshold_total_amount_config

        sig { returns(T.nilable(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::ThresholdTotalAmountPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::ThresholdTotalAmountPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::ThresholdTotalAmountPrice::PriceType::OrSymbol,
            threshold_total_amount_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::ThresholdTotalAmountPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::ThresholdTotalAmountPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::ThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ThresholdTotalAmountPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::ThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::ThresholdTotalAmountPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ThresholdTotalAmountPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackagePrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredPackagePrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::TieredPackagePrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::TieredPackagePrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::TieredPackagePrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredPackagePrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredPackagePrice::PriceType::OrSymbol,
            tiered_package_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::TieredPackagePrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackagePrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackagePrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackagePrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredPackagePrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredPackagePrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredPackagePrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackagePrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedTieredPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::Maximum, Orb::Util::AnyHash))).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::Minimum, Orb::Util::AnyHash))).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Models::Price::GroupedTieredPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::GroupedTieredPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)),
            item: T.any(Orb::Models::Price::GroupedTieredPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedTieredPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::GroupedTieredPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTieredPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(:day, Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTieredPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTieredPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedTieredPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::GroupedTieredPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::GroupedTieredPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTieredPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredWithMinimumPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::Maximum, Orb::Util::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::Minimum, Orb::Util::AnyHash)))
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

        sig { returns(Orb::Models::Price::TieredWithMinimumPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::TieredWithMinimumPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::TieredWithMinimumPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredWithMinimumPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredWithMinimumPrice::PriceType::OrSymbol,
            tiered_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithMinimumPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::TieredWithMinimumPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimumPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithMinimumPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithMinimumPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredWithMinimumPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredWithMinimumPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredWithMinimumPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithMinimumPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_with_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredPackageWithMinimumPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType::OrSymbol,
            tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::TieredPackageWithMinimumPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
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
                cadence: Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackageWithMinimumPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredPackageWithMinimumPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::PackageWithAllocationPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::PackageWithAllocationPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::PackageWithAllocationPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::PackageWithAllocationPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::PackageWithAllocationPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            package_with_allocation_config: T::Hash[Symbol, T.anything],
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::PackageWithAllocationPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::PackageWithAllocationPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::PackageWithAllocationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::PackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocationPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::PackageWithAllocationPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::PackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::PackageWithAllocationPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::PackageWithAllocationPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::PackageWithAllocationPrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::PackageWithAllocationPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::PackageWithAllocationPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::UnitWithPercentPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::Maximum, Orb::Util::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::Minimum, Orb::Util::AnyHash)))
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

        sig { returns(Orb::Models::Price::UnitWithPercentPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_percent_config

        sig { returns(T.nilable(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::UnitWithPercentPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::UnitWithPercentPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::UnitWithPercentPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::UnitWithPercentPrice::PriceType::OrSymbol,
            unit_with_percent_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithPercentPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::UnitWithPercentPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithPercentPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercentPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithPercentPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithPercentPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::UnitWithPercentPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::UnitWithPercentPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::UnitWithPercentPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithPercentPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::MatrixWithAllocationPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig) }
        attr_reader :matrix_with_allocation_config

        sig do
          params(
            matrix_with_allocation_config: T.any(Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :matrix_with_allocation_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::MatrixWithAllocationPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::MatrixWithAllocationPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::MatrixWithAllocationPrice::Item, Orb::Util::AnyHash),
            matrix_with_allocation_config: T.any(Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithAllocationPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::MatrixWithAllocationPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::MatrixWithAllocationPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithAllocationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocationPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithAllocationPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class MatrixWithAllocationConfig < Orb::BaseModel
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
          sig { returns(T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]) }
          attr_accessor :matrix_values

          sig do
            params(
              allocation: Float,
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values: T::Array[
              T.any(
                Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue,
                Orb::Util::AnyHash
              )
              ]
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
                  matrix_values: T::Array[Orb::Models::Price::MatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue]
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
            def self.new(dimension_values:, unit_amount:)
            end

            sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
            def to_hash
            end
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithAllocationPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::MatrixWithAllocationPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::MatrixWithAllocationPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::MatrixWithAllocationPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithAllocationPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::TieredWithProrationPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::TieredWithProrationPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_proration_config

        sig { returns(T.nilable(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::TieredWithProrationPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::TieredWithProrationPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::TieredWithProrationPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::TieredWithProrationPrice::PriceType::OrSymbol,
            tiered_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::TieredWithProrationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::TieredWithProrationPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProrationPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithProrationPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::TieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::TieredWithProrationPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::TieredWithProrationPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::TieredWithProrationPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::TieredWithProrationPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::TieredWithProrationPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::UnitWithProrationPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::Maximum, Orb::Util::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::Minimum, Orb::Util::AnyHash)))
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

        sig { returns(Orb::Models::Price::UnitWithProrationPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_proration_config

        sig { returns(T.nilable(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::UnitWithProrationPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::UnitWithProrationPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::UnitWithProrationPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::UnitWithProrationPrice::PriceType::OrSymbol,
            unit_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::UnitWithProrationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::UnitWithProrationPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProrationPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithProrationPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::UnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::UnitWithProrationPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::UnitWithProrationPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::UnitWithProrationPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::UnitWithProrationPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::UnitWithProrationPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedAllocationPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::Maximum, Orb::Util::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::Minimum, Orb::Util::AnyHash)))
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

        sig { returns(Orb::Models::Price::GroupedAllocationPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::GroupedAllocationPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_allocation_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::GroupedAllocationPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedAllocationPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedAllocationPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::GroupedAllocationPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedAllocationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedAllocationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocationPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedAllocationPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedAllocationPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedAllocationPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::GroupedAllocationPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::GroupedAllocationPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedAllocationPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation, Orb::Util::AnyHash)
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

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_with_prorated_minimum_config

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
                Orb::Util::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::CreditAllocation, Orb::Util::AnyHash)
            ),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration,
                Orb::Util::AnyHash
              )
            ),
            item: T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithProratedMinimumPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
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
                cadence: Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithProratedMinimumPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithProratedMinimumPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  Orb::Models::Price::GroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  ]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithProratedMinimumPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedWithMeteredMinimumPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
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
                cadence: Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedWithMeteredMinimumPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithMeteredMinimumPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  Orb::Models::Price::GroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  ]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedWithMeteredMinimumPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :matrix_with_display_name_config

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::Item, Orb::Util::AnyHash),
            matrix_with_display_name_config: T::Hash[Symbol, T.anything],
            maximum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MatrixWithDisplayNamePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithDisplayNamePrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MatrixWithDisplayNamePrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :bulk_with_proration_config

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::BulkWithProrationPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::Maximum, Orb::Util::AnyHash)))
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::Minimum, Orb::Util::AnyHash)))
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

        sig { returns(Orb::Models::Price::BulkWithProrationPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            bulk_with_proration_config: T::Hash[Symbol, T.anything],
            cadence: Orb::Models::Price::BulkWithProrationPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::BulkWithProrationPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::BulkWithProrationPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::BulkWithProrationPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::BulkWithProrationPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::BulkWithProrationPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig { returns(Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol) }
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::BulkWithProrationPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProrationPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkWithProrationPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::BulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::BulkWithProrationPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::BulkWithProrationPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::BulkWithProrationPrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::BulkWithProrationPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::BulkWithProrationPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::GroupedTieredPackagePrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::GroupedTieredPackagePrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::GroupedTieredPackagePrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_package_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::GroupedTieredPackagePrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::GroupedTieredPackagePrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::GroupedTieredPackagePrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::GroupedTieredPackagePrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::GroupedTieredPackagePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackagePrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTieredPackagePrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::GroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::GroupedTieredPackagePrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::GroupedTieredPackagePrice::PriceType::TaggedSymbol) }

          USAGE_PRICE = T.let(:usage_price, Orb::Models::Price::GroupedTieredPackagePrice::PriceType::TaggedSymbol)
          FIXED_PRICE = T.let(:fixed_price, Orb::Models::Price::GroupedTieredPackagePrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::GroupedTieredPackagePrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :max_group_tiered_package_config

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::CreditAllocation, Orb::Util::AnyHash)),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::Item, Orb::Util::AnyHash),
            max_group_tiered_package_config: T::Hash[Symbol, T.anything],
            maximum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::MaxGroupTieredPackagePrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MaxGroupTieredPackagePrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::MaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::MaxGroupTieredPackagePrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
              Orb::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation, Orb::Util::AnyHash)
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

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
                Orb::Util::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_unit_pricing_config

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
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
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillableMetric, Orb::Util::AnyHash)
            ),
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration,
              Orb::Util::AnyHash
            ),
            cadence: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::CreditAllocation, Orb::Util::AnyHash)
            ),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration,
                Orb::Util::AnyHash
              )
            ),
            item: T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType::OrSymbol,
            scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
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
                cadence: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  ]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol) }

          ONE_TIME =
            T.let(:one_time, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  ]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Models::Price::ScalableMatrixWithUnitPricingPrice::PriceType::TaggedSymbol])
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
              Orb::Util::AnyHash
            )
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation, Orb::Util::AnyHash)
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

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
                Orb::Util::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item) }
        attr_reader :item

        sig do
          params(item: T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item, Orb::Util::AnyHash))
            .void
        end
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_tiered_pricing_config

        sig do
          returns(
            T.nilable(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration)
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
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
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillableMetric, Orb::Util::AnyHash)
            ),
            billing_cycle_configuration: T.any(
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration,
              Orb::Util::AnyHash
            ),
            cadence: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(
              T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::CreditAllocation, Orb::Util::AnyHash)
            ),
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration,
                Orb::Util::AnyHash
              )
            ),
            item: T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType::OrSymbol,
            scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration: T.nilable(
              T.any(
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::DimensionalPriceConfiguration,
                Orb::Util::AnyHash
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
                cadence: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType::TaggedSymbol,
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

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                  ]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol) }

          ONE_TIME =
            T.let(:one_time, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::Cadence::TaggedSymbol])
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                  Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                  ]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Orb::Models::Price::ScalableMatrixWithTieredPricingPrice::PriceType::TaggedSymbol])
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
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
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration, Orb::Util::AnyHash)
          )
            .void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation, Orb::Util::AnyHash))
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

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::Item) }
        attr_reader :item

        sig { params(item: T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::Item, Orb::Util::AnyHash)).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum, Orb::Util::AnyHash))
          )
            .void
        end
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        #   to an empty dictionary. Individual keys can be removed by setting the value to
        #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #   `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum, Orb::Util::AnyHash))
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

        sig { returns(Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
            )
          )
            .void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::BillableMetric, Orb::Util::AnyHash)),
            billing_cycle_configuration: T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration, Orb::Util::AnyHash),
            cadence: Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::CreditAllocation, Orb::Util::AnyHash)),
            cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
            currency: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Util::AnyHash,
                Orb::Models::TrialDiscount,
                Orb::Models::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration, Orb::Util::AnyHash)
            ),
            item: T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::Item, Orb::Util::AnyHash),
            maximum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::Maximum, Orb::Util::AnyHash)),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::Minimum, Orb::Util::AnyHash)),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType::OrSymbol,
            dimensional_price_configuration: T.nilable(
              T.any(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration, Orb::Util::AnyHash)
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
                cadence: Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol,
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
                price_type: Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType::TaggedSymbol,
                dimensional_price_configuration: T.nilable(Orb::Models::Price::CumulativeGroupedBulkPrice::DimensionalPriceConfiguration)
              }
            )
        end
        def to_hash
        end

        class BillableMetric < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({id: String}) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::CumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol) }

          ONE_TIME = T.let(:one_time, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol)
          SEMI_ANNUAL = T.let(:semi_annual, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::CumulativeGroupedBulkPrice::Cadence::TaggedSymbol]) }
          def self.values
          end
        end

        class CreditAllocation < Orb::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig { params(allows_rollover: T::Boolean, currency: String).returns(T.attached_class) }
          def self.new(allows_rollover:, currency:)
          end

          sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::BaseModel
          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit: Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override
              .returns(
                {
                  duration: Integer,
                  duration_unit: Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                }
              )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Price::CumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol]
                )
            end
            def self.values
            end
          end
        end

        class Item < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end

        class Maximum < Orb::BaseModel
          # List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], maximum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, maximum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
          def to_hash
          end
        end

        class Minimum < Orb::BaseModel
          # List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(applies_to_price_ids: T::Array[String], minimum_amount: String).returns(T.attached_class)
          end
          def self.new(applies_to_price_ids:, minimum_amount:)
          end

          sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType::TaggedSymbol) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Price::CumulativeGroupedBulkPrice::PriceType::TaggedSymbol]) }
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::BaseModel
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
          def self.new(dimension_values:, dimensional_price_group_id:)
          end

          sig { override.returns({dimension_values: T::Array[String], dimensional_price_group_id: String}) }
          def to_hash
          end
        end
      end

      sig do
        override
          .returns(
            [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
          )
      end
      def self.variants
      end
    end
  end
end
