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
            Orb::Price::Tiered,
            Orb::Price::Bulk,
            Orb::Price::BulkWithFilters,
            Orb::Price::Package,
            Orb::Price::Matrix,
            Orb::Price::ThresholdTotalAmount,
            Orb::Price::TieredPackage,
            Orb::Price::TieredWithMinimum,
            Orb::Price::GroupedTiered,
            Orb::Price::TieredPackageWithMinimum,
            Orb::Price::PackageWithAllocation,
            Orb::Price::UnitWithPercent,
            Orb::Price::MatrixWithAllocation,
            Orb::Price::TieredWithProration,
            Orb::Price::UnitWithProration,
            Orb::Price::GroupedAllocation,
            Orb::Price::BulkWithProration,
            Orb::Price::GroupedWithProratedMinimum,
            Orb::Price::GroupedWithMeteredMinimum,
            Orb::Price::GroupedWithMinMaxThresholds,
            Orb::Price::MatrixWithDisplayName,
            Orb::Price::GroupedTieredPackage,
            Orb::Price::MaxGroupTieredPackage,
            Orb::Price::ScalableMatrixWithUnitPricing,
            Orb::Price::ScalableMatrixWithTieredPricing,
            Orb::Price::CumulativeGroupedBulk,
            Orb::Price::CumulativeGroupedAllocation,
            Orb::Price::MinimumComposite,
            Orb::Price::Percent,
            Orb::Price::EventOutput
          )
        end

      class Unit < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Unit, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Unit::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::Unit::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(T.nilable(T::Array[Orb::Price::Unit::CompositePriceFilter]))
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(T.nilable(Orb::Price::Unit::ConversionRateConfig::Variants))
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Unit::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for unit pricing
        sig { returns(Orb::UnitConfig) }
        attr_reader :unit_config

        sig { params(unit_config: Orb::UnitConfig::OrHash).void }
        attr_writer :unit_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::Unit::BillingMode::OrSymbol,
            cadence: Orb::Price::Unit::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[Orb::Price::Unit::CompositePriceFilter::OrHash]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Unit::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            unit_config: Orb::UnitConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for unit pricing
          unit_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :unit
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode: Orb::Price::Unit::BillingMode::TaggedSymbol,
              cadence: Orb::Price::Unit::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::Price::Unit::CompositePriceFilter]),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(Orb::Price::Unit::ConversionRateConfig::Variants),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Unit::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              unit_config: Orb::UnitConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Unit::BillingMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(:in_advance, Orb::Price::Unit::BillingMode::TaggedSymbol)
          IN_ARREAR =
            T.let(:in_arrear, Orb::Price::Unit::BillingMode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Unit::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Unit::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol)
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::Unit::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field: Orb::Price::Unit::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::Unit::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::Unit::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Unit::CompositePriceFilter::Field)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Unit::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Unit::CompositePriceFilter::Operator)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::Unit::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::Unit::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Unit::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(:composite_price, Orb::Price::Unit::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Unit::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Tiered < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Tiered, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Tiered::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::Tiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(T.nilable(T::Array[Orb::Price::Tiered::CompositePriceFilter]))
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(T.nilable(Orb::Price::Tiered::ConversionRateConfig::Variants))
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Tiered::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for tiered pricing
        sig { returns(Orb::TieredConfig) }
        attr_reader :tiered_config

        sig { params(tiered_config: Orb::TieredConfig::OrHash).void }
        attr_writer :tiered_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::Tiered::BillingMode::OrSymbol,
            cadence: Orb::Price::Tiered::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[Orb::Price::Tiered::CompositePriceFilter::OrHash]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Tiered::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            tiered_config: Orb::TieredConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for tiered pricing
          tiered_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :tiered
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode: Orb::Price::Tiered::BillingMode::TaggedSymbol,
              cadence: Orb::Price::Tiered::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::Price::Tiered::CompositePriceFilter]),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(Orb::Price::Tiered::ConversionRateConfig::Variants),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Tiered::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              tiered_config: Orb::TieredConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Tiered::BillingMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(:in_advance, Orb::Price::Tiered::BillingMode::TaggedSymbol)
          IN_ARREAR =
            T.let(:in_arrear, Orb::Price::Tiered::BillingMode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Tiered::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Tiered::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::Tiered::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field: Orb::Price::Tiered::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::Tiered::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::Tiered::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Tiered::CompositePriceFilter::Field)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Tiered::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Tiered::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::Tiered::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::Tiered::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Tiered::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(:composite_price, Orb::Price::Tiered::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Tiered::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Bulk < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Bulk, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Bulk::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        # Configuration for bulk pricing
        sig { returns(Orb::BulkConfig) }
        attr_reader :bulk_config

        sig { params(bulk_config: Orb::BulkConfig::OrHash).void }
        attr_writer :bulk_config

        sig { returns(Orb::Price::Bulk::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(T.nilable(T::Array[Orb::Price::Bulk::CompositePriceFilter]))
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(T.nilable(Orb::Price::Bulk::ConversionRateConfig::Variants))
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Bulk::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::Bulk::BillingMode::OrSymbol,
            bulk_config: Orb::BulkConfig::OrHash,
            cadence: Orb::Price::Bulk::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[Orb::Price::Bulk::CompositePriceFilter::OrHash]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Bulk::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          # Configuration for bulk pricing
          bulk_config:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :bulk
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode: Orb::Price::Bulk::BillingMode::TaggedSymbol,
              bulk_config: Orb::BulkConfig,
              cadence: Orb::Price::Bulk::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::Price::Bulk::CompositePriceFilter]),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(Orb::Price::Bulk::ConversionRateConfig::Variants),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Bulk::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Bulk::BillingMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(:in_advance, Orb::Price::Bulk::BillingMode::TaggedSymbol)
          IN_ARREAR =
            T.let(:in_arrear, Orb::Price::Bulk::BillingMode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Bulk::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Bulk::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol)
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::Bulk::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field: Orb::Price::Bulk::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::Bulk::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::Bulk::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Bulk::CompositePriceFilter::Field)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Bulk::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Bulk::CompositePriceFilter::Operator)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::Bulk::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::Bulk::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Bulk::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(:composite_price, Orb::Price::Bulk::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Bulk::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class BulkWithFilters < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::BulkWithFilters, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::BulkWithFilters::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        # Configuration for bulk_with_filters pricing
        sig { returns(Orb::Price::BulkWithFilters::BulkWithFiltersConfig) }
        attr_reader :bulk_with_filters_config

        sig do
          params(
            bulk_with_filters_config:
              Orb::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash
          ).void
        end
        attr_writer :bulk_with_filters_config

        sig { returns(Orb::Price::BulkWithFilters::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::BulkWithFilters::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::BulkWithFilters::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::BulkWithFilters::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::BulkWithFilters::BillingMode::OrSymbol,
            bulk_with_filters_config:
              Orb::Price::BulkWithFilters::BulkWithFiltersConfig::OrHash,
            cadence: Orb::Price::BulkWithFilters::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::BulkWithFilters::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::BulkWithFilters::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          # Configuration for bulk_with_filters pricing
          bulk_with_filters_config:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :bulk_with_filters
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::BulkWithFilters::BillingMode::TaggedSymbol,
              bulk_with_filters_config:
                Orb::Price::BulkWithFilters::BulkWithFiltersConfig,
              cadence: Orb::Price::BulkWithFilters::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::BulkWithFilters::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::BulkWithFilters::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::BulkWithFilters::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::BulkWithFilters::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::BulkWithFilters::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::BulkWithFilters::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::BulkWithFilters::BillingMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithFilters::BulkWithFiltersConfig,
                Orb::Internal::AnyHash
              )
            end

          # Property filters to apply (all must match)
          sig do
            returns(
              T::Array[
                Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
              ]
            )
          end
          attr_accessor :filters

          # Bulk tiers for rating based on total usage volume
          sig do
            returns(
              T::Array[Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Tier]
            )
          end
          attr_accessor :tiers

          # Configuration for bulk_with_filters pricing
          sig do
            params(
              filters:
                T::Array[
                  Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Filter::OrHash
                ],
              tiers:
                T::Array[
                  Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Property filters to apply (all must match)
            filters:,
            # Bulk tiers for rating based on total usage volume
            tiers:
          )
          end

          sig do
            override.returns(
              {
                filters:
                  T::Array[
                    Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Filter
                  ],
                tiers:
                  T::Array[
                    Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # Event property key to filter on
            sig { returns(String) }
            attr_accessor :property_key

            # Event property value to match
            sig { returns(String) }
            attr_accessor :property_value

            # Configuration for a single property filter
            sig do
              params(property_key: String, property_value: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Event property key to filter on
              property_key:,
              # Event property value to match
              property_value:
            )
            end

            sig do
              override.returns({ property_key: String, property_value: String })
            end
            def to_hash
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::BulkWithFilters::BulkWithFiltersConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            # Amount per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # The lower bound for this tier
            sig { returns(T.nilable(String)) }
            attr_accessor :tier_lower_bound

            # Configuration for a single bulk pricing tier
            sig do
              params(
                unit_amount: String,
                tier_lower_bound: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount per unit
              unit_amount:,
              # The lower bound for this tier
              tier_lower_bound: nil
            )
            end

            sig do
              override.returns(
                { unit_amount: String, tier_lower_bound: T.nilable(String) }
              )
            end
            def to_hash
            end
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::BulkWithFilters::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::BulkWithFilters::Cadence::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Price::BulkWithFilters::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::BulkWithFilters::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::BulkWithFilters::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::BulkWithFilters::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::BulkWithFilters::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::BulkWithFilters::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithFilters::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::BulkWithFilters::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::BulkWithFilters::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::BulkWithFilters::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::BulkWithFilters::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkWithFilters::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkWithFilters::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkWithFilters::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::BulkWithFilters::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::BulkWithFilters::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkWithFilters::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::BulkWithFilters::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::BulkWithFilters::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::BulkWithFilters::PriceType::TaggedSymbol
            )
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::BulkWithFilters::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::BulkWithFilters::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Package < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Package, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Package::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::Package::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(T::Array[Orb::Price::Package::CompositePriceFilter])
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(Orb::Price::Package::ConversionRateConfig::Variants)
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        # Configuration for package pricing
        sig { returns(Orb::PackageConfig) }
        attr_reader :package_config

        sig { params(package_config: Orb::PackageConfig::OrHash).void }
        attr_writer :package_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Package::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::Package::BillingMode::OrSymbol,
            cadence: Orb::Price::Package::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[Orb::Price::Package::CompositePriceFilter::OrHash]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            package_config: Orb::PackageConfig::OrHash,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Package::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # Configuration for package pricing
          package_config:,
          plan_phase_order:,
          price_type:,
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :package
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode: Orb::Price::Package::BillingMode::TaggedSymbol,
              cadence: Orb::Price::Package::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::Price::Package::CompositePriceFilter]),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(Orb::Price::Package::ConversionRateConfig::Variants),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              package_config: Orb::PackageConfig,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Package::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Package::BillingMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(:in_advance, Orb::Price::Package::BillingMode::TaggedSymbol)
          IN_ARREAR =
            T.let(:in_arrear, Orb::Price::Package::BillingMode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Package::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Package::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::Package::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field: Orb::Price::Package::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::Package::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::Package::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Package::CompositePriceFilter::Field)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Package::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Package::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::Package::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::Package::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Package::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::Package::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::Package::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Matrix < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Matrix, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Matrix::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::Matrix::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(T.nilable(T::Array[Orb::Price::Matrix::CompositePriceFilter]))
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(T.nilable(Orb::Price::Matrix::ConversionRateConfig::Variants))
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        # Configuration for matrix pricing
        sig { returns(Orb::MatrixConfig) }
        attr_reader :matrix_config

        sig { params(matrix_config: Orb::MatrixConfig::OrHash).void }
        attr_writer :matrix_config

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Matrix::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::Matrix::BillingMode::OrSymbol,
            cadence: Orb::Price::Matrix::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[Orb::Price::Matrix::CompositePriceFilter::OrHash]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            matrix_config: Orb::MatrixConfig::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Matrix::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
          item:,
          # Configuration for matrix pricing
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :matrix
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode: Orb::Price::Matrix::BillingMode::TaggedSymbol,
              cadence: Orb::Price::Matrix::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::Price::Matrix::CompositePriceFilter]),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(Orb::Price::Matrix::ConversionRateConfig::Variants),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              matrix_config: Orb::MatrixConfig,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Matrix::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Matrix::BillingMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(:in_advance, Orb::Price::Matrix::BillingMode::TaggedSymbol)
          IN_ARREAR =
            T.let(:in_arrear, Orb::Price::Matrix::BillingMode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Matrix::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Matrix::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::Matrix::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field: Orb::Price::Matrix::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::Matrix::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::Matrix::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Matrix::CompositePriceFilter::Field)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Matrix::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Matrix::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::Matrix::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::Matrix::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Matrix::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(:composite_price, Orb::Price::Matrix::PriceType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Matrix::PriceType::TaggedSymbol]
            )
          end
          def self.values
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::ThresholdTotalAmount::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig { returns(Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::ThresholdTotalAmount::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::ThresholdTotalAmount::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for threshold_total_amount pricing
        sig do
          returns(Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig)
        end
        attr_reader :threshold_total_amount_config

        sig do
          params(
            threshold_total_amount_config:
              Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::OrHash
          ).void
        end
        attr_writer :threshold_total_amount_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::ThresholdTotalAmount::BillingMode::OrSymbol,
            cadence: Orb::Price::ThresholdTotalAmount::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::ThresholdTotalAmount::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::ThresholdTotalAmount::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            threshold_total_amount_config:
              Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for threshold_total_amount pricing
          threshold_total_amount_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :threshold_total_amount
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::ThresholdTotalAmount::BillingMode::TaggedSymbol,
              cadence: Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::ThresholdTotalAmount::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::ThresholdTotalAmount::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::ThresholdTotalAmount::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              threshold_total_amount_config:
                Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::ThresholdTotalAmount::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::ThresholdTotalAmount::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::ThresholdTotalAmount::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ThresholdTotalAmount::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ThresholdTotalAmount::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class ThresholdTotalAmountConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig,
                Orb::Internal::AnyHash
              )
            end

          # When the quantity consumed passes a provided threshold, the configured total
          # will be charged
          sig do
            returns(
              T::Array[
                Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::ConsumptionTable
              ]
            )
          end
          attr_accessor :consumption_table

          # If true, the unit price will be prorated to the billing period
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :prorate

          # Configuration for threshold_total_amount pricing
          sig do
            params(
              consumption_table:
                T::Array[
                  Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::ConsumptionTable::OrHash
                ],
              prorate: T.nilable(T::Boolean)
            ).returns(T.attached_class)
          end
          def self.new(
            # When the quantity consumed passes a provided threshold, the configured total
            # will be charged
            consumption_table:,
            # If true, the unit price will be prorated to the billing period
            prorate: nil
          )
          end

          sig do
            override.returns(
              {
                consumption_table:
                  T::Array[
                    Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::ConsumptionTable
                  ],
                prorate: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end

          class ConsumptionTable < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::ThresholdTotalAmount::ThresholdTotalAmountConfig::ConsumptionTable,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :threshold

            # Total amount for this threshold
            sig { returns(String) }
            attr_accessor :total_amount

            # Configuration for a single threshold
            sig do
              params(threshold: String, total_amount: String).returns(
                T.attached_class
              )
            end
            def self.new(
              threshold:,
              # Total amount for this threshold
              total_amount:
            )
            end

            sig do
              override.returns({ threshold: String, total_amount: String })
            end
            def to_hash
            end
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::TieredPackage::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::TieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(T::Array[Orb::Price::TieredPackage::CompositePriceFilter])
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(Orb::Price::TieredPackage::ConversionRateConfig::Variants)
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::TieredPackage::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for tiered_package pricing
        sig { returns(Orb::Price::TieredPackage::TieredPackageConfig) }
        attr_reader :tiered_package_config

        sig do
          params(
            tiered_package_config:
              Orb::Price::TieredPackage::TieredPackageConfig::OrHash
          ).void
        end
        attr_writer :tiered_package_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::TieredPackage::BillingMode::OrSymbol,
            cadence: Orb::Price::TieredPackage::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::TieredPackage::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::TieredPackage::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            tiered_package_config:
              Orb::Price::TieredPackage::TieredPackageConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for tiered_package pricing
          tiered_package_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :tiered_package
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::TieredPackage::BillingMode::TaggedSymbol,
              cadence: Orb::Price::TieredPackage::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::TieredPackage::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::TieredPackage::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::TieredPackage::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              tiered_package_config:
                Orb::Price::TieredPackage::TieredPackageConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredPackage::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::TieredPackage::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::TieredPackage::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::TieredPackage::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackage::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::TieredPackage::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::TieredPackage::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::TieredPackage::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::TieredPackage::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackage::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackage::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackage::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::TieredPackage::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::TieredPackage::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackage::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class TieredPackageConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackage::TieredPackageConfig,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :package_size

          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds. The tier bounds are defined based on
          # the total quantity rather than the number of packages, so they must be multiples
          # of the package size.
          sig do
            returns(
              T::Array[Orb::Price::TieredPackage::TieredPackageConfig::Tier]
            )
          end
          attr_accessor :tiers

          # Configuration for tiered_package pricing
          sig do
            params(
              package_size: String,
              tiers:
                T::Array[
                  Orb::Price::TieredPackage::TieredPackageConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            package_size:,
            # Apply tiered pricing after rounding up the quantity to the package size. Tiers
            # are defined using exclusive lower bounds. The tier bounds are defined based on
            # the total quantity rather than the number of packages, so they must be multiples
            # of the package size.
            tiers:
          )
          end

          sig do
            override.returns(
              {
                package_size: String,
                tiers:
                  T::Array[Orb::Price::TieredPackage::TieredPackageConfig::Tier]
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::TieredPackage::TieredPackageConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            # Price per package
            sig { returns(String) }
            attr_accessor :per_unit

            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Configuration for a single tier with business logic
            sig do
              params(per_unit: String, tier_lower_bound: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Price per package
              per_unit:,
              tier_lower_bound:
            )
            end

            sig do
              override.returns({ per_unit: String, tier_lower_bound: String })
            end
            def to_hash
            end
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::TieredWithMinimum::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig { returns(Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::TieredWithMinimum::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredWithMinimum::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::TieredWithMinimum::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for tiered_with_minimum pricing
        sig { returns(Orb::Price::TieredWithMinimum::TieredWithMinimumConfig) }
        attr_reader :tiered_with_minimum_config

        sig do
          params(
            tiered_with_minimum_config:
              Orb::Price::TieredWithMinimum::TieredWithMinimumConfig::OrHash
          ).void
        end
        attr_writer :tiered_with_minimum_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::TieredWithMinimum::BillingMode::OrSymbol,
            cadence: Orb::Price::TieredWithMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::TieredWithMinimum::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::TieredWithMinimum::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            tiered_with_minimum_config:
              Orb::Price::TieredWithMinimum::TieredWithMinimumConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for tiered_with_minimum pricing
          tiered_with_minimum_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :tiered_with_minimum
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::TieredWithMinimum::BillingMode::TaggedSymbol,
              cadence: Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::TieredWithMinimum::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::TieredWithMinimum::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::TieredWithMinimum::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              tiered_with_minimum_config:
                Orb::Price::TieredWithMinimum::TieredWithMinimumConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredWithMinimum::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::TieredWithMinimum::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::TieredWithMinimum::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::TieredWithMinimum::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::TieredWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::TieredWithMinimum::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithMinimum::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithMinimum::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithMinimum::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::TieredWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class TieredWithMinimumConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithMinimum::TieredWithMinimumConfig,
                Orb::Internal::AnyHash
              )
            end

          # Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
          # defined using exclusive lower bounds.
          sig do
            returns(
              T::Array[
                Orb::Price::TieredWithMinimum::TieredWithMinimumConfig::Tier
              ]
            )
          end
          attr_accessor :tiers

          # If true, tiers with an accrued amount of 0 will not be included in the rating.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :hide_zero_amount_tiers

          sig { params(hide_zero_amount_tiers: T::Boolean).void }
          attr_writer :hide_zero_amount_tiers

          # If true, the unit price will be prorated to the billing period
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :prorate

          sig { params(prorate: T::Boolean).void }
          attr_writer :prorate

          # Configuration for tiered_with_minimum pricing
          sig do
            params(
              tiers:
                T::Array[
                  Orb::Price::TieredWithMinimum::TieredWithMinimumConfig::Tier::OrHash
                ],
              hide_zero_amount_tiers: T::Boolean,
              prorate: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Tiered pricing with a minimum amount dependent on the volume tier. Tiers are
            # defined using exclusive lower bounds.
            tiers:,
            # If true, tiers with an accrued amount of 0 will not be included in the rating.
            hide_zero_amount_tiers: nil,
            # If true, the unit price will be prorated to the billing period
            prorate: nil
          )
          end

          sig do
            override.returns(
              {
                tiers:
                  T::Array[
                    Orb::Price::TieredWithMinimum::TieredWithMinimumConfig::Tier
                  ],
                hide_zero_amount_tiers: T::Boolean,
                prorate: T::Boolean
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::TieredWithMinimum::TieredWithMinimumConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :minimum_amount

            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Per unit amount
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a single tier
            sig do
              params(
                minimum_amount: String,
                tier_lower_bound: String,
                unit_amount: String
              ).returns(T.attached_class)
            end
            def self.new(
              minimum_amount:,
              tier_lower_bound:,
              # Per unit amount
              unit_amount:
            )
            end

            sig do
              override.returns(
                {
                  minimum_amount: String,
                  tier_lower_bound: String,
                  unit_amount: String
                }
              )
            end
            def to_hash
            end
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::GroupedTiered::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::GroupedTiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(T::Array[Orb::Price::GroupedTiered::CompositePriceFilter])
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(Orb::Price::GroupedTiered::ConversionRateConfig::Variants)
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        # Configuration for grouped_tiered pricing
        sig { returns(Orb::Price::GroupedTiered::GroupedTieredConfig) }
        attr_reader :grouped_tiered_config

        sig do
          params(
            grouped_tiered_config:
              Orb::Price::GroupedTiered::GroupedTieredConfig::OrHash
          ).void
        end
        attr_writer :grouped_tiered_config

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::GroupedTiered::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::GroupedTiered::BillingMode::OrSymbol,
            cadence: Orb::Price::GroupedTiered::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::GroupedTiered::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
            grouped_tiered_config:
              Orb::Price::GroupedTiered::GroupedTieredConfig::OrHash,
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::GroupedTiered::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          # Configuration for grouped_tiered pricing
          grouped_tiered_config:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :grouped_tiered
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::GroupedTiered::BillingMode::TaggedSymbol,
              cadence: Orb::Price::GroupedTiered::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::GroupedTiered::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::GroupedTiered::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_tiered_config:
                Orb::Price::GroupedTiered::GroupedTieredConfig,
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::GroupedTiered::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedTiered::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::GroupedTiered::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::GroupedTiered::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::GroupedTiered::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTiered::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::GroupedTiered::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::GroupedTiered::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::GroupedTiered::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::GroupedTiered::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTiered::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTiered::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTiered::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::GroupedTiered::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::GroupedTiered::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTiered::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupedTieredConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTiered::GroupedTieredConfig,
                Orb::Internal::AnyHash
              )
            end

          # The billable metric property used to group before tiering
          sig { returns(String) }
          attr_accessor :grouping_key

          # Apply tiered pricing to each segment generated after grouping with the provided
          # key
          sig do
            returns(
              T::Array[Orb::Price::GroupedTiered::GroupedTieredConfig::Tier]
            )
          end
          attr_accessor :tiers

          # Configuration for grouped_tiered pricing
          sig do
            params(
              grouping_key: String,
              tiers:
                T::Array[
                  Orb::Price::GroupedTiered::GroupedTieredConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The billable metric property used to group before tiering
            grouping_key:,
            # Apply tiered pricing to each segment generated after grouping with the provided
            # key
            tiers:
          )
          end

          sig do
            override.returns(
              {
                grouping_key: String,
                tiers:
                  T::Array[Orb::Price::GroupedTiered::GroupedTieredConfig::Tier]
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::GroupedTiered::GroupedTieredConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Per unit amount
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a single tier
            sig do
              params(tier_lower_bound: String, unit_amount: String).returns(
                T.attached_class
              )
            end
            def self.new(
              tier_lower_bound:,
              # Per unit amount
              unit_amount:
            )
            end

            sig do
              override.returns(
                { tier_lower_bound: String, unit_amount: String }
              )
            end
            def to_hash
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::TieredPackageWithMinimum, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::TieredPackageWithMinimum::BillingMode::TaggedSymbol
          )
        end
        attr_accessor :billing_mode

        sig do
          returns(Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter
              ]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredPackageWithMinimum::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for tiered_package_with_minimum pricing
        sig do
          returns(
            Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig
          )
        end
        attr_reader :tiered_package_with_minimum_config

        sig do
          params(
            tiered_package_with_minimum_config:
              Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::OrHash
          ).void
        end
        attr_writer :tiered_package_with_minimum_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::TieredPackageWithMinimum::BillingMode::OrSymbol,
            cadence: Orb::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::TieredPackageWithMinimum::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            tiered_package_with_minimum_config:
              Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for tiered_package_with_minimum pricing
          tiered_package_with_minimum_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :tiered_package_with_minimum
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::TieredPackageWithMinimum::BillingMode::TaggedSymbol,
              cadence:
                Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::TieredPackageWithMinimum::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::TieredPackageWithMinimum::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::TieredPackageWithMinimum::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              tiered_package_with_minimum_config:
                Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredPackageWithMinimum::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::TieredPackageWithMinimum::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::TieredPackageWithMinimum::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::TieredPackageWithMinimum::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredPackageWithMinimum::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class TieredPackageWithMinimumConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :package_size

          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds.
          sig do
            returns(
              T::Array[
                Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::Tier
              ]
            )
          end
          attr_accessor :tiers

          # Configuration for tiered_package_with_minimum pricing
          sig do
            params(
              package_size: Float,
              tiers:
                T::Array[
                  Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            package_size:,
            # Apply tiered pricing after rounding up the quantity to the package size. Tiers
            # are defined using exclusive lower bounds.
            tiers:
          )
          end

          sig do
            override.returns(
              {
                package_size: Float,
                tiers:
                  T::Array[
                    Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::TieredPackageWithMinimum::TieredPackageWithMinimumConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :minimum_amount

            sig { returns(String) }
            attr_accessor :per_unit

            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Configuration for a single tier
            sig do
              params(
                minimum_amount: String,
                per_unit: String,
                tier_lower_bound: String
              ).returns(T.attached_class)
            end
            def self.new(minimum_amount:, per_unit:, tier_lower_bound:)
            end

            sig do
              override.returns(
                {
                  minimum_amount: String,
                  per_unit: String,
                  tier_lower_bound: String
                }
              )
            end
            def to_hash
            end
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::PackageWithAllocation::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig do
          returns(Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::PackageWithAllocation::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::PackageWithAllocation::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        # Configuration for package_with_allocation pricing
        sig do
          returns(
            Orb::Price::PackageWithAllocation::PackageWithAllocationConfig
          )
        end
        attr_reader :package_with_allocation_config

        sig do
          params(
            package_with_allocation_config:
              Orb::Price::PackageWithAllocation::PackageWithAllocationConfig::OrHash
          ).void
        end
        attr_writer :package_with_allocation_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig do
          returns(Orb::Price::PackageWithAllocation::PriceType::TaggedSymbol)
        end
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::PackageWithAllocation::BillingMode::OrSymbol,
            cadence: Orb::Price::PackageWithAllocation::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::PackageWithAllocation::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            package_with_allocation_config:
              Orb::Price::PackageWithAllocation::PackageWithAllocationConfig::OrHash,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::PackageWithAllocation::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # Configuration for package_with_allocation pricing
          package_with_allocation_config:,
          plan_phase_order:,
          price_type:,
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :package_with_allocation
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::PackageWithAllocation::BillingMode::TaggedSymbol,
              cadence: Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::PackageWithAllocation::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::PackageWithAllocation::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              package_with_allocation_config:
                Orb::Price::PackageWithAllocation::PackageWithAllocationConfig,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::PackageWithAllocation::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::PackageWithAllocation::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::PackageWithAllocation::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::PackageWithAllocation::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::PackageWithAllocation::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::PackageWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::PackageWithAllocation::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::PackageWithAllocation::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::PackageWithAllocation::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::PackageWithAllocation::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::PackageWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::PackageWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PackageWithAllocationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::PackageWithAllocationConfig,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :allocation

          sig { returns(String) }
          attr_accessor :package_amount

          sig { returns(String) }
          attr_accessor :package_size

          # Configuration for package_with_allocation pricing
          sig do
            params(
              allocation: String,
              package_amount: String,
              package_size: String
            ).returns(T.attached_class)
          end
          def self.new(allocation:, package_amount:, package_size:)
          end

          sig do
            override.returns(
              {
                allocation: String,
                package_amount: String,
                package_size: String
              }
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class UnitWithPercent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::UnitWithPercent, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::UnitWithPercent::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::UnitWithPercent::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::UnitWithPercent::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::UnitWithPercent::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::UnitWithPercent::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for unit_with_percent pricing
        sig { returns(Orb::Price::UnitWithPercent::UnitWithPercentConfig) }
        attr_reader :unit_with_percent_config

        sig do
          params(
            unit_with_percent_config:
              Orb::Price::UnitWithPercent::UnitWithPercentConfig::OrHash
          ).void
        end
        attr_writer :unit_with_percent_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::UnitWithPercent::BillingMode::OrSymbol,
            cadence: Orb::Price::UnitWithPercent::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::UnitWithPercent::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::UnitWithPercent::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            unit_with_percent_config:
              Orb::Price::UnitWithPercent::UnitWithPercentConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for unit_with_percent pricing
          unit_with_percent_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :unit_with_percent
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::UnitWithPercent::BillingMode::TaggedSymbol,
              cadence: Orb::Price::UnitWithPercent::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::UnitWithPercent::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::UnitWithPercent::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::UnitWithPercent::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              unit_with_percent_config:
                Orb::Price::UnitWithPercent::UnitWithPercentConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::UnitWithPercent::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::UnitWithPercent::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::UnitWithPercent::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::UnitWithPercent::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::UnitWithPercent::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::UnitWithPercent::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::UnitWithPercent::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::UnitWithPercent::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithPercent::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithPercent::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithPercent::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::UnitWithPercent::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::UnitWithPercent::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithPercent::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class UnitWithPercentConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithPercent::UnitWithPercentConfig,
                Orb::Internal::AnyHash
              )
            end

          # What percent, out of 100, of the calculated total to charge
          sig { returns(String) }
          attr_accessor :percent

          # Rate per unit of usage
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for unit_with_percent pricing
          sig do
            params(percent: String, unit_amount: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # What percent, out of 100, of the calculated total to charge
            percent:,
            # Rate per unit of usage
            unit_amount:
          )
          end

          sig { override.returns({ percent: String, unit_amount: String }) }
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::MatrixWithAllocation::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig { returns(Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::MatrixWithAllocation::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::MatrixWithAllocation::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        # Configuration for matrix_with_allocation pricing
        sig { returns(Orb::MatrixWithAllocationConfig) }
        attr_reader :matrix_with_allocation_config

        sig do
          params(
            matrix_with_allocation_config:
              Orb::MatrixWithAllocationConfig::OrHash
          ).void
        end
        attr_writer :matrix_with_allocation_config

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::MatrixWithAllocation::BillingMode::OrSymbol,
            cadence: Orb::Price::MatrixWithAllocation::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::MatrixWithAllocation::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            matrix_with_allocation_config:
              Orb::MatrixWithAllocationConfig::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::MatrixWithAllocation::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
          item:,
          # Configuration for matrix_with_allocation pricing
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :matrix_with_allocation
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::MatrixWithAllocation::BillingMode::TaggedSymbol,
              cadence: Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::MatrixWithAllocation::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::MatrixWithAllocation::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              matrix_with_allocation_config: Orb::MatrixWithAllocationConfig,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::MatrixWithAllocation::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MatrixWithAllocation::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::MatrixWithAllocation::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::MatrixWithAllocation::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::MatrixWithAllocation::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithAllocation::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::MatrixWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::MatrixWithAllocation::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithAllocation::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithAllocation::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::MatrixWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithAllocation::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class TieredWithProration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::TieredWithProration, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::TieredWithProration::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig { returns(Orb::Price::TieredWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::TieredWithProration::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::TieredWithProration::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for tiered_with_proration pricing
        sig do
          returns(Orb::Price::TieredWithProration::TieredWithProrationConfig)
        end
        attr_reader :tiered_with_proration_config

        sig do
          params(
            tiered_with_proration_config:
              Orb::Price::TieredWithProration::TieredWithProrationConfig::OrHash
          ).void
        end
        attr_writer :tiered_with_proration_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::TieredWithProration::BillingMode::OrSymbol,
            cadence: Orb::Price::TieredWithProration::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::TieredWithProration::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::TieredWithProration::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            tiered_with_proration_config:
              Orb::Price::TieredWithProration::TieredWithProrationConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for tiered_with_proration pricing
          tiered_with_proration_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :tiered_with_proration
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::TieredWithProration::BillingMode::TaggedSymbol,
              cadence: Orb::Price::TieredWithProration::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::TieredWithProration::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::TieredWithProration::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::TieredWithProration::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              tiered_with_proration_config:
                Orb::Price::TieredWithProration::TieredWithProrationConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::TieredWithProration::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::TieredWithProration::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::TieredWithProration::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::TieredWithProration::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::TieredWithProration::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::TieredWithProration::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::TieredWithProration::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::TieredWithProration::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithProration::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithProration::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::TieredWithProration::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::TieredWithProration::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::TieredWithProration::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::TieredWithProration::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::TieredWithProration::TieredWithProrationConfig,
                Orb::Internal::AnyHash
              )
            end

          # Tiers for rating based on total usage quantities into the specified tier with
          # proration
          sig do
            returns(
              T::Array[
                Orb::Price::TieredWithProration::TieredWithProrationConfig::Tier
              ]
            )
          end
          attr_accessor :tiers

          # Configuration for tiered_with_proration pricing
          sig do
            params(
              tiers:
                T::Array[
                  Orb::Price::TieredWithProration::TieredWithProrationConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Tiers for rating based on total usage quantities into the specified tier with
            # proration
            tiers:
          )
          end

          sig do
            override.returns(
              {
                tiers:
                  T::Array[
                    Orb::Price::TieredWithProration::TieredWithProrationConfig::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::TieredWithProration::TieredWithProrationConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            # Inclusive tier starting value
            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Amount per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a single tiered with proration tier
            sig do
              params(tier_lower_bound: String, unit_amount: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Inclusive tier starting value
              tier_lower_bound:,
              # Amount per unit
              unit_amount:
            )
            end

            sig do
              override.returns(
                { tier_lower_bound: String, unit_amount: String }
              )
            end
            def to_hash
            end
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::UnitWithProration::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig { returns(Orb::Price::UnitWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::UnitWithProration::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::UnitWithProration::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::UnitWithProration::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for unit_with_proration pricing
        sig { returns(Orb::Price::UnitWithProration::UnitWithProrationConfig) }
        attr_reader :unit_with_proration_config

        sig do
          params(
            unit_with_proration_config:
              Orb::Price::UnitWithProration::UnitWithProrationConfig::OrHash
          ).void
        end
        attr_writer :unit_with_proration_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::UnitWithProration::BillingMode::OrSymbol,
            cadence: Orb::Price::UnitWithProration::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::UnitWithProration::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::UnitWithProration::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            unit_with_proration_config:
              Orb::Price::UnitWithProration::UnitWithProrationConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for unit_with_proration pricing
          unit_with_proration_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :unit_with_proration
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::UnitWithProration::BillingMode::TaggedSymbol,
              cadence: Orb::Price::UnitWithProration::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::UnitWithProration::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::UnitWithProration::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::UnitWithProration::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              unit_with_proration_config:
                Orb::Price::UnitWithProration::UnitWithProrationConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::UnitWithProration::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::UnitWithProration::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::UnitWithProration::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::UnitWithProration::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::UnitWithProration::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::UnitWithProration::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::UnitWithProration::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::UnitWithProration::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithProration::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithProration::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::UnitWithProration::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::UnitWithProration::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::UnitWithProration::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::UnitWithProration::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class UnitWithProrationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::UnitWithProration::UnitWithProrationConfig,
                Orb::Internal::AnyHash
              )
            end

          # Rate per unit of usage
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for unit_with_proration pricing
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
      end

      class GroupedAllocation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::GroupedAllocation, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::GroupedAllocation::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig { returns(Orb::Price::GroupedAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::GroupedAllocation::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedAllocation::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        # Configuration for grouped_allocation pricing
        sig { returns(Orb::Price::GroupedAllocation::GroupedAllocationConfig) }
        attr_reader :grouped_allocation_config

        sig do
          params(
            grouped_allocation_config:
              Orb::Price::GroupedAllocation::GroupedAllocationConfig::OrHash
          ).void
        end
        attr_writer :grouped_allocation_config

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::GroupedAllocation::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::GroupedAllocation::BillingMode::OrSymbol,
            cadence: Orb::Price::GroupedAllocation::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::GroupedAllocation::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
            grouped_allocation_config:
              Orb::Price::GroupedAllocation::GroupedAllocationConfig::OrHash,
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::GroupedAllocation::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          # Configuration for grouped_allocation pricing
          grouped_allocation_config:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :grouped_allocation
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::GroupedAllocation::BillingMode::TaggedSymbol,
              cadence: Orb::Price::GroupedAllocation::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::GroupedAllocation::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::GroupedAllocation::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_allocation_config:
                Orb::Price::GroupedAllocation::GroupedAllocationConfig,
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedAllocation::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedAllocation::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::GroupedAllocation::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::GroupedAllocation::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::GroupedAllocation::BillingMode::TaggedSymbol]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::GroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::GroupedAllocation::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::GroupedAllocation::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::GroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedAllocation::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedAllocation::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::GroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::GroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupedAllocationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedAllocation::GroupedAllocationConfig,
                Orb::Internal::AnyHash
              )
            end

          # Usage allocation per group
          sig { returns(String) }
          attr_accessor :allocation

          # How to determine the groups that should each be allocated some quantity
          sig { returns(String) }
          attr_accessor :grouping_key

          # Unit rate for post-allocation
          sig { returns(String) }
          attr_accessor :overage_unit_rate

          # Configuration for grouped_allocation pricing
          sig do
            params(
              allocation: String,
              grouping_key: String,
              overage_unit_rate: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Usage allocation per group
            allocation:,
            # How to determine the groups that should each be allocated some quantity
            grouping_key:,
            # Unit rate for post-allocation
            overage_unit_rate:
          )
          end

          sig do
            override.returns(
              {
                allocation: String,
                grouping_key: String,
                overage_unit_rate: String
              }
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class BulkWithProration < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::BulkWithProration, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::BulkWithProration::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        # Configuration for bulk_with_proration pricing
        sig { returns(Orb::Price::BulkWithProration::BulkWithProrationConfig) }
        attr_reader :bulk_with_proration_config

        sig do
          params(
            bulk_with_proration_config:
              Orb::Price::BulkWithProration::BulkWithProrationConfig::OrHash
          ).void
        end
        attr_writer :bulk_with_proration_config

        sig { returns(Orb::Price::BulkWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::BulkWithProration::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::BulkWithProration::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::BulkWithProration::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::BulkWithProration::BillingMode::OrSymbol,
            bulk_with_proration_config:
              Orb::Price::BulkWithProration::BulkWithProrationConfig::OrHash,
            cadence: Orb::Price::BulkWithProration::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::BulkWithProration::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::BulkWithProration::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          # Configuration for bulk_with_proration pricing
          bulk_with_proration_config:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :bulk_with_proration
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::BulkWithProration::BillingMode::TaggedSymbol,
              bulk_with_proration_config:
                Orb::Price::BulkWithProration::BulkWithProrationConfig,
              cadence: Orb::Price::BulkWithProration::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::BulkWithProration::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::BulkWithProration::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::BulkWithProration::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::BulkWithProration::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::BulkWithProration::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::BulkWithProration::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::BulkWithProration::BillingMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class BulkWithProrationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::BulkWithProrationConfig,
                Orb::Internal::AnyHash
              )
            end

          # Bulk tiers for rating based on total usage volume
          sig do
            returns(
              T::Array[
                Orb::Price::BulkWithProration::BulkWithProrationConfig::Tier
              ]
            )
          end
          attr_accessor :tiers

          # Configuration for bulk_with_proration pricing
          sig do
            params(
              tiers:
                T::Array[
                  Orb::Price::BulkWithProration::BulkWithProrationConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Bulk tiers for rating based on total usage volume
            tiers:
          )
          end

          sig do
            override.returns(
              {
                tiers:
                  T::Array[
                    Orb::Price::BulkWithProration::BulkWithProrationConfig::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::BulkWithProration::BulkWithProrationConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            # Cost per unit
            sig { returns(String) }
            attr_accessor :unit_amount

            # The lower bound for this tier
            sig { returns(T.nilable(String)) }
            attr_accessor :tier_lower_bound

            # Configuration for a single bulk pricing tier with proration
            sig do
              params(
                unit_amount: String,
                tier_lower_bound: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Cost per unit
              unit_amount:,
              # The lower bound for this tier
              tier_lower_bound: nil
            )
            end

            sig do
              override.returns(
                { unit_amount: String, tier_lower_bound: T.nilable(String) }
              )
            end
            def to_hash
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::BulkWithProration::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::BulkWithProration::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::BulkWithProration::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::BulkWithProration::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::BulkWithProration::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkWithProration::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkWithProration::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::BulkWithProration::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::BulkWithProration::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::BulkWithProration::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::BulkWithProration::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::GroupedWithProratedMinimum::BillingMode::TaggedSymbol
          )
        end
        attr_accessor :billing_mode

        sig do
          returns(Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter
              ]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedWithProratedMinimum::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        # Configuration for grouped_with_prorated_minimum pricing
        sig do
          returns(
            Orb::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig
          )
        end
        attr_reader :grouped_with_prorated_minimum_config

        sig do
          params(
            grouped_with_prorated_minimum_config:
              Orb::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig::OrHash
          ).void
        end
        attr_writer :grouped_with_prorated_minimum_config

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::GroupedWithProratedMinimum::BillingMode::OrSymbol,
            cadence: Orb::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
            grouped_with_prorated_minimum_config:
              Orb::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig::OrHash,
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::GroupedWithProratedMinimum::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          # Configuration for grouped_with_prorated_minimum pricing
          grouped_with_prorated_minimum_config:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :grouped_with_prorated_minimum
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::GroupedWithProratedMinimum::BillingMode::TaggedSymbol,
              cadence:
                Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::GroupedWithProratedMinimum::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_with_prorated_minimum_config:
                Orb::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig,
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedWithProratedMinimum::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithProratedMinimum::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::GroupedWithProratedMinimum::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::GroupedWithProratedMinimum::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithProratedMinimum::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithProratedMinimum::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupedWithProratedMinimumConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithProratedMinimum::GroupedWithProratedMinimumConfig,
                Orb::Internal::AnyHash
              )
            end

          # How to determine the groups that should each have a minimum
          sig { returns(String) }
          attr_accessor :grouping_key

          # The minimum amount to charge per group
          sig { returns(String) }
          attr_accessor :minimum

          # The amount to charge per unit
          sig { returns(String) }
          attr_accessor :unit_rate

          # Configuration for grouped_with_prorated_minimum pricing
          sig do
            params(
              grouping_key: String,
              minimum: String,
              unit_rate: String
            ).returns(T.attached_class)
          end
          def self.new(
            # How to determine the groups that should each have a minimum
            grouping_key:,
            # The minimum amount to charge per group
            minimum:,
            # The amount to charge per unit
            unit_rate:
          )
          end

          sig do
            override.returns(
              { grouping_key: String, minimum: String, unit_rate: String }
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::GroupedWithMeteredMinimum, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::GroupedWithMeteredMinimum::BillingMode::TaggedSymbol
          )
        end
        attr_accessor :billing_mode

        sig do
          returns(Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter
              ]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedWithMeteredMinimum::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        # Configuration for grouped_with_metered_minimum pricing
        sig do
          returns(
            Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig
          )
        end
        attr_reader :grouped_with_metered_minimum_config

        sig do
          params(
            grouped_with_metered_minimum_config:
              Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::OrHash
          ).void
        end
        attr_writer :grouped_with_metered_minimum_config

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::GroupedWithMeteredMinimum::BillingMode::OrSymbol,
            cadence: Orb::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
            grouped_with_metered_minimum_config:
              Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::OrHash,
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::GroupedWithMeteredMinimum::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          # Configuration for grouped_with_metered_minimum pricing
          grouped_with_metered_minimum_config:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :grouped_with_metered_minimum
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::GroupedWithMeteredMinimum::BillingMode::TaggedSymbol,
              cadence:
                Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::GroupedWithMeteredMinimum::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_with_metered_minimum_config:
                Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig,
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedWithMeteredMinimum::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithMeteredMinimum::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::GroupedWithMeteredMinimum::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::GroupedWithMeteredMinimum::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithMeteredMinimum::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithMeteredMinimum::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupedWithMeteredMinimumConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig,
                Orb::Internal::AnyHash
              )
            end

          # Used to partition the usage into groups. The minimum amount is applied to each
          # group.
          sig { returns(String) }
          attr_accessor :grouping_key

          # The minimum amount to charge per group per unit
          sig { returns(String) }
          attr_accessor :minimum_unit_amount

          # Used to determine the unit rate
          sig { returns(String) }
          attr_accessor :pricing_key

          # Scale the unit rates by the scaling factor.
          sig do
            returns(
              T::Array[
                Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::ScalingFactor
              ]
            )
          end
          attr_accessor :scaling_factors

          # Used to determine the unit rate scaling factor
          sig { returns(String) }
          attr_accessor :scaling_key

          # Apply per unit pricing to each pricing value. The minimum amount is applied any
          # unmatched usage.
          sig do
            returns(
              T::Array[
                Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::UnitAmount
              ]
            )
          end
          attr_accessor :unit_amounts

          # Configuration for grouped_with_metered_minimum pricing
          sig do
            params(
              grouping_key: String,
              minimum_unit_amount: String,
              pricing_key: String,
              scaling_factors:
                T::Array[
                  Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::ScalingFactor::OrHash
                ],
              scaling_key: String,
              unit_amounts:
                T::Array[
                  Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::UnitAmount::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Used to partition the usage into groups. The minimum amount is applied to each
            # group.
            grouping_key:,
            # The minimum amount to charge per group per unit
            minimum_unit_amount:,
            # Used to determine the unit rate
            pricing_key:,
            # Scale the unit rates by the scaling factor.
            scaling_factors:,
            # Used to determine the unit rate scaling factor
            scaling_key:,
            # Apply per unit pricing to each pricing value. The minimum amount is applied any
            # unmatched usage.
            unit_amounts:
          )
          end

          sig do
            override.returns(
              {
                grouping_key: String,
                minimum_unit_amount: String,
                pricing_key: String,
                scaling_factors:
                  T::Array[
                    Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::ScalingFactor
                  ],
                scaling_key: String,
                unit_amounts:
                  T::Array[
                    Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::UnitAmount
                  ]
              }
            )
          end
          def to_hash
          end

          class ScalingFactor < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::ScalingFactor,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :scaling_factor

            sig { returns(String) }
            attr_accessor :scaling_value

            # Configuration for a scaling factor
            sig do
              params(scaling_factor: String, scaling_value: String).returns(
                T.attached_class
              )
            end
            def self.new(scaling_factor:, scaling_value:)
            end

            sig do
              override.returns(
                { scaling_factor: String, scaling_value: String }
              )
            end
            def to_hash
            end
          end

          class UnitAmount < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::GroupedWithMeteredMinimum::GroupedWithMeteredMinimumConfig::UnitAmount,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :pricing_value

            # Per unit amount
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a unit amount
            sig do
              params(pricing_value: String, unit_amount: String).returns(
                T.attached_class
              )
            end
            def self.new(
              pricing_value:,
              # Per unit amount
              unit_amount:
            )
            end

            sig do
              override.returns({ pricing_value: String, unit_amount: String })
            end
            def to_hash
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Price::GroupedWithMinMaxThresholds,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::GroupedWithMinMaxThresholds::BillingMode::TaggedSymbol
          )
        end
        attr_accessor :billing_mode

        sig do
          returns(
            Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter
              ]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedWithMinMaxThresholds::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        # Configuration for grouped_with_min_max_thresholds pricing
        sig do
          returns(
            Orb::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig
          )
        end
        attr_reader :grouped_with_min_max_thresholds_config

        sig do
          params(
            grouped_with_min_max_thresholds_config:
              Orb::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash
          ).void
        end
        attr_writer :grouped_with_min_max_thresholds_config

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig do
          returns(
            Orb::Price::GroupedWithMinMaxThresholds::PriceType::TaggedSymbol
          )
        end
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::GroupedWithMinMaxThresholds::BillingMode::OrSymbol,
            cadence: Orb::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
            grouped_with_min_max_thresholds_config:
              Orb::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash,
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::GroupedWithMinMaxThresholds::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          # Configuration for grouped_with_min_max_thresholds pricing
          grouped_with_min_max_thresholds_config:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :grouped_with_min_max_thresholds
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::GroupedWithMinMaxThresholds::BillingMode::TaggedSymbol,
              cadence:
                Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::GroupedWithMinMaxThresholds::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_with_min_max_thresholds_config:
                Orb::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedWithMinMaxThresholds::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Price::GroupedWithMinMaxThresholds::BillingMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::GroupedWithMinMaxThresholds::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::GroupedWithMinMaxThresholds::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithMinMaxThresholds::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithMinMaxThresholds::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedWithMinMaxThresholds::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
                Orb::Internal::AnyHash
              )
            end

          # The event property used to group before applying thresholds
          sig { returns(String) }
          attr_accessor :grouping_key

          # The maximum amount to charge each group
          sig { returns(String) }
          attr_accessor :maximum_charge

          # The minimum amount to charge each group, regardless of usage
          sig { returns(String) }
          attr_accessor :minimum_charge

          # The base price charged per group
          sig { returns(String) }
          attr_accessor :per_unit_rate

          # Configuration for grouped_with_min_max_thresholds pricing
          sig do
            params(
              grouping_key: String,
              maximum_charge: String,
              minimum_charge: String,
              per_unit_rate: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The event property used to group before applying thresholds
            grouping_key:,
            # The maximum amount to charge each group
            maximum_charge:,
            # The minimum amount to charge each group, regardless of usage
            minimum_charge:,
            # The base price charged per group
            per_unit_rate:
          )
          end

          sig do
            override.returns(
              {
                grouping_key: String,
                maximum_charge: String,
                minimum_charge: String,
                per_unit_rate: String
              }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedWithMinMaxThresholds::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::GroupedWithMinMaxThresholds::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::GroupedWithMinMaxThresholds::PriceType::TaggedSymbol
            )
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::GroupedWithMinMaxThresholds::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedWithMinMaxThresholds::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::MatrixWithDisplayName::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig do
          returns(Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::MatrixWithDisplayName::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::MatrixWithDisplayName::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        # Configuration for matrix_with_display_name pricing
        sig do
          returns(
            Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig
          )
        end
        attr_reader :matrix_with_display_name_config

        sig do
          params(
            matrix_with_display_name_config:
              Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::OrHash
          ).void
        end
        attr_writer :matrix_with_display_name_config

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::MatrixWithDisplayName::BillingMode::OrSymbol,
            cadence: Orb::Price::MatrixWithDisplayName::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::MatrixWithDisplayName::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            matrix_with_display_name_config:
              Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::MatrixWithDisplayName::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
          item:,
          # Configuration for matrix_with_display_name pricing
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :matrix_with_display_name
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::MatrixWithDisplayName::BillingMode::TaggedSymbol,
              cadence: Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::MatrixWithDisplayName::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::MatrixWithDisplayName::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              matrix_with_display_name_config:
                Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::MatrixWithDisplayName::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MatrixWithDisplayName::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::MatrixWithDisplayName::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::MatrixWithDisplayName::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::MatrixWithDisplayName::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MatrixWithDisplayName::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class MatrixWithDisplayNameConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig,
                Orb::Internal::AnyHash
              )
            end

          # Used to determine the unit rate
          sig { returns(String) }
          attr_accessor :dimension

          # Apply per unit pricing to each dimension value
          sig do
            returns(
              T::Array[
                Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::UnitAmount
              ]
            )
          end
          attr_accessor :unit_amounts

          # Configuration for matrix_with_display_name pricing
          sig do
            params(
              dimension: String,
              unit_amounts:
                T::Array[
                  Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::UnitAmount::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Used to determine the unit rate
            dimension:,
            # Apply per unit pricing to each dimension value
            unit_amounts:
          )
          end

          sig do
            override.returns(
              {
                dimension: String,
                unit_amounts:
                  T::Array[
                    Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::UnitAmount
                  ]
              }
            )
          end
          def to_hash
          end

          class UnitAmount < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::MatrixWithDisplayName::MatrixWithDisplayNameConfig::UnitAmount,
                  Orb::Internal::AnyHash
                )
              end

            # The dimension value
            sig { returns(String) }
            attr_accessor :dimension_value

            # Display name for this dimension value
            sig { returns(String) }
            attr_accessor :display_name

            # Per unit amount
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a unit amount item
            sig do
              params(
                dimension_value: String,
                display_name: String,
                unit_amount: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The dimension value
              dimension_value:,
              # Display name for this dimension value
              display_name:,
              # Per unit amount
              unit_amount:
            )
            end

            sig do
              override.returns(
                {
                  dimension_value: String,
                  display_name: String,
                  unit_amount: String
                }
              )
            end
            def to_hash
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class GroupedTieredPackage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::GroupedTieredPackage, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::GroupedTieredPackage::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig { returns(Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::GroupedTieredPackage::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::GroupedTieredPackage::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        # Configuration for grouped_tiered_package pricing
        sig do
          returns(Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig)
        end
        attr_reader :grouped_tiered_package_config

        sig do
          params(
            grouped_tiered_package_config:
              Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig::OrHash
          ).void
        end
        attr_writer :grouped_tiered_package_config

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::GroupedTieredPackage::BillingMode::OrSymbol,
            cadence: Orb::Price::GroupedTieredPackage::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::GroupedTieredPackage::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
            grouped_tiered_package_config:
              Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig::OrHash,
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::GroupedTieredPackage::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          # Configuration for grouped_tiered_package pricing
          grouped_tiered_package_config:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :grouped_tiered_package
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::GroupedTieredPackage::BillingMode::TaggedSymbol,
              cadence: Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::GroupedTieredPackage::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::GroupedTieredPackage::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              grouped_tiered_package_config:
                Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig,
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::GroupedTieredPackage::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::GroupedTieredPackage::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::GroupedTieredPackage::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::GroupedTieredPackage::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::GroupedTieredPackage::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::GroupedTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::GroupedTieredPackage::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTieredPackage::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::GroupedTieredPackage::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::GroupedTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::GroupedTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupedTieredPackageConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig,
                Orb::Internal::AnyHash
              )
            end

          # The event property used to group before tiering
          sig { returns(String) }
          attr_accessor :grouping_key

          sig { returns(String) }
          attr_accessor :package_size

          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds.
          sig do
            returns(
              T::Array[
                Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig::Tier
              ]
            )
          end
          attr_accessor :tiers

          # Configuration for grouped_tiered_package pricing
          sig do
            params(
              grouping_key: String,
              package_size: String,
              tiers:
                T::Array[
                  Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The event property used to group before tiering
            grouping_key:,
            package_size:,
            # Apply tiered pricing after rounding up the quantity to the package size. Tiers
            # are defined using exclusive lower bounds.
            tiers:
          )
          end

          sig do
            override.returns(
              {
                grouping_key: String,
                package_size: String,
                tiers:
                  T::Array[
                    Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::GroupedTieredPackage::GroupedTieredPackageConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            # Per package
            sig { returns(String) }
            attr_accessor :per_unit

            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Configuration for a single tier
            sig do
              params(per_unit: String, tier_lower_bound: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Per package
              per_unit:,
              tier_lower_bound:
            )
            end

            sig do
              override.returns({ per_unit: String, tier_lower_bound: String })
            end
            def to_hash
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::MaxGroupTieredPackage, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::MaxGroupTieredPackage::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig do
          returns(Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::MaxGroupTieredPackage::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::MaxGroupTieredPackage::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        # Configuration for max_group_tiered_package pricing
        sig do
          returns(
            Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig
          )
        end
        attr_reader :max_group_tiered_package_config

        sig do
          params(
            max_group_tiered_package_config:
              Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::OrHash
          ).void
        end
        attr_writer :max_group_tiered_package_config

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::MaxGroupTieredPackage::BillingMode::OrSymbol,
            cadence: Orb::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            max_group_tiered_package_config:
              Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::MaxGroupTieredPackage::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
          item:,
          # Configuration for max_group_tiered_package pricing
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :max_group_tiered_package
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::MaxGroupTieredPackage::BillingMode::TaggedSymbol,
              cadence: Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::MaxGroupTieredPackage::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::MaxGroupTieredPackage::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              max_group_tiered_package_config:
                Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::MaxGroupTieredPackage::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MaxGroupTieredPackage::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::MaxGroupTieredPackage::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::MaxGroupTieredPackage::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::MaxGroupTieredPackage::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MaxGroupTieredPackage::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class MaxGroupTieredPackageConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig,
                Orb::Internal::AnyHash
              )
            end

          # The event property used to group before tiering the group with the highest value
          sig { returns(String) }
          attr_accessor :grouping_key

          sig { returns(String) }
          attr_accessor :package_size

          # Apply tiered pricing to the largest group after grouping with the provided key.
          sig do
            returns(
              T::Array[
                Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::Tier
              ]
            )
          end
          attr_accessor :tiers

          # Configuration for max_group_tiered_package pricing
          sig do
            params(
              grouping_key: String,
              package_size: String,
              tiers:
                T::Array[
                  Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::Tier::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # The event property used to group before tiering the group with the highest value
            grouping_key:,
            package_size:,
            # Apply tiered pricing to the largest group after grouping with the provided key.
            tiers:
          )
          end

          sig do
            override.returns(
              {
                grouping_key: String,
                package_size: String,
                tiers:
                  T::Array[
                    Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::MaxGroupTieredPackage::MaxGroupTieredPackageConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Per unit amount
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a single tier
            sig do
              params(tier_lower_bound: String, unit_amount: String).returns(
                T.attached_class
              )
            end
            def self.new(
              tier_lower_bound:,
              # Per unit amount
              unit_amount:
            )
            end

            sig do
              override.returns(
                { tier_lower_bound: String, unit_amount: String }
              )
            end
            def to_hash
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::ScalableMatrixWithUnitPricing::BillingMode::TaggedSymbol
          )
        end
        attr_accessor :billing_mode

        sig do
          returns(
            Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter
              ]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithUnitPricing::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for scalable_matrix_with_unit_pricing pricing
        sig do
          returns(
            Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig
          )
        end
        attr_reader :scalable_matrix_with_unit_pricing_config

        sig do
          params(
            scalable_matrix_with_unit_pricing_config:
              Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::OrHash
          ).void
        end
        attr_writer :scalable_matrix_with_unit_pricing_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::ScalableMatrixWithUnitPricing::BillingMode::OrSymbol,
            cadence:
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::ScalableMatrixWithUnitPricing::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            scalable_matrix_with_unit_pricing_config:
              Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for scalable_matrix_with_unit_pricing pricing
          scalable_matrix_with_unit_pricing_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :scalable_matrix_with_unit_pricing
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::ScalableMatrixWithUnitPricing::BillingMode::TaggedSymbol,
              cadence:
                Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::ScalableMatrixWithUnitPricing::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::ScalableMatrixWithUnitPricing::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              scalable_matrix_with_unit_pricing_config:
                Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Price::ScalableMatrixWithUnitPricing::BillingMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::ScalableMatrixWithUnitPricing::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::ScalableMatrixWithUnitPricing::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ScalableMatrixWithUnitPricing::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithUnitPricing::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class ScalableMatrixWithUnitPricingConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig,
                Orb::Internal::AnyHash
              )
            end

          # Used to determine the unit rate
          sig { returns(String) }
          attr_accessor :first_dimension

          # Apply a scaling factor to each dimension
          sig do
            returns(
              T::Array[
                Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor
              ]
            )
          end
          attr_accessor :matrix_scaling_factors

          # The final unit price to rate against the output of the matrix
          sig { returns(String) }
          attr_accessor :unit_price

          # If true, the unit price will be prorated to the billing period
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :prorate

          # Used to determine the unit rate (optional)
          sig { returns(T.nilable(String)) }
          attr_accessor :second_dimension

          # Configuration for scalable_matrix_with_unit_pricing pricing
          sig do
            params(
              first_dimension: String,
              matrix_scaling_factors:
                T::Array[
                  Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor::OrHash
                ],
              unit_price: String,
              prorate: T.nilable(T::Boolean),
              second_dimension: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Used to determine the unit rate
            first_dimension:,
            # Apply a scaling factor to each dimension
            matrix_scaling_factors:,
            # The final unit price to rate against the output of the matrix
            unit_price:,
            # If true, the unit price will be prorated to the billing period
            prorate: nil,
            # Used to determine the unit rate (optional)
            second_dimension: nil
          )
          end

          sig do
            override.returns(
              {
                first_dimension: String,
                matrix_scaling_factors:
                  T::Array[
                    Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor
                  ],
                unit_price: String,
                prorate: T.nilable(T::Boolean),
                second_dimension: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class MatrixScalingFactor < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::ScalableMatrixWithUnitPricing::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :first_dimension_value

            sig { returns(String) }
            attr_accessor :scaling_factor

            sig { returns(T.nilable(String)) }
            attr_accessor :second_dimension_value

            # Configuration for a single matrix scaling factor
            sig do
              params(
                first_dimension_value: String,
                scaling_factor: String,
                second_dimension_value: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              first_dimension_value:,
              scaling_factor:,
              second_dimension_value: nil
            )
            end

            sig do
              override.returns(
                {
                  first_dimension_value: String,
                  scaling_factor: String,
                  second_dimension_value: T.nilable(String)
                }
              )
            end
            def to_hash
            end
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::ScalableMatrixWithTieredPricing::BillingMode::TaggedSymbol
          )
        end
        attr_accessor :billing_mode

        sig do
          returns(
            Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter
              ]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::ScalableMatrixWithTieredPricing::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        # Configuration for scalable_matrix_with_tiered_pricing pricing
        sig do
          returns(
            Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig
          )
        end
        attr_reader :scalable_matrix_with_tiered_pricing_config

        sig do
          params(
            scalable_matrix_with_tiered_pricing_config:
              Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::OrHash
          ).void
        end
        attr_writer :scalable_matrix_with_tiered_pricing_config

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::ScalableMatrixWithTieredPricing::BillingMode::OrSymbol,
            cadence:
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::ScalableMatrixWithTieredPricing::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            scalable_matrix_with_tiered_pricing_config:
              Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::OrHash,
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          # Configuration for scalable_matrix_with_tiered_pricing pricing
          scalable_matrix_with_tiered_pricing_config:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :scalable_matrix_with_tiered_pricing
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::ScalableMatrixWithTieredPricing::BillingMode::TaggedSymbol,
              cadence:
                Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::ScalableMatrixWithTieredPricing::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::ScalableMatrixWithTieredPricing::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              scalable_matrix_with_tiered_pricing_config:
                Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig,
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Price::ScalableMatrixWithTieredPricing::BillingMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::ScalableMatrixWithTieredPricing::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::ScalableMatrixWithTieredPricing::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::ScalableMatrixWithTieredPricing::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::ScalableMatrixWithTieredPricing::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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

        class ScalableMatrixWithTieredPricingConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig,
                Orb::Internal::AnyHash
              )
            end

          # Used for the scalable matrix first dimension
          sig { returns(String) }
          attr_accessor :first_dimension

          # Apply a scaling factor to each dimension
          sig do
            returns(
              T::Array[
                Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor
              ]
            )
          end
          attr_accessor :matrix_scaling_factors

          sig do
            returns(
              T::Array[
                Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::Tier
              ]
            )
          end
          attr_accessor :tiers

          # Used for the scalable matrix second dimension (optional)
          sig { returns(T.nilable(String)) }
          attr_accessor :second_dimension

          # Configuration for scalable_matrix_with_tiered_pricing pricing
          sig do
            params(
              first_dimension: String,
              matrix_scaling_factors:
                T::Array[
                  Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor::OrHash
                ],
              tiers:
                T::Array[
                  Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::Tier::OrHash
                ],
              second_dimension: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Used for the scalable matrix first dimension
            first_dimension:,
            # Apply a scaling factor to each dimension
            matrix_scaling_factors:,
            tiers:,
            # Used for the scalable matrix second dimension (optional)
            second_dimension: nil
          )
          end

          sig do
            override.returns(
              {
                first_dimension: String,
                matrix_scaling_factors:
                  T::Array[
                    Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor
                  ],
                tiers:
                  T::Array[
                    Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::Tier
                  ],
                second_dimension: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class MatrixScalingFactor < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::MatrixScalingFactor,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :first_dimension_value

            sig { returns(String) }
            attr_accessor :scaling_factor

            sig { returns(T.nilable(String)) }
            attr_accessor :second_dimension_value

            # Configuration for a single matrix scaling factor
            sig do
              params(
                first_dimension_value: String,
                scaling_factor: String,
                second_dimension_value: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              first_dimension_value:,
              scaling_factor:,
              second_dimension_value: nil
            )
            end

            sig do
              override.returns(
                {
                  first_dimension_value: String,
                  scaling_factor: String,
                  second_dimension_value: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::ScalableMatrixWithTieredPricing::ScalableMatrixWithTieredPricingConfig::Tier,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :tier_lower_bound

            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a single tier entry with business logic
            sig do
              params(tier_lower_bound: String, unit_amount: String).returns(
                T.attached_class
              )
            end
            def self.new(tier_lower_bound:, unit_amount:)
            end

            sig do
              override.returns(
                { tier_lower_bound: String, unit_amount: String }
              )
            end
            def to_hash
            end
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

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(Orb::Price::CumulativeGroupedBulk::BillingMode::TaggedSymbol)
        end
        attr_accessor :billing_mode

        sig do
          returns(Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::CumulativeGroupedBulk::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::CumulativeGroupedBulk::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
        end
        attr_writer :credit_allocation

        # Configuration for cumulative_grouped_bulk pricing
        sig do
          returns(
            Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig
          )
        end
        attr_reader :cumulative_grouped_bulk_config

        sig do
          params(
            cumulative_grouped_bulk_config:
              Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::OrHash
          ).void
        end
        attr_writer :cumulative_grouped_bulk_config

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
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

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::CumulativeGroupedBulk::BillingMode::OrSymbol,
            cadence: Orb::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
            cumulative_grouped_bulk_config:
              Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::OrHash,
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::CumulativeGroupedBulk::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          # Configuration for cumulative_grouped_bulk pricing
          cumulative_grouped_bulk_config:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :cumulative_grouped_bulk
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::CumulativeGroupedBulk::BillingMode::TaggedSymbol,
              cadence: Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::CumulativeGroupedBulk::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::CumulativeGroupedBulk::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              cumulative_grouped_bulk_config:
                Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig,
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::CumulativeGroupedBulk::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::CumulativeGroupedBulk::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::CumulativeGroupedBulk::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::CumulativeGroupedBulk::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::CumulativeGroupedBulk::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
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

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::CumulativeGroupedBulk::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CumulativeGroupedBulkConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig,
                Orb::Internal::AnyHash
              )
            end

          # Each tier lower bound must have the same group of values.
          sig do
            returns(
              T::Array[
                Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::DimensionValue
              ]
            )
          end
          attr_accessor :dimension_values

          sig { returns(String) }
          attr_accessor :group

          # Configuration for cumulative_grouped_bulk pricing
          sig do
            params(
              dimension_values:
                T::Array[
                  Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::DimensionValue::OrHash
                ],
              group: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Each tier lower bound must have the same group of values.
            dimension_values:,
            group:
          )
          end

          sig do
            override.returns(
              {
                dimension_values:
                  T::Array[
                    Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::DimensionValue
                  ],
                group: String
              }
            )
          end
          def to_hash
          end

          class DimensionValue < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Price::CumulativeGroupedBulk::CumulativeGroupedBulkConfig::DimensionValue,
                  Orb::Internal::AnyHash
                )
              end

            # Grouping key value
            sig { returns(String) }
            attr_accessor :grouping_key

            # Tier lower bound
            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Unit amount for this combination
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a dimension value entry
            sig do
              params(
                grouping_key: String,
                tier_lower_bound: String,
                unit_amount: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Grouping key value
              grouping_key:,
              # Tier lower bound
              tier_lower_bound:,
              # Unit amount for this combination
              unit_amount:
            )
            end

            sig do
              override.returns(
                {
                  grouping_key: String,
                  tier_lower_bound: String,
                  unit_amount: String
                }
              )
            end
            def to_hash
            end
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
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
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
      end

      class CumulativeGroupedAllocation < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Price::CumulativeGroupedAllocation,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig do
          returns(
            Orb::Price::CumulativeGroupedAllocation::BillingMode::TaggedSymbol
          )
        end
        attr_accessor :billing_mode

        sig do
          returns(
            Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter
              ]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::CumulativeGroupedAllocation::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
        end
        attr_writer :credit_allocation

        # Configuration for cumulative_grouped_allocation pricing
        sig do
          returns(
            Orb::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig
          )
        end
        attr_reader :cumulative_grouped_allocation_config

        sig do
          params(
            cumulative_grouped_allocation_config:
              Orb::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash
          ).void
        end
        attr_writer :cumulative_grouped_allocation_config

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig do
          returns(
            Orb::Price::CumulativeGroupedAllocation::PriceType::TaggedSymbol
          )
        end
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode:
              Orb::Price::CumulativeGroupedAllocation::BillingMode::OrSymbol,
            cadence: Orb::Price::CumulativeGroupedAllocation::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
            cumulative_grouped_allocation_config:
              Orb::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash,
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type:
              Orb::Price::CumulativeGroupedAllocation::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          # Configuration for cumulative_grouped_allocation pricing
          cumulative_grouped_allocation_config:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :cumulative_grouped_allocation
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::CumulativeGroupedAllocation::BillingMode::TaggedSymbol,
              cadence:
                Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[
                    Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter
                  ]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::CumulativeGroupedAllocation::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              cumulative_grouped_allocation_config:
                Orb::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type:
                Orb::Price::CumulativeGroupedAllocation::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Price::CumulativeGroupedAllocation::BillingMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::CumulativeGroupedAllocation::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::CumulativeGroupedAllocation::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::CumulativeGroupedAllocation::BillingMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::CumulativeGroupedAllocation::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
            )
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(
              :annual,
              Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::CumulativeGroupedAllocation::Cadence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::CumulativeGroupedAllocation::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CumulativeGroupedAllocationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                Orb::Internal::AnyHash
              )
            end

          # The overall allocation across all groups
          sig { returns(String) }
          attr_accessor :cumulative_allocation

          # The allocation per individual group
          sig { returns(String) }
          attr_accessor :group_allocation

          # The event property used to group usage before applying allocations
          sig { returns(String) }
          attr_accessor :grouping_key

          # The amount to charge for each unit outside of the allocation
          sig { returns(String) }
          attr_accessor :unit_amount

          # Configuration for cumulative_grouped_allocation pricing
          sig do
            params(
              cumulative_allocation: String,
              group_allocation: String,
              grouping_key: String,
              unit_amount: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The overall allocation across all groups
            cumulative_allocation:,
            # The allocation per individual group
            group_allocation:,
            # The event property used to group usage before applying allocations
            grouping_key:,
            # The amount to charge for each unit outside of the allocation
            unit_amount:
          )
          end

          sig do
            override.returns(
              {
                cumulative_allocation: String,
                group_allocation: String,
                grouping_key: String,
                unit_amount: String
              }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::CumulativeGroupedAllocation::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::CumulativeGroupedAllocation::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::CumulativeGroupedAllocation::PriceType::TaggedSymbol
            )
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::CumulativeGroupedAllocation::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Price::CumulativeGroupedAllocation::PriceType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class MinimumComposite < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::MinimumComposite, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::MinimumComposite::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::MinimumComposite::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Price::MinimumComposite::CompositePriceFilter]
            )
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(
              Orb::Price::MinimumComposite::ConversionRateConfig::Variants
            )
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # Configuration for minimum_composite pricing
        sig { returns(Orb::Price::MinimumComposite::MinimumCompositeConfig) }
        attr_reader :minimum_composite_config

        sig do
          params(
            minimum_composite_config:
              Orb::Price::MinimumComposite::MinimumCompositeConfig::OrHash
          ).void
        end
        attr_writer :minimum_composite_config

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::MinimumComposite::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::MinimumComposite::BillingMode::OrSymbol,
            cadence: Orb::Price::MinimumComposite::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[
                  Orb::Price::MinimumComposite::CompositePriceFilter::OrHash
                ]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            minimum_composite_config:
              Orb::Price::MinimumComposite::MinimumCompositeConfig::OrHash,
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::MinimumComposite::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # Configuration for minimum_composite pricing
          minimum_composite_config:,
          name:,
          plan_phase_order:,
          price_type:,
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :minimum_composite
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode:
                Orb::Price::MinimumComposite::BillingMode::TaggedSymbol,
              cadence: Orb::Price::MinimumComposite::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::MinimumComposite::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::MinimumComposite::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              minimum_composite_config:
                Orb::Price::MinimumComposite::MinimumCompositeConfig,
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::MinimumComposite::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MinimumComposite::BillingMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::MinimumComposite::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::MinimumComposite::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::MinimumComposite::BillingMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MinimumComposite::Cadence)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(
              :one_time,
              Orb::Price::MinimumComposite::Cadence::TaggedSymbol
            )
          MONTHLY =
            T.let(:monthly, Orb::Price::MinimumComposite::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(
              :quarterly,
              Orb::Price::MinimumComposite::Cadence::TaggedSymbol
            )
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Price::MinimumComposite::Cadence::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Price::MinimumComposite::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::MinimumComposite::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::MinimumComposite::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MinimumComposite::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::MinimumComposite::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::MinimumComposite::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::MinimumComposite::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::MinimumComposite::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MinimumComposite::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MinimumComposite::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::MinimumComposite::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::MinimumComposite::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::MinimumComposite::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::MinimumComposite::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class MinimumCompositeConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::MinimumComposite::MinimumCompositeConfig,
                Orb::Internal::AnyHash
              )
            end

          # The minimum amount to apply
          sig { returns(String) }
          attr_accessor :minimum_amount

          # If true, subtotals from this price are prorated based on the service period
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :prorated

          sig { params(prorated: T::Boolean).void }
          attr_writer :prorated

          # Configuration for minimum_composite pricing
          sig do
            params(minimum_amount: String, prorated: T::Boolean).returns(
              T.attached_class
            )
          end
          def self.new(
            # The minimum amount to apply
            minimum_amount:,
            # If true, subtotals from this price are prorated based on the service period
            prorated: nil
          )
          end

          sig do
            override.returns({ minimum_amount: String, prorated: T::Boolean })
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Price::MinimumComposite::PriceType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::MinimumComposite::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::MinimumComposite::PriceType::TaggedSymbol
            )
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::MinimumComposite::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::MinimumComposite::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Percent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Percent, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::Percent::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::Percent::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(T::Array[Orb::Price::Percent::CompositePriceFilter])
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(Orb::Price::Percent::ConversionRateConfig::Variants)
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
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

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        # Configuration for percent pricing
        sig { returns(Orb::Price::Percent::PercentConfig) }
        attr_reader :percent_config

        sig do
          params(
            percent_config: Orb::Price::Percent::PercentConfig::OrHash
          ).void
        end
        attr_writer :percent_config

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Percent::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::Percent::BillingMode::OrSymbol,
            cadence: Orb::Price::Percent::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[Orb::Price::Percent::CompositePriceFilter::OrHash]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            percent_config: Orb::Price::Percent::PercentConfig::OrHash,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Percent::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # Configuration for percent pricing
          percent_config:,
          plan_phase_order:,
          price_type:,
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :percent
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode: Orb::Price::Percent::BillingMode::TaggedSymbol,
              cadence: Orb::Price::Percent::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::Price::Percent::CompositePriceFilter]),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(Orb::Price::Percent::ConversionRateConfig::Variants),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              percent_config: Orb::Price::Percent::PercentConfig,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Percent::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Percent::BillingMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(:in_advance, Orb::Price::Percent::BillingMode::TaggedSymbol)
          IN_ARREAR =
            T.let(:in_arrear, Orb::Price::Percent::BillingMode::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Percent::BillingMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Percent::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::Percent::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Percent::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::Percent::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Percent::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Percent::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Percent::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Percent::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::Percent::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::Percent::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field: Orb::Price::Percent::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::Percent::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::Percent::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Price::Percent::CompositePriceFilter::Field)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Percent::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::Percent::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::Percent::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::Percent::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::Percent::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PercentConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Percent::PercentConfig, Orb::Internal::AnyHash)
            end

          # What percent of the component subtotals to charge
          sig { returns(Float) }
          attr_accessor :percent

          # Configuration for percent pricing
          sig { params(percent: Float).returns(T.attached_class) }
          def self.new(
            # What percent of the component subtotals to charge
            percent:
          )
          end

          sig { override.returns({ percent: Float }) }
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Percent::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Percent::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Percent::PriceType::TaggedSymbol)
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::Percent::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::Percent::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class EventOutput < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Price::EventOutput, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Orb::BillableMetricTiny)) }
        attr_reader :billable_metric

        sig do
          params(
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash)
          ).void
        end
        attr_writer :billable_metric

        sig { returns(Orb::BillingCycleConfiguration) }
        attr_reader :billing_cycle_configuration

        sig do
          params(
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash
          ).void
        end
        attr_writer :billing_cycle_configuration

        sig { returns(Orb::Price::EventOutput::BillingMode::TaggedSymbol) }
        attr_accessor :billing_mode

        sig { returns(Orb::Price::EventOutput::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig do
          returns(
            T.nilable(T::Array[Orb::Price::EventOutput::CompositePriceFilter])
          )
        end
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(Orb::Price::EventOutput::ConversionRateConfig::Variants)
          )
        end
        attr_accessor :conversion_rate_config

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(Orb::Allocation)) }
        attr_reader :credit_allocation

        sig do
          params(credit_allocation: T.nilable(Orb::Allocation::OrHash)).void
        end
        attr_writer :credit_allocation

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        # Configuration for event_output pricing
        sig { returns(Orb::Price::EventOutput::EventOutputConfig) }
        attr_reader :event_output_config

        sig do
          params(
            event_output_config:
              Orb::Price::EventOutput::EventOutputConfig::OrHash
          ).void
        end
        attr_writer :event_output_config

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(Orb::BillingCycleConfiguration)) }
        attr_reader :invoicing_cycle_configuration

        sig do
          params(
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash)
          ).void
        end
        attr_writer :invoicing_cycle_configuration

        # A minimal representation of an Item containing only the essential identifying
        # information.
        sig { returns(Orb::ItemSlim) }
        attr_reader :item

        sig { params(item: Orb::ItemSlim::OrHash).void }
        attr_writer :item

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::EventOutput::PriceType::TaggedSymbol) }
        attr_accessor :price_type

        # The price id this price replaces. This price will take the place of the replaced
        # price in plan version migrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :replaces_price_id

        sig { returns(T.nilable(Orb::DimensionalPriceConfiguration)) }
        attr_reader :dimensional_price_configuration

        sig do
          params(
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash)
          ).void
        end
        attr_writer :dimensional_price_configuration

        sig do
          params(
            id: String,
            billable_metric: T.nilable(Orb::BillableMetricTiny::OrHash),
            billing_cycle_configuration: Orb::BillingCycleConfiguration::OrHash,
            billing_mode: Orb::Price::EventOutput::BillingMode::OrSymbol,
            cadence: Orb::Price::EventOutput::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(
                T::Array[Orb::Price::EventOutput::CompositePriceFilter::OrHash]
              ),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig::OrHash,
                  Orb::TieredConversionRateConfig::OrHash
                )
              ),
            created_at: Time,
            credit_allocation: T.nilable(Orb::Allocation::OrHash),
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
            event_output_config:
              Orb::Price::EventOutput::EventOutputConfig::OrHash,
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoicing_cycle_configuration:
              T.nilable(Orb::BillingCycleConfiguration::OrHash),
            item: Orb::ItemSlim::OrHash,
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::EventOutput::PriceType::OrSymbol,
            replaces_price_id: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::DimensionalPriceConfiguration::OrHash),
            model_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          billable_metric:,
          billing_cycle_configuration:,
          billing_mode:,
          cadence:,
          composite_price_filters:,
          conversion_rate:,
          conversion_rate_config:,
          created_at:,
          credit_allocation:,
          currency:,
          discount:,
          # Configuration for event_output pricing
          event_output_config:,
          external_price_id:,
          fixed_price_quantity:,
          invoicing_cycle_configuration:,
          # A minimal representation of an Item containing only the essential identifying
          # information.
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
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :event_output
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              billing_mode: Orb::Price::EventOutput::BillingMode::TaggedSymbol,
              cadence: Orb::Price::EventOutput::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(
                  T::Array[Orb::Price::EventOutput::CompositePriceFilter]
                ),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(
                  Orb::Price::EventOutput::ConversionRateConfig::Variants
                ),
              created_at: Time,
              credit_allocation: T.nilable(Orb::Allocation),
              currency: String,
              discount: T.nilable(Orb::Discount::Variants),
              event_output_config: Orb::Price::EventOutput::EventOutputConfig,
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoicing_cycle_configuration:
                T.nilable(Orb::BillingCycleConfiguration),
              item: Orb::ItemSlim,
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::EventOutput::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module BillingMode
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::EventOutput::BillingMode) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_ADVANCE =
            T.let(
              :in_advance,
              Orb::Price::EventOutput::BillingMode::TaggedSymbol
            )
          IN_ARREAR =
            T.let(
              :in_arrear,
              Orb::Price::EventOutput::BillingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::EventOutput::BillingMode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::EventOutput::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::EventOutput::Cadence::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Price::EventOutput::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::EventOutput::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::EventOutput::Cadence::TaggedSymbol)
          ANNUAL =
            T.let(:annual, Orb::Price::EventOutput::Cadence::TaggedSymbol)
          CUSTOM =
            T.let(:custom, Orb::Price::EventOutput::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::EventOutput::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class CompositePriceFilter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::EventOutput::CompositePriceFilter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(
              Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol
            )
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(
              Orb::Price::EventOutput::CompositePriceFilter::Operator::TaggedSymbol
            )
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field:
                Orb::Price::EventOutput::CompositePriceFilter::Field::OrSymbol,
              operator:
                Orb::Price::EventOutput::CompositePriceFilter::Operator::OrSymbol,
              values: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The property of the price to filter on.
            field:,
            # Should prices that match the filter be included or excluded.
            operator:,
            # The IDs or values that match this filter.
            values:
          )
          end

          sig do
            override.returns(
              {
                field:
                  Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol,
                operator:
                  Orb::Price::EventOutput::CompositePriceFilter::Operator::TaggedSymbol,
                values: T::Array[String]
              }
            )
          end
          def to_hash
          end

          # The property of the price to filter on.
          module Field
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::EventOutput::CompositePriceFilter::Field
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::EventOutput::CompositePriceFilter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Price::EventOutput::CompositePriceFilter::Operator
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Price::EventOutput::CompositePriceFilter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Price::EventOutput::CompositePriceFilter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Price::EventOutput::CompositePriceFilter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class EventOutputConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::EventOutput::EventOutputConfig,
                Orb::Internal::AnyHash
              )
            end

          # The key in the event data to extract the unit rate from.
          sig { returns(String) }
          attr_accessor :unit_rating_key

          # If provided, this amount will be used as the unit rate when an event does not
          # have a value for the `unit_rating_key`. If not provided, events missing a unit
          # rate will be ignored.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_unit_rate

          # An optional key in the event data to group by (e.g., event ID). All events will
          # also be grouped by their unit rate.
          sig { returns(T.nilable(String)) }
          attr_accessor :grouping_key

          # Configuration for event_output pricing
          sig do
            params(
              unit_rating_key: String,
              default_unit_rate: T.nilable(String),
              grouping_key: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The key in the event data to extract the unit rate from.
            unit_rating_key:,
            # If provided, this amount will be used as the unit rate when an event does not
            # have a value for the `unit_rating_key`. If not provided, events missing a unit
            # rate will be ignored.
            default_unit_rate: nil,
            # An optional key in the event data to group by (e.g., event ID). All events will
            # also be grouped by their unit rate.
            grouping_key: nil
          )
          end

          sig do
            override.returns(
              {
                unit_rating_key: String,
                default_unit_rate: T.nilable(String),
                grouping_key: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        module PriceType
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::EventOutput::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(
              :usage_price,
              Orb::Price::EventOutput::PriceType::TaggedSymbol
            )
          FIXED_PRICE =
            T.let(
              :fixed_price,
              Orb::Price::EventOutput::PriceType::TaggedSymbol
            )
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::EventOutput::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::EventOutput::PriceType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      sig { override.returns(T::Array[Orb::Price::Variants]) }
      def self.variants
      end
    end
  end
end
