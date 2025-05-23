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

      Variants =
        T.type_alias do
          T.any(
            Orb::Price::Unit,
            Orb::Price::Package,
            Orb::Price::Matrix,
            Orb::Price::Tiered,
            Orb::Price::TieredBps,
            Orb::Price::Bps,
            Orb::Price::BulkBps,
            Orb::Price::Bulk,
            Orb::Price::ThresholdTotalAmount,
            Orb::Price::TieredPackage,
            Orb::Price::GroupedTiered,
            Orb::Price::TieredWithMinimum,
            Orb::Price::TieredPackageWithMinimum,
            Orb::Price::PackageWithAllocation,
            Orb::Price::UnitWithPercent,
            Orb::Price::MatrixWithAllocation,
            Orb::Price::TieredWithProration,
            Orb::Price::UnitWithProration,
            Orb::Price::GroupedAllocation,
            Orb::Price::GroupedWithProratedMinimum,
            Orb::Price::GroupedWithMeteredMinimum,
            Orb::Price::MatrixWithDisplayName,
            Orb::Price::BulkWithProration,
            Orb::Price::GroupedTieredPackage,
            Orb::Price::MaxGroupTieredPackage,
            Orb::Price::ScalableMatrixWithUnitPricing,
            Orb::Price::ScalableMatrixWithTieredPricing,
            Orb::Price::CumulativeGroupedBulk
          )
        end

      class Unit < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Unit, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::Unit::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::Price::Unit::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::Unit::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::Unit::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Unit::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::Unit::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::Unit::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Price::Unit::InvoicingCycleConfiguration))
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Unit::InvoicingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::Unit::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::Unit::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::Unit::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(Orb::Price::Unit::Maximum::OrHash)).void
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

        sig { returns(T.nilable(Orb::Price::Unit::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(Orb::Price::Unit::Minimum::OrHash)).void
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

        sig { returns(Orb::Price::Unit::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Price::Unit::UnitConfig) }
        attr_reader :unit_config

        sig { params(unit_config: Orb::Price::Unit::UnitConfig::OrHash).void }
        attr_writer :unit_config

        sig do
          returns(T.nilable(Orb::Price::Unit::DimensionalPriceConfiguration))
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::Price::Unit::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::Unit::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::Unit::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::Unit::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::Unit::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Unit::InvoicingCycleConfiguration::OrHash),
            item: Orb::Price::Unit::Item::OrHash,
            maximum: T.nilable(Orb::Price::Unit::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::Unit::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Unit::PriceType::OrSymbol,
            unit_config: Orb::Price::Unit::UnitConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Unit::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::Unit::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::Unit::BillingCycleConfiguration,
              cadence: Orb::Price::Unit::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Price::Unit::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::Unit::InvoicingCycleConfiguration),
              item: Orb::Price::Unit::Item,
              maximum: T.nilable(Orb::Price::Unit::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::Unit::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Unit::PriceType::TaggedSymbol,
              unit_config: Orb::Price::Unit::UnitConfig,
              dimensional_price_configuration:
                T.nilable(Orb::Price::Unit::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Unit::BillableMetric, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Unit::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Unit::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Unit::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Unit::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Unit::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Price::Unit::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Unit::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Price::Unit::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Unit::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Unit::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Unit::Cadence::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Price::Unit::Cadence::TaggedSymbol])
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Unit::CreditAllocation, Orb::Internal::AnyHash)
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Unit::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Unit::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Unit::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Unit::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Unit::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Unit::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Unit::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Unit::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Unit::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class UnitConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Unit::UnitConfig, Orb::Internal::AnyHash)
            end

          # Rate per unit of usage
          sig { returns(String) }
          attr_accessor :unit_amount

          sig { params(unit_amount: String).returns(T.attached_class) }
          def self.new(
            # Rate per unit of usage
            unit_amount:
          )
          end

          sig { override.returns({ unit_amount: String }) }
          def to_hash
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Unit::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Package < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Package, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::Package::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::Package::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::Package::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::Package::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Package::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::Package::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::Package::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Price::Package::InvoicingCycleConfiguration))
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::Package::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::Package::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::Package::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::Package::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(Orb::Price::Package::Maximum::OrHash)).void
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

        sig { returns(T.nilable(Orb::Price::Package::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(Orb::Price::Package::Minimum::OrHash)).void
        end
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Orb::Price::Package::PackageConfig) }
        attr_reader :package_config

        sig do
          params(
            package_config: Orb::Price::Package::PackageConfig::OrHash
          ).void
        end
        attr_writer :package_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Package::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Price::Package::DimensionalPriceConfiguration))
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Package::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::Package::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::Package::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::Package::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::Package::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::Package::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::Package::Item::OrHash,
            maximum: T.nilable(Orb::Price::Package::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::Package::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            package_config: Orb::Price::Package::PackageConfig::OrHash,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Package::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Package::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::Package::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::Package::BillingCycleConfiguration,
              cadence: Orb::Price::Package::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::Package::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::Package::InvoicingCycleConfiguration),
              item: Orb::Price::Package::Item,
              maximum: T.nilable(Orb::Price::Package::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::Package::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              package_config: Orb::Price::Package::PackageConfig,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Package::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(Orb::Price::Package::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Package::BillableMetric, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Package::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Package::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Package::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Package::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Package::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::Package::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Package::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::Package::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Package::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Package::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Package::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Package::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Package::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Package::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Package::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Package::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Package::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Package::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        class PackageConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Package::PackageConfig, Orb::Internal::AnyHash)
            end

          # A currency amount to rate usage by
          sig { returns(String) }
          attr_accessor :package_amount

          # An integer amount to represent package size. For example, 1000 here would divide
          # usage by 1000 before multiplying by package_amount in rating
          sig { returns(Integer) }
          attr_accessor :package_size

          sig do
            params(package_amount: String, package_size: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # A currency amount to rate usage by
            package_amount:,
            # An integer amount to represent package size. For example, 1000 here would divide
            # usage by 1000 before multiplying by package_amount in rating
            package_size:
          )
          end

          sig do
            override.returns({ package_amount: String, package_size: Integer })
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Package::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Package::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Package::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Package::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Package::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Matrix < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Matrix, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::Matrix::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::Matrix::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::Matrix::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::Matrix::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Matrix::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::Matrix::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::Matrix::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Price::Matrix::InvoicingCycleConfiguration))
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Matrix::InvoicingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::Matrix::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::Matrix::Item::OrHash).void }
        attr_writer :item

        sig { returns(Orb::Price::Matrix::MatrixConfig) }
        attr_reader :matrix_config

        sig do
          params(matrix_config: Orb::Price::Matrix::MatrixConfig::OrHash).void
        end
        attr_writer :matrix_config

        sig { returns(T.nilable(Orb::Price::Matrix::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(Orb::Price::Matrix::Maximum::OrHash)).void
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

        sig { returns(T.nilable(Orb::Price::Matrix::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(Orb::Price::Matrix::Minimum::OrHash)).void
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

        sig { returns(Orb::Price::Matrix::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Price::Matrix::DimensionalPriceConfiguration))
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Matrix::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::Matrix::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::Matrix::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::Matrix::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::Matrix::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::Matrix::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::Matrix::Item::OrHash,
            matrix_config: Orb::Price::Matrix::MatrixConfig::OrHash,
            maximum: T.nilable(Orb::Price::Matrix::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::Matrix::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Matrix::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Matrix::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::Matrix::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::Matrix::BillingCycleConfiguration,
              cadence: Orb::Price::Matrix::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::Matrix::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::Matrix::InvoicingCycleConfiguration),
              item: Orb::Price::Matrix::Item,
              matrix_config: Orb::Price::Matrix::MatrixConfig,
              maximum: T.nilable(Orb::Price::Matrix::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::Matrix::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Matrix::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(Orb::Price::Matrix::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Matrix::BillableMetric, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Matrix::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Matrix::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Matrix::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Price::Matrix::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Matrix::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::Matrix::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Matrix::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Matrix::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Matrix::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Matrix::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Matrix::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Matrix::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Matrix::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Matrix::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class MatrixConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Matrix::MatrixConfig, Orb::Internal::AnyHash)
            end

          # Default per unit rate for any usage not bucketed into a specified matrix_value
          sig { returns(String) }
          attr_accessor :default_unit_amount

          # One or two event property values to evaluate matrix groups by
          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :dimensions

          # Matrix values for specified matrix grouping keys
          sig do
            returns(T::Array[Orb::Price::Matrix::MatrixConfig::MatrixValue])
          end
          attr_accessor :matrix_values

          sig do
            params(
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values:
                T::Array[Orb::Price::Matrix::MatrixConfig::MatrixValue::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Default per unit rate for any usage not bucketed into a specified matrix_value
            default_unit_amount:,
            # One or two event property values to evaluate matrix groups by
            dimensions:,
            # Matrix values for specified matrix grouping keys
            matrix_values:
          )
          end

          sig do
            override.returns(
              {
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values:
                  T::Array[Orb::Price::Matrix::MatrixConfig::MatrixValue]
              }
            )
          end
          def to_hash
          end

          class MatrixValue < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::Matrix::MatrixConfig::MatrixValue,
                  Orb::Internal::AnyHash
                )
              end

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
            )
            end

            sig do
              override.returns(
                {
                  dimension_values: T::Array[T.nilable(String)],
                  unit_amount: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Matrix::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Matrix::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Matrix::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Matrix::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Matrix::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Matrix::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Matrix::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Tiered < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Tiered, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::Tiered::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::Tiered::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::Tiered::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::Tiered::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Tiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::Tiered::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::Tiered::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Price::Tiered::InvoicingCycleConfiguration))
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Tiered::InvoicingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::Tiered::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::Tiered::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::Tiered::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(Orb::Price::Tiered::Maximum::OrHash)).void
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

        sig { returns(T.nilable(Orb::Price::Tiered::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(Orb::Price::Tiered::Minimum::OrHash)).void
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

        sig { returns(Orb::Price::Tiered::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Price::Tiered::TieredConfig) }
        attr_reader :tiered_config

        sig do
          params(tiered_config: Orb::Price::Tiered::TieredConfig::OrHash).void
        end
        attr_writer :tiered_config

        sig do
          returns(T.nilable(Orb::Price::Tiered::DimensionalPriceConfiguration))
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Tiered::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::Tiered::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::Tiered::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::Tiered::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::Tiered::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::Tiered::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::Tiered::Item::OrHash,
            maximum: T.nilable(Orb::Price::Tiered::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::Tiered::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Tiered::PriceType::OrSymbol,
            tiered_config: Orb::Price::Tiered::TieredConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Tiered::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::Tiered::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::Tiered::BillingCycleConfiguration,
              cadence: Orb::Price::Tiered::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::Tiered::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::Tiered::InvoicingCycleConfiguration),
              item: Orb::Price::Tiered::Item,
              maximum: T.nilable(Orb::Price::Tiered::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::Tiered::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Tiered::PriceType::TaggedSymbol,
              tiered_config: Orb::Price::Tiered::TieredConfig,
              dimensional_price_configuration:
                T.nilable(Orb::Price::Tiered::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Tiered::BillableMetric, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Tiered::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Tiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Tiered::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Price::Tiered::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Tiered::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::Tiered::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Tiered::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Tiered::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Tiered::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Tiered::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Tiered::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Tiered::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Tiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Tiered::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Tiered::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Tiered::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Tiered::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Tiered::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Tiered::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Tiered::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class TieredConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Tiered::TieredConfig, Orb::Internal::AnyHash)
            end

          # Tiers for rating based on total usage quantities into the specified tier
          sig { returns(T::Array[Orb::Price::Tiered::TieredConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(
              tiers: T::Array[Orb::Price::Tiered::TieredConfig::Tier::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Tiers for rating based on total usage quantities into the specified tier
            tiers:
          )
          end

          sig do
            override.returns(
              { tiers: T::Array[Orb::Price::Tiered::TieredConfig::Tier] }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::Tiered::TieredConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

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
            )
            end

            sig do
              override.returns(
                {
                  first_unit: Float,
                  unit_amount: String,
                  last_unit: T.nilable(Float)
                }
              )
            end
            def to_hash
            end
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Tiered::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class TieredBps < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::TieredBps, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::TieredBps::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::TieredBps::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::TieredBps::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::TieredBps::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::TieredBps::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::TieredBps::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::TieredBps::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Price::TieredBps::InvoicingCycleConfiguration))
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredBps::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::TieredBps::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::TieredBps::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::TieredBps::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::TieredBps::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::TieredBps::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::TieredBps::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::TieredBps::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(Orb::Price::TieredBps::TieredBpsConfig) }
        attr_reader :tiered_bps_config

        sig do
          params(
            tiered_bps_config: Orb::Price::TieredBps::TieredBpsConfig::OrHash
          ).void
        end
        attr_writer :tiered_bps_config

        sig do
          returns(
            T.nilable(Orb::Price::TieredBps::DimensionalPriceConfiguration)
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredBps::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::TieredBps::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::TieredBps::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::TieredBps::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::TieredBps::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredBps::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::TieredBps::Item::OrHash,
            maximum: T.nilable(Orb::Price::TieredBps::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::TieredBps::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::TieredBps::PriceType::OrSymbol,
            tiered_bps_config: Orb::Price::TieredBps::TieredBpsConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredBps::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::TieredBps::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::TieredBps::BillingCycleConfiguration,
              cadence: Orb::Price::TieredBps::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::TieredBps::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::TieredBps::InvoicingCycleConfiguration),
              item: Orb::Price::TieredBps::Item,
              maximum: T.nilable(Orb::Price::TieredBps::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::TieredBps::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::TieredBps::PriceType::TaggedSymbol,
              tiered_bps_config: Orb::Price::TieredBps::TieredBpsConfig,
              dimensional_price_configuration:
                T.nilable(Orb::Price::TieredBps::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredBps::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredBps::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::TieredBps::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::TieredBps::Cadence::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Price::TieredBps::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::TieredBps::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::TieredBps::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::TieredBps::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::TieredBps::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::TieredBps::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredBps::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredBps::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::TieredBps::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::TieredBps::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::TieredBps::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::TieredBps::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::TieredBps::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::TieredBps::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::TieredBps::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class TieredBpsConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredBps::TieredBpsConfig,
                Orb::Internal::AnyHash
              )
            end

          # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
          # tiers
          sig do
            returns(T::Array[Orb::Price::TieredBps::TieredBpsConfig::Tier])
          end
          attr_accessor :tiers

          sig do
            params(
              tiers:
                T::Array[Orb::Price::TieredBps::TieredBpsConfig::Tier::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
            # tiers
            tiers:
          )
          end

          sig do
            override.returns(
              { tiers: T::Array[Orb::Price::TieredBps::TieredBpsConfig::Tier] }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::TieredBps::TieredBpsConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

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
              ).returns(T.attached_class)
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
            )
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

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredBps::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Bps < Orb::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Orb::Price::Bps, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::Bps::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::Price::Bps::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::Bps::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::Bps::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Bps::BpsConfig) }
        attr_reader :bps_config

        sig { params(bps_config: Orb::Price::Bps::BpsConfig::OrHash).void }
        attr_writer :bps_config

        sig { returns(Orb::Price::Bps::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::Bps::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::Bps::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::Price::Bps::InvoicingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Bps::InvoicingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::Bps::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::Bps::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::Bps::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(Orb::Price::Bps::Maximum::OrHash)).void
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

        sig { returns(T.nilable(Orb::Price::Bps::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(Orb::Price::Bps::Minimum::OrHash)).void
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

        sig { returns(Orb::Price::Bps::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Price::Bps::DimensionalPriceConfiguration))
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::Price::Bps::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::Price::Bps::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::Bps::BillingCycleConfiguration::OrHash,
            bps_config: Orb::Price::Bps::BpsConfig::OrHash,
            cadence: Orb::Price::Bps::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::Bps::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Bps::InvoicingCycleConfiguration::OrHash),
            item: Orb::Price::Bps::Item::OrHash,
            maximum: T.nilable(Orb::Price::Bps::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::Bps::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Bps::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(Orb::Price::Bps::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::Bps::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::Bps::BillingCycleConfiguration,
              bps_config: Orb::Price::Bps::BpsConfig,
              cadence: Orb::Price::Bps::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Price::Bps::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::Bps::InvoicingCycleConfiguration),
              item: Orb::Price::Bps::Item,
              maximum: T.nilable(Orb::Price::Bps::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::Bps::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Bps::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(Orb::Price::Bps::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bps::BillableMetric, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Bps::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Bps::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Bps::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Bps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class BpsConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bps::BpsConfig, Orb::Internal::AnyHash)
            end

          # Basis point take rate per event
          sig { returns(Float) }
          attr_accessor :bps

          # Optional currency amount maximum to cap spend per event
          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_maximum

          sig do
            params(bps: Float, per_unit_maximum: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            # Basis point take rate per event
            bps:,
            # Optional currency amount maximum to cap spend per event
            per_unit_maximum: nil
          )
          end

          sig do
            override.returns(
              { bps: Float, per_unit_maximum: T.nilable(String) }
            )
          end
          def to_hash
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Bps::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Price::Bps::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Bps::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Price::Bps::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Bps::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Bps::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Bps::Cadence::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Price::Bps::Cadence::TaggedSymbol])
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bps::CreditAllocation, Orb::Internal::AnyHash)
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Bps::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Bps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bps::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bps::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bps::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Bps::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Bps::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Bps::PriceType::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Price::Bps::PriceType::TaggedSymbol])
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Bps::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class BulkBps < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::BulkBps, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::BulkBps::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::BulkBps::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::BulkBps::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::BulkBps::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::BulkBps::BulkBpsConfig) }
        attr_reader :bulk_bps_config

        sig do
          params(
            bulk_bps_config: Orb::Price::BulkBps::BulkBpsConfig::OrHash
          ).void
        end
        attr_writer :bulk_bps_config

        sig { returns(Orb::Price::BulkBps::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::BulkBps::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::BulkBps::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Price::BulkBps::InvoicingCycleConfiguration))
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::BulkBps::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::BulkBps::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::BulkBps::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::BulkBps::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(Orb::Price::BulkBps::Maximum::OrHash)).void
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

        sig { returns(T.nilable(Orb::Price::BulkBps::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(Orb::Price::BulkBps::Minimum::OrHash)).void
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

        sig { returns(Orb::Price::BulkBps::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Price::BulkBps::DimensionalPriceConfiguration))
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::BulkBps::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::BulkBps::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::BulkBps::BillingCycleConfiguration::OrHash,
            bulk_bps_config: Orb::Price::BulkBps::BulkBpsConfig::OrHash,
            cadence: Orb::Price::BulkBps::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::BulkBps::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::BulkBps::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::BulkBps::Item::OrHash,
            maximum: T.nilable(Orb::Price::BulkBps::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::BulkBps::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::BulkBps::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::BulkBps::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::BulkBps::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::BulkBps::BillingCycleConfiguration,
              bulk_bps_config: Orb::Price::BulkBps::BulkBpsConfig,
              cadence: Orb::Price::BulkBps::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::BulkBps::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::BulkBps::InvoicingCycleConfiguration),
              item: Orb::Price::BulkBps::Item,
              maximum: T.nilable(Orb::Price::BulkBps::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::BulkBps::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::BulkBps::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(Orb::Price::BulkBps::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::BulkBps::BillableMetric, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkBps::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkBps::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class BulkBpsConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::BulkBps::BulkBpsConfig, Orb::Internal::AnyHash)
            end

          # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
          # tier based on total volume
          sig { returns(T::Array[Orb::Price::BulkBps::BulkBpsConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(
              tiers: T::Array[Orb::Price::BulkBps::BulkBpsConfig::Tier::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Tiers for a bulk BPS pricing model where all usage is aggregated to a single
            # tier based on total volume
            tiers:
          )
          end

          sig do
            override.returns(
              { tiers: T::Array[Orb::Price::BulkBps::BulkBpsConfig::Tier] }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::BulkBps::BulkBpsConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

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
              params(
                bps: Float,
                maximum_amount: T.nilable(String),
                per_unit_maximum: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Basis points to rate on
              bps:,
              # Upper bound for tier
              maximum_amount: nil,
              # The maximum amount to charge for any one event
              per_unit_maximum: nil
            )
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
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::BulkBps::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::BulkBps::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::BulkBps::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::BulkBps::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::BulkBps::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::BulkBps::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::BulkBps::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::BulkBps::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkBps::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkBps::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::BulkBps::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::BulkBps::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::BulkBps::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::BulkBps::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::BulkBps::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::BulkBps::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::BulkBps::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkBps::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Bulk < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Bulk, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::Bulk::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::Price::Bulk::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::Bulk::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::Bulk::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Bulk::BulkConfig) }
        attr_reader :bulk_config

        sig { params(bulk_config: Orb::Price::Bulk::BulkConfig::OrHash).void }
        attr_writer :bulk_config

        sig { returns(Orb::Price::Bulk::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::Bulk::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::Bulk::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(T.nilable(Orb::Price::Bulk::InvoicingCycleConfiguration))
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Bulk::InvoicingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::Bulk::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::Bulk::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::Bulk::Maximum)) }
        attr_reader :maximum

        sig do
          params(maximum: T.nilable(Orb::Price::Bulk::Maximum::OrHash)).void
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

        sig { returns(T.nilable(Orb::Price::Bulk::Minimum)) }
        attr_reader :minimum

        sig do
          params(minimum: T.nilable(Orb::Price::Bulk::Minimum::OrHash)).void
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

        sig { returns(Orb::Price::Bulk::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(T.nilable(Orb::Price::Bulk::DimensionalPriceConfiguration))
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::Price::Bulk::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::Bulk::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::Bulk::BillingCycleConfiguration::OrHash,
            bulk_config: Orb::Price::Bulk::BulkConfig::OrHash,
            cadence: Orb::Price::Bulk::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::Bulk::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(Orb::Price::Bulk::InvoicingCycleConfiguration::OrHash),
            item: Orb::Price::Bulk::Item::OrHash,
            maximum: T.nilable(Orb::Price::Bulk::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::Bulk::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Bulk::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::Bulk::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::Price::Bulk::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::Bulk::BillingCycleConfiguration,
              bulk_config: Orb::Price::Bulk::BulkConfig,
              cadence: Orb::Price::Bulk::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Price::Bulk::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::Price::Bulk::InvoicingCycleConfiguration),
              item: Orb::Price::Bulk::Item,
              maximum: T.nilable(Orb::Price::Bulk::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::Bulk::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Bulk::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(Orb::Price::Bulk::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bulk::BillableMetric, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Bulk::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Bulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class BulkConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bulk::BulkConfig, Orb::Internal::AnyHash)
            end

          # Bulk tiers for rating based on total usage volume
          sig { returns(T::Array[Orb::Price::Bulk::BulkConfig::Tier]) }
          attr_accessor :tiers

          sig do
            params(
              tiers: T::Array[Orb::Price::Bulk::BulkConfig::Tier::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Bulk tiers for rating based on total usage volume
            tiers:
          )
          end

          sig do
            override.returns(
              { tiers: T::Array[Orb::Price::Bulk::BulkConfig::Tier] }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::Bulk::BulkConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            # Amount per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # Upper bound for this tier
            sig { returns(T.nilable(Float)) }
            attr_accessor :maximum_units

            sig do
              params(
                unit_amount: String,
                maximum_units: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount per unit
              unit_amount:,
              # Upper bound for this tier
              maximum_units: nil
            )
            end

            sig do
              override.returns(
                { unit_amount: String, maximum_units: T.nilable(Float) }
              )
            end
            def to_hash
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Bulk::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME = T.let(:one_time, Orb::Price::Bulk::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Bulk::Cadence::TaggedSymbol)
          QUARTERLY = T.let(:quarterly, Orb::Price::Bulk::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Bulk::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Bulk::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Bulk::Cadence::TaggedSymbol)

          sig do
            override.returns(T::Array[Orb::Price::Bulk::Cadence::TaggedSymbol])
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bulk::CreditAllocation, Orb::Internal::AnyHash)
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Bulk::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Bulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bulk::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bulk::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Bulk::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Bulk::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Bulk::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Bulk::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Bulk::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Bulk::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::ThresholdTotalAmount, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::ThresholdTotalAmount::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::ThresholdTotalAmount::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::ThresholdTotalAmount::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::ThresholdTotalAmount::Item::OrHash).void
        end
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::ThresholdTotalAmount::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::ThresholdTotalAmount::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::ThresholdTotalAmount::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::ThresholdTotalAmount::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::ThresholdTotalAmount::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :threshold_total_amount_config

        sig do
          returns(
            T.nilable(
              Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::ThresholdTotalAmount::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::ThresholdTotalAmount::Item::OrHash,
            maximum:
              T.nilable(Orb::Price::ThresholdTotalAmount::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::ThresholdTotalAmount::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::ThresholdTotalAmount::PriceType::OrSymbol,
            threshold_total_amount_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::ThresholdTotalAmount::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration,
              cadence: Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::ThresholdTotalAmount::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                ),
              item: Orb::Price::ThresholdTotalAmount::Item,
              maximum: T.nilable(Orb::Price::ThresholdTotalAmount::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::ThresholdTotalAmount::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::ThresholdTotalAmount::PriceType::TaggedSymbol,
              threshold_total_amount_config: T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::ThresholdTotalAmount::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::ThresholdTotalAmount::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::ThresholdTotalAmount::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::ThresholdTotalAmount::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ThresholdTotalAmount::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class TieredPackage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::TieredPackage, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::TieredPackage::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::TieredPackage::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::TieredPackage::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::TieredPackage::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::TieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::TieredPackage::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::TieredPackage::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(Orb::Price::TieredPackage::InvoicingCycleConfiguration)
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredPackage::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::TieredPackage::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::TieredPackage::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::TieredPackage::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::TieredPackage::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::TieredPackage::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::TieredPackage::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::TieredPackage::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_config

        sig do
          returns(
            T.nilable(Orb::Price::TieredPackage::DimensionalPriceConfiguration)
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredPackage::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::TieredPackage::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::TieredPackage::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::TieredPackage::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::TieredPackage::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredPackage::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::TieredPackage::Item::OrHash,
            maximum: T.nilable(Orb::Price::TieredPackage::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::TieredPackage::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::TieredPackage::PriceType::OrSymbol,
            tiered_package_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredPackage::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::TieredPackage::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::TieredPackage::BillingCycleConfiguration,
              cadence: Orb::Price::TieredPackage::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::TieredPackage::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::TieredPackage::InvoicingCycleConfiguration
                ),
              item: Orb::Price::TieredPackage::Item,
              maximum: T.nilable(Orb::Price::TieredPackage::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::TieredPackage::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::TieredPackage::PriceType::TaggedSymbol,
              tiered_package_config: T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::TieredPackage::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackage::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackage::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::TieredPackage::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::TieredPackage::Cadence::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Price::TieredPackage::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::TieredPackage::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::TieredPackage::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::TieredPackage::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::TieredPackage::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::TieredPackage::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackage::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackage::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::TieredPackage::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::TieredPackage::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::TieredPackage::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::TieredPackage::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::TieredPackage::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::TieredPackage::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::TieredPackage::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackage::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedTiered < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::GroupedTiered, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::GroupedTiered::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::GroupedTiered::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::GroupedTiered::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::GroupedTiered::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::GroupedTiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Price::GroupedTiered::CreditAllocation)) }
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::GroupedTiered::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_tiered_config

        sig do
          returns(
            T.nilable(Orb::Price::GroupedTiered::InvoicingCycleConfiguration)
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedTiered::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::GroupedTiered::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::GroupedTiered::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::GroupedTiered::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::GroupedTiered::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::GroupedTiered::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::GroupedTiered::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::GroupedTiered::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(Orb::Price::GroupedTiered::DimensionalPriceConfiguration)
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedTiered::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::GroupedTiered::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::GroupedTiered::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::GroupedTiered::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::GroupedTiered::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedTiered::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::GroupedTiered::Item::OrHash,
            maximum: T.nilable(Orb::Price::GroupedTiered::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::GroupedTiered::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::GroupedTiered::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedTiered::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::GroupedTiered::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::GroupedTiered::BillingCycleConfiguration,
              cadence: Orb::Price::GroupedTiered::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::GroupedTiered::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_tiered_config: T::Hash[Symbol, T.anything],
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::GroupedTiered::InvoicingCycleConfiguration
                ),
              item: Orb::Price::GroupedTiered::Item,
              maximum: T.nilable(Orb::Price::GroupedTiered::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::GroupedTiered::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::GroupedTiered::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::GroupedTiered::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTiered::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTiered::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::GroupedTiered::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::GroupedTiered::Cadence::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Price::GroupedTiered::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::GroupedTiered::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::GroupedTiered::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::GroupedTiered::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::GroupedTiered::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::GroupedTiered::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTiered::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTiered::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::GroupedTiered::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::GroupedTiered::Maximum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::GroupedTiered::Minimum, Orb::Internal::AnyHash)
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::GroupedTiered::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::GroupedTiered::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::GroupedTiered::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::GroupedTiered::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTiered::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class TieredWithMinimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::TieredWithMinimum, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::TieredWithMinimum::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::TieredWithMinimum::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::TieredWithMinimum::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::TieredWithMinimum::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::TieredWithMinimum::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::TieredWithMinimum::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::TieredWithMinimum::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::TieredWithMinimum::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::TieredWithMinimum::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::TieredWithMinimum::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::TieredWithMinimum::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::TieredWithMinimum::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::TieredWithMinimum::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_minimum_config

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::TieredWithMinimum::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::TieredWithMinimum::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::TieredWithMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::TieredWithMinimum::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::TieredWithMinimum::Item::OrHash,
            maximum: T.nilable(Orb::Price::TieredWithMinimum::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::TieredWithMinimum::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::TieredWithMinimum::PriceType::OrSymbol,
            tiered_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::TieredWithMinimum::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::TieredWithMinimum::BillingCycleConfiguration,
              cadence: Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::TieredWithMinimum::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration
                ),
              item: Orb::Price::TieredWithMinimum::Item,
              maximum: T.nilable(Orb::Price::TieredWithMinimum::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::TieredWithMinimum::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::TieredWithMinimum::PriceType::TaggedSymbol,
              tiered_with_minimum_config: T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredWithMinimum::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::TieredWithMinimum::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredWithMinimum::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::TieredWithMinimum::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::TieredWithMinimum::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::TieredWithMinimum::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::TieredPackageWithMinimum, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(Orb::Price::TieredPackageWithMinimum::BillableMetric)
          )
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(
            Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration
          )
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(Orb::Price::TieredPackageWithMinimum::CreditAllocation)
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::TieredPackageWithMinimum::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::TieredPackageWithMinimum::Item::OrHash).void
        end
        attr_writer :item

        sig do
          returns(T.nilable(Orb::Price::TieredPackageWithMinimum::Maximum))
        end
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::TieredPackageWithMinimum::Maximum::OrHash)
          ).void
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

        sig do
          returns(T.nilable(Orb::Price::TieredPackageWithMinimum::Minimum))
        end
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::TieredPackageWithMinimum::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_package_with_minimum_config

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::TieredPackageWithMinimum::Item::OrHash,
            maximum:
              T.nilable(Orb::Price::TieredPackageWithMinimum::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::TieredPackageWithMinimum::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::TieredPackageWithMinimum::PriceType::OrSymbol,
            tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::TieredPackageWithMinimum::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration,
              cadence:
                Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(
                  Orb::Price::TieredPackageWithMinimum::CreditAllocation
                ),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                ),
              item: Orb::Price::TieredPackageWithMinimum::Item,
              maximum: T.nilable(Orb::Price::TieredPackageWithMinimum::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::TieredPackageWithMinimum::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol,
              tiered_package_with_minimum_config: T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredPackageWithMinimum::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredPackageWithMinimum::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class PackageWithAllocation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::PackageWithAllocation, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::PackageWithAllocation::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::PackageWithAllocation::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::PackageWithAllocation::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::PackageWithAllocation::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(Orb::Price::PackageWithAllocation::CreditAllocation)
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::PackageWithAllocation::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::PackageWithAllocation::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::PackageWithAllocation::Item::OrHash).void
        end
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::PackageWithAllocation::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::PackageWithAllocation::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::PackageWithAllocation::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::PackageWithAllocation::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::PackageWithAllocation::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::PackageWithAllocation::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::PackageWithAllocation::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::PackageWithAllocation::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::PackageWithAllocation::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::PackageWithAllocation::Item::OrHash,
            maximum:
              T.nilable(Orb::Price::PackageWithAllocation::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::PackageWithAllocation::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            package_with_allocation_config: T::Hash[Symbol, T.anything],
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::PackageWithAllocation::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::PackageWithAllocation::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::PackageWithAllocation::BillingCycleConfiguration,
              cadence: Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::PackageWithAllocation::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration
                ),
              item: Orb::Price::PackageWithAllocation::Item,
              maximum: T.nilable(Orb::Price::PackageWithAllocation::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::PackageWithAllocation::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              package_with_allocation_config: T::Hash[Symbol, T.anything],
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::PackageWithAllocation::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::PackageWithAllocation::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::PackageWithAllocation::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::PackageWithAllocation::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::PackageWithAllocation::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::PackageWithAllocation::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class UnitWithPercent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::UnitWithPercent, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::Price::UnitWithPercent::BillableMetric)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::UnitWithPercent::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::Price::UnitWithPercent::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::UnitWithPercent::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::UnitWithPercent::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::UnitWithPercent::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::UnitWithPercent::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(Orb::Price::UnitWithPercent::InvoicingCycleConfiguration)
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::UnitWithPercent::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::UnitWithPercent::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::UnitWithPercent::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::UnitWithPercent::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::UnitWithPercent::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::UnitWithPercent::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::UnitWithPercent::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_percent_config

        sig do
          returns(
            T.nilable(
              Orb::Price::UnitWithPercent::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::UnitWithPercent::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::UnitWithPercent::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::UnitWithPercent::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::UnitWithPercent::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(Orb::Price::UnitWithPercent::CreditAllocation::OrHash),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::UnitWithPercent::Item::OrHash,
            maximum: T.nilable(Orb::Price::UnitWithPercent::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::UnitWithPercent::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::UnitWithPercent::PriceType::OrSymbol,
            unit_with_percent_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::UnitWithPercent::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::UnitWithPercent::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::UnitWithPercent::BillingCycleConfiguration,
              cadence: Orb::Price::UnitWithPercent::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::UnitWithPercent::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::UnitWithPercent::InvoicingCycleConfiguration
                ),
              item: Orb::Price::UnitWithPercent::Item,
              maximum: T.nilable(Orb::Price::UnitWithPercent::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::UnitWithPercent::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::UnitWithPercent::PriceType::TaggedSymbol,
              unit_with_percent_config: T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::UnitWithPercent::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::UnitWithPercent::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::UnitWithPercent::Cadence::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Price::UnitWithPercent::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::UnitWithPercent::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::UnitWithPercent::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::UnitWithPercent::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::UnitWithPercent::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::UnitWithPercent::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::UnitWithPercent::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::UnitWithPercent::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::UnitWithPercent::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::UnitWithPercent::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::UnitWithPercent::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class MatrixWithAllocation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::MatrixWithAllocation, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::MatrixWithAllocation::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::MatrixWithAllocation::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::MatrixWithAllocation::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::MatrixWithAllocation::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::MatrixWithAllocation::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::MatrixWithAllocation::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::MatrixWithAllocation::Item::OrHash).void
        end
        attr_writer :item

        sig do
          returns(Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig)
        end
        attr_reader :matrix_with_allocation_config

        sig do
          params(
            matrix_with_allocation_config:
              Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::OrHash
          ).void
        end
        attr_writer :matrix_with_allocation_config

        sig { returns(T.nilable(Orb::Price::MatrixWithAllocation::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::MatrixWithAllocation::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::MatrixWithAllocation::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::MatrixWithAllocation::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::MatrixWithAllocation::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::MatrixWithAllocation::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::MatrixWithAllocation::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::MatrixWithAllocation::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::MatrixWithAllocation::Item::OrHash,
            matrix_with_allocation_config:
              Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::OrHash,
            maximum:
              T.nilable(Orb::Price::MatrixWithAllocation::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::MatrixWithAllocation::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::MatrixWithAllocation::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::MatrixWithAllocation::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::MatrixWithAllocation::BillingCycleConfiguration,
              cadence: Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::MatrixWithAllocation::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                ),
              item: Orb::Price::MatrixWithAllocation::Item,
              matrix_with_allocation_config:
                Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
              maximum: T.nilable(Orb::Price::MatrixWithAllocation::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::MatrixWithAllocation::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::MatrixWithAllocation::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MatrixWithAllocation::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig,
                Orb::Internal::AnyHash
              )
            end

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
          sig do
            returns(
              T::Array[
                Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
              ]
            )
          end
          attr_accessor :matrix_values

          sig do
            params(
              allocation: Float,
              default_unit_amount: String,
              dimensions: T::Array[T.nilable(String)],
              matrix_values:
                T::Array[
                  Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue::OrHash
                ]
            ).returns(T.attached_class)
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
          )
          end

          sig do
            override.returns(
              {
                allocation: Float,
                default_unit_amount: String,
                dimensions: T::Array[T.nilable(String)],
                matrix_values:
                  T::Array[
                    Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
                  ]
              }
            )
          end
          def to_hash
          end

          class MatrixValue < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue,
                  Orb::Internal::AnyHash
                )
              end

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
            )
            end

            sig do
              override.returns(
                {
                  dimension_values: T::Array[T.nilable(String)],
                  unit_amount: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MatrixWithAllocation::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::MatrixWithAllocation::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::MatrixWithAllocation::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::MatrixWithAllocation::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class TieredWithProration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::TieredWithProration, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::TieredWithProration::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::TieredWithProration::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::TieredWithProration::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::TieredWithProration::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::TieredWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::TieredWithProration::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::TieredWithProration::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredWithProration::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredWithProration::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::TieredWithProration::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::TieredWithProration::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::TieredWithProration::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::TieredWithProration::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::TieredWithProration::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::TieredWithProration::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::TieredWithProration::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tiered_with_proration_config

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredWithProration::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredWithProration::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::TieredWithProration::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::TieredWithProration::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::TieredWithProration::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::TieredWithProration::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::TieredWithProration::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::TieredWithProration::Item::OrHash,
            maximum:
              T.nilable(Orb::Price::TieredWithProration::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::TieredWithProration::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::TieredWithProration::PriceType::OrSymbol,
            tiered_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::TieredWithProration::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::TieredWithProration::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::TieredWithProration::BillingCycleConfiguration,
              cadence: Orb::Price::TieredWithProration::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::TieredWithProration::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::TieredWithProration::InvoicingCycleConfiguration
                ),
              item: Orb::Price::TieredWithProration::Item,
              maximum: T.nilable(Orb::Price::TieredWithProration::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::TieredWithProration::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::TieredWithProration::PriceType::TaggedSymbol,
              tiered_with_proration_config: T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::TieredWithProration::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredWithProration::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::TieredWithProration::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::TieredWithProration::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::TieredWithProration::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::TieredWithProration::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::TieredWithProration::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::TieredWithProration::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::TieredWithProration::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredWithProration::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::TieredWithProration::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::TieredWithProration::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::TieredWithProration::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class UnitWithProration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::UnitWithProration, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::UnitWithProration::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::UnitWithProration::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::UnitWithProration::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::UnitWithProration::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::UnitWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::UnitWithProration::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::UnitWithProration::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::UnitWithProration::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::UnitWithProration::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::UnitWithProration::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::UnitWithProration::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::UnitWithProration::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::UnitWithProration::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::UnitWithProration::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::UnitWithProration::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::UnitWithProration::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :unit_with_proration_config

        sig do
          returns(
            T.nilable(
              Orb::Price::UnitWithProration::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::UnitWithProration::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::UnitWithProration::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::UnitWithProration::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::UnitWithProration::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::UnitWithProration::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::UnitWithProration::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::UnitWithProration::Item::OrHash,
            maximum: T.nilable(Orb::Price::UnitWithProration::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::UnitWithProration::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::UnitWithProration::PriceType::OrSymbol,
            unit_with_proration_config: T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::UnitWithProration::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::UnitWithProration::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::UnitWithProration::BillingCycleConfiguration,
              cadence: Orb::Price::UnitWithProration::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::UnitWithProration::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::UnitWithProration::InvoicingCycleConfiguration
                ),
              item: Orb::Price::UnitWithProration::Item,
              maximum: T.nilable(Orb::Price::UnitWithProration::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::UnitWithProration::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::UnitWithProration::PriceType::TaggedSymbol,
              unit_with_proration_config: T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::UnitWithProration::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::UnitWithProration::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::UnitWithProration::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::UnitWithProration::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::UnitWithProration::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::UnitWithProration::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::UnitWithProration::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::UnitWithProration::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::UnitWithProration::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::UnitWithProration::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::UnitWithProration::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::UnitWithProration::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::UnitWithProration::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::UnitWithProration::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedAllocation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::GroupedAllocation, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::GroupedAllocation::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::GroupedAllocation::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::GroupedAllocation::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::GroupedAllocation::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::GroupedAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::GroupedAllocation::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::GroupedAllocation::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_allocation_config

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedAllocation::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::GroupedAllocation::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::GroupedAllocation::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::GroupedAllocation::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::GroupedAllocation::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::GroupedAllocation::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::GroupedAllocation::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::GroupedAllocation::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedAllocation::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedAllocation::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::GroupedAllocation::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::GroupedAllocation::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::GroupedAllocation::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::GroupedAllocation::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_allocation_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::GroupedAllocation::Item::OrHash,
            maximum: T.nilable(Orb::Price::GroupedAllocation::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::GroupedAllocation::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::GroupedAllocation::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedAllocation::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::GroupedAllocation::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::GroupedAllocation::BillingCycleConfiguration,
              cadence: Orb::Price::GroupedAllocation::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::GroupedAllocation::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_allocation_config: T::Hash[Symbol, T.anything],
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::GroupedAllocation::InvoicingCycleConfiguration
                ),
              item: Orb::Price::GroupedAllocation::Item,
              maximum: T.nilable(Orb::Price::GroupedAllocation::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::GroupedAllocation::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedAllocation::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::GroupedAllocation::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedAllocation::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::GroupedAllocation::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::GroupedAllocation::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::GroupedAllocation::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::GroupedAllocation::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::GroupedAllocation::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::GroupedAllocation::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::GroupedAllocation::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::GroupedAllocation::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedAllocation::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::GroupedAllocation::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::GroupedAllocation::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::GroupedAllocation::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Price::GroupedWithProratedMinimum,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(Orb::Price::GroupedWithProratedMinimum::BillableMetric)
          )
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(
            Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
          )
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(Orb::Price::GroupedWithProratedMinimum::CreditAllocation)
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_with_prorated_minimum_config

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::GroupedWithProratedMinimum::Item) }
        attr_reader :item

        sig do
          params(
            item: Orb::Price::GroupedWithProratedMinimum::Item::OrHash
          ).void
        end
        attr_writer :item

        sig do
          returns(T.nilable(Orb::Price::GroupedWithProratedMinimum::Maximum))
        end
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::GroupedWithProratedMinimum::Maximum::OrHash)
          ).void
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

        sig do
          returns(T.nilable(Orb::Price::GroupedWithProratedMinimum::Minimum))
        end
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::GroupedWithProratedMinimum::Minimum::OrHash)
          ).void
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

        sig do
          returns(
            Orb::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol
          )
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::GroupedWithProratedMinimum::Item::OrHash,
            maximum:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::Maximum::OrHash
              ),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::Minimum::OrHash
              ),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::GroupedWithProratedMinimum::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(
                  Orb::Price::GroupedWithProratedMinimum::BillableMetric
                ),
              billing_cycle_configuration:
                Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
              cadence:
                Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(
                  Orb::Price::GroupedWithProratedMinimum::CreditAllocation
                ),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                ),
              item: Orb::Price::GroupedWithProratedMinimum::Item,
              maximum:
                T.nilable(Orb::Price::GroupedWithProratedMinimum::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum:
                T.nilable(Orb::Price::GroupedWithProratedMinimum::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithProratedMinimum::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithProratedMinimum::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::GroupedWithMeteredMinimum, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(Orb::Price::GroupedWithMeteredMinimum::BillableMetric)
          )
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(
            Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
          )
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(Orb::Price::GroupedWithMeteredMinimum::CreditAllocation)
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_with_metered_minimum_config

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::GroupedWithMeteredMinimum::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::GroupedWithMeteredMinimum::Item::OrHash).void
        end
        attr_writer :item

        sig do
          returns(T.nilable(Orb::Price::GroupedWithMeteredMinimum::Maximum))
        end
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::GroupedWithMeteredMinimum::Maximum::OrHash)
          ).void
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

        sig do
          returns(T.nilable(Orb::Price::GroupedWithMeteredMinimum::Minimum))
        end
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::GroupedWithMeteredMinimum::Minimum::OrHash)
          ).void
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

        sig do
          returns(
            Orb::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol
          )
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::GroupedWithMeteredMinimum::Item::OrHash,
            maximum:
              T.nilable(Orb::Price::GroupedWithMeteredMinimum::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::GroupedWithMeteredMinimum::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::GroupedWithMeteredMinimum::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(
                  Orb::Price::GroupedWithMeteredMinimum::BillableMetric
                ),
              billing_cycle_configuration:
                Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
              cadence:
                Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(
                  Orb::Price::GroupedWithMeteredMinimum::CreditAllocation
                ),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                ),
              item: Orb::Price::GroupedWithMeteredMinimum::Item,
              maximum:
                T.nilable(Orb::Price::GroupedWithMeteredMinimum::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum:
                T.nilable(Orb::Price::GroupedWithMeteredMinimum::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithMeteredMinimum::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithMeteredMinimum::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::MatrixWithDisplayName, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::MatrixWithDisplayName::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(Orb::Price::MatrixWithDisplayName::CreditAllocation)
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::MatrixWithDisplayName::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::MatrixWithDisplayName::Item::OrHash).void
        end
        attr_writer :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :matrix_with_display_name_config

        sig { returns(T.nilable(Orb::Price::MatrixWithDisplayName::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::MatrixWithDisplayName::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::MatrixWithDisplayName::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::MatrixWithDisplayName::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::MatrixWithDisplayName::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::MatrixWithDisplayName::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::MatrixWithDisplayName::Item::OrHash,
            matrix_with_display_name_config: T::Hash[Symbol, T.anything],
            maximum:
              T.nilable(Orb::Price::MatrixWithDisplayName::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::MatrixWithDisplayName::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::MatrixWithDisplayName::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::MatrixWithDisplayName::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration,
              cadence: Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::MatrixWithDisplayName::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                ),
              item: Orb::Price::MatrixWithDisplayName::Item,
              matrix_with_display_name_config: T::Hash[Symbol, T.anything],
              maximum: T.nilable(Orb::Price::MatrixWithDisplayName::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::MatrixWithDisplayName::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::MatrixWithDisplayName::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MatrixWithDisplayName::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MatrixWithDisplayName::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::MatrixWithDisplayName::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::MatrixWithDisplayName::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::MatrixWithDisplayName::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class BulkWithProration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::BulkWithProration, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::BulkWithProration::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(Orb::Price::BulkWithProration::BillableMetric::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::BulkWithProration::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::BulkWithProration::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :bulk_with_proration_config

        sig { returns(Orb::Price::BulkWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::BulkWithProration::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(Orb::Price::BulkWithProration::CreditAllocation::OrHash)
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::BulkWithProration::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::BulkWithProration::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::BulkWithProration::Item) }
        attr_reader :item

        sig { params(item: Orb::Price::BulkWithProration::Item::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::BulkWithProration::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum: T.nilable(Orb::Price::BulkWithProration::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::BulkWithProration::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum: T.nilable(Orb::Price::BulkWithProration::Minimum::OrHash)
          ).void
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

        sig { returns(Orb::Price::BulkWithProration::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::BulkWithProration::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::BulkWithProration::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(Orb::Price::BulkWithProration::BillableMetric::OrHash),
            billing_cycle_configuration:
              Orb::Price::BulkWithProration::BillingCycleConfiguration::OrHash,
            bulk_with_proration_config: T::Hash[Symbol, T.anything],
            cadence: Orb::Price::BulkWithProration::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::BulkWithProration::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::BulkWithProration::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::BulkWithProration::Item::OrHash,
            maximum: T.nilable(Orb::Price::BulkWithProration::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Price::BulkWithProration::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::BulkWithProration::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::BulkWithProration::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::BulkWithProration::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::BulkWithProration::BillingCycleConfiguration,
              bulk_with_proration_config: T::Hash[Symbol, T.anything],
              cadence: Orb::Price::BulkWithProration::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::BulkWithProration::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::BulkWithProration::InvoicingCycleConfiguration
                ),
              item: Orb::Price::BulkWithProration::Item,
              maximum: T.nilable(Orb::Price::BulkWithProration::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::BulkWithProration::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::BulkWithProration::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::BulkWithProration::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::BulkWithProration::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::BulkWithProration::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::BulkWithProration::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::BulkWithProration::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::BulkWithProration::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::BulkWithProration::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::BulkWithProration::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::BulkWithProration::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::BulkWithProration::Item, Orb::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::BulkWithProration::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::BulkWithProration::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::BulkWithProration::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::BulkWithProration::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class GroupedTieredPackage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::GroupedTieredPackage, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::GroupedTieredPackage::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::GroupedTieredPackage::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::GroupedTieredPackage::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(T.nilable(Orb::Price::GroupedTieredPackage::CreditAllocation))
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::GroupedTieredPackage::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :grouped_tiered_package_config

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::GroupedTieredPackage::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::GroupedTieredPackage::Item::OrHash).void
        end
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::GroupedTieredPackage::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::GroupedTieredPackage::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::GroupedTieredPackage::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::GroupedTieredPackage::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::GroupedTieredPackage::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::GroupedTieredPackage::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::GroupedTieredPackage::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::GroupedTieredPackage::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            grouped_tiered_package_config: T::Hash[Symbol, T.anything],
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::GroupedTieredPackage::Item::OrHash,
            maximum:
              T.nilable(Orb::Price::GroupedTieredPackage::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::GroupedTieredPackage::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::GroupedTieredPackage::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::GroupedTieredPackage::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::GroupedTieredPackage::BillingCycleConfiguration,
              cadence: Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::GroupedTieredPackage::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_tiered_package_config: T::Hash[Symbol, T.anything],
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                ),
              item: Orb::Price::GroupedTieredPackage::Item,
              maximum: T.nilable(Orb::Price::GroupedTieredPackage::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::GroupedTieredPackage::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedTieredPackage::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedTieredPackage::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedTieredPackage::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::GroupedTieredPackage::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::GroupedTieredPackage::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedTieredPackage::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::MaxGroupTieredPackage, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::MaxGroupTieredPackage::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(Orb::Price::MaxGroupTieredPackage::CreditAllocation)
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::MaxGroupTieredPackage::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::MaxGroupTieredPackage::Item::OrHash).void
        end
        attr_writer :item

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :max_group_tiered_package_config

        sig { returns(T.nilable(Orb::Price::MaxGroupTieredPackage::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::MaxGroupTieredPackage::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::MaxGroupTieredPackage::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::MaxGroupTieredPackage::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::MaxGroupTieredPackage::Item::OrHash,
            max_group_tiered_package_config: T::Hash[Symbol, T.anything],
            maximum:
              T.nilable(Orb::Price::MaxGroupTieredPackage::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::MaxGroupTieredPackage::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::MaxGroupTieredPackage::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::MaxGroupTieredPackage::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
              cadence: Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::MaxGroupTieredPackage::CreditAllocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                ),
              item: Orb::Price::MaxGroupTieredPackage::Item,
              max_group_tiered_package_config: T::Hash[Symbol, T.anything],
              maximum: T.nilable(Orb::Price::MaxGroupTieredPackage::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::MaxGroupTieredPackage::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MaxGroupTieredPackage::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MaxGroupTieredPackage::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Price::ScalableMatrixWithUnitPricing,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric)
          )
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(
            Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
          )
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation
            )
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::ScalableMatrixWithUnitPricing::Item) }
        attr_reader :item

        sig do
          params(
            item: Orb::Price::ScalableMatrixWithUnitPricing::Item::OrHash
          ).void
        end
        attr_writer :item

        sig do
          returns(T.nilable(Orb::Price::ScalableMatrixWithUnitPricing::Maximum))
        end
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::Maximum::OrHash
              )
          ).void
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

        sig do
          returns(T.nilable(Orb::Price::ScalableMatrixWithUnitPricing::Minimum))
        end
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::Minimum::OrHash
              )
          ).void
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

        sig do
          returns(
            Orb::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol
          )
        end
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_unit_pricing_config

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::OrHash,
            cadence:
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::ScalableMatrixWithUnitPricing::Item::OrHash,
            maximum:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::Maximum::OrHash
              ),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::Minimum::OrHash
              ),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::ScalableMatrixWithUnitPricing::PriceType::OrSymbol,
            scalable_matrix_with_unit_pricing_config:
              T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(
                  Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric
                ),
              billing_cycle_configuration:
                Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
              cadence:
                Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(
                  Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation
                ),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                ),
              item: Orb::Price::ScalableMatrixWithUnitPricing::Item,
              maximum:
                T.nilable(Orb::Price::ScalableMatrixWithUnitPricing::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum:
                T.nilable(Orb::Price::ScalableMatrixWithUnitPricing::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol,
              scalable_matrix_with_unit_pricing_config:
                T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::ScalableMatrixWithUnitPricing::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Price::ScalableMatrixWithUnitPricing::PriceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Price::ScalableMatrixWithTieredPricing,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric
            )
          )
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(
            Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
          )
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation
            )
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::ScalableMatrixWithTieredPricing::Item) }
        attr_reader :item

        sig do
          params(
            item: Orb::Price::ScalableMatrixWithTieredPricing::Item::OrHash
          ).void
        end
        attr_writer :item

        sig do
          returns(
            T.nilable(Orb::Price::ScalableMatrixWithTieredPricing::Maximum)
          )
        end
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::Maximum::OrHash
              )
          ).void
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

        sig do
          returns(
            T.nilable(Orb::Price::ScalableMatrixWithTieredPricing::Minimum)
          )
        end
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::Minimum::OrHash
              )
          ).void
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

        sig do
          returns(
            Orb::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol
          )
        end
        attr_accessor :price_type

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :scalable_matrix_with_tiered_pricing_config

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::OrHash,
            cadence:
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation::OrHash
              ),
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::ScalableMatrixWithTieredPricing::Item::OrHash,
            maximum:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::Maximum::OrHash
              ),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::Minimum::OrHash
              ),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::ScalableMatrixWithTieredPricing::PriceType::OrSymbol,
            scalable_matrix_with_tiered_pricing_config:
              T::Hash[Symbol, T.anything],
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(
                  Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric
                ),
              billing_cycle_configuration:
                Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
              cadence:
                Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(
                  Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation
                ),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                ),
              item: Orb::Price::ScalableMatrixWithTieredPricing::Item,
              maximum:
                T.nilable(Orb::Price::ScalableMatrixWithTieredPricing::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum:
                T.nilable(Orb::Price::ScalableMatrixWithTieredPricing::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol,
              scalable_matrix_with_tiered_pricing_config:
                T::Hash[Symbol, T.anything],
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Price::ScalableMatrixWithTieredPricing::Cadence
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Price::ScalableMatrixWithTieredPricing::PriceType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::CumulativeGroupedBulk, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T.nilable(Orb::Price::CumulativeGroupedBulk::BillableMetric))
        end
        attr_reader :billable_metric

        sig do
          params(
            billable_metric:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::BillableMetric::OrHash
              )
          ).void
        end
        attr_writer :billable_metric

        sig do
          returns(Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration)
        end
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration:
              Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T.nilable(Orb::Price::CumulativeGroupedBulk::CreditAllocation)
          )
        end
        attr_reader :credit_allocation

        sig do
          params(
            credit_allocation:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::CreditAllocation::OrHash
              )
          ).void
        end
        attr_writer :credit_allocation

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :cumulative_grouped_bulk_config

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig do
          returns(
            T.nilable(
              Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
            )
          )
        end
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::OrHash
              )
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        sig { returns(Orb::Price::CumulativeGroupedBulk::Item) }
        attr_reader :item

        sig do
          params(item: Orb::Price::CumulativeGroupedBulk::Item::OrHash).void
        end
        attr_writer :item

        sig { returns(T.nilable(Orb::Price::CumulativeGroupedBulk::Maximum)) }
        attr_reader :maximum

        sig do
          params(
            maximum:
              T.nilable(Orb::Price::CumulativeGroupedBulk::Maximum::OrHash)
          ).void
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

        sig { returns(T.nilable(Orb::Price::CumulativeGroupedBulk::Minimum)) }
        attr_reader :minimum

        sig do
          params(
            minimum:
              T.nilable(Orb::Price::CumulativeGroupedBulk::Minimum::OrHash)
          ).void
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

        sig do
          returns(Orb::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        sig do
          returns(
            T.nilable(
              Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
            )
          )
        end
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration::OrHash
              )
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::BillableMetric::OrHash
              ),
            billing_cycle_configuration:
              Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::OrHash,
            cadence: Orb::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
            conversion_rate: T.nilable(Float),
            created_at: Time,
            credit_allocation:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::CreditAllocation::OrHash
              ),
            cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
            currency: String,
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::OrHash
              ),
            item: Orb::Price::CumulativeGroupedBulk::Item::OrHash,
            maximum:
              T.nilable(Orb::Price::CumulativeGroupedBulk::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum:
              T.nilable(Orb::Price::CumulativeGroupedBulk::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::CumulativeGroupedBulk::PriceType::OrSymbol,
            dimensional_price_configuration:
              T.nilable(
                Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration::OrHash
              ),
            model_type: Symbol
          ).returns(T.attached_class)
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
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric:
                T.nilable(Orb::Price::CumulativeGroupedBulk::BillableMetric),
              billing_cycle_configuration:
                Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
              cadence: Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol,
              conversion_rate: T.nilable(Float),
              created_at: Time,
              credit_allocation:
                T.nilable(Orb::Price::CumulativeGroupedBulk::CreditAllocation),
              cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(
                  Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                ),
              item: Orb::Price::CumulativeGroupedBulk::Item,
              maximum: T.nilable(Orb::Price::CumulativeGroupedBulk::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Price::CumulativeGroupedBulk::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol,
              dimensional_price_configuration:
                T.nilable(
                  Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
                )
            }
          )
        end
        def to_hash
        end

        class BillableMetric < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::BillableMetric,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id:)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::CumulativeGroupedBulk::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CreditAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::CreditAllocation,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :allows_rollover

          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(allows_rollover: T::Boolean, currency: String).returns(
              T.attached_class
            )
          end
          def self.new(allows_rollover:, currency:)
          end

          sig do
            override.returns({ allows_rollover: T::Boolean, currency: String })
          end
          def to_hash
          end
        end

        class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :duration

          sig do
            returns(
              Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
            )
          end
          attr_accessor :duration_unit

          sig do
            params(
              duration: Integer,
              duration_unit:
                Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(duration:, duration_unit:)
          end

          sig do
            override.returns(
              {
                duration: Integer,
                duration_unit:
                  Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module DurationUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Item < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::Item,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({ id: String, name: String }) }
          def to_hash
          end
        end

        class Maximum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::Maximum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this maximum amount applies to. For plan/plan phase
          # maximums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Maximum amount applied
          sig { returns(String) }
          attr_accessor :maximum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              maximum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this maximum amount applies to. For plan/plan phase
            # maximums, this can be a subset of prices.
            applies_to_price_ids:,
            # Maximum amount applied
            maximum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], maximum_amount: String }
            )
          end
          def to_hash
          end
        end

        class Minimum < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::Minimum,
                Orb::Internal::AnyHash
              )
            end

          # List of price_ids that this minimum amount applies to. For plan/plan phase
          # minimums, this can be a subset of prices.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # Minimum amount applied
          sig { returns(String) }
          attr_accessor :minimum_amount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              minimum_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of price_ids that this minimum amount applies to. For plan/plan phase
            # minimums, this can be a subset of prices.
            applies_to_price_ids:,
            # Minimum amount applied
            minimum_amount:
          )
          end

          sig do
            override.returns(
              { applies_to_price_ids: T::Array[String], minimum_amount: String }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::CumulativeGroupedBulk::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration,
                Orb::Internal::AnyHash
              )
            end

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

          sig do
            override.returns(
              {
                dimension_values: T::Array[String],
                dimensional_price_group_id: String
              }
            )
          end
          def to_hash
          end
        end
      end

      sig { override.returns(T::Array[Orb::Price::Variants]) }
      def self.variants
      end
    end
  end
end
