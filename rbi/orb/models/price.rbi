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
            Orb::Price::Minimum
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

        sig { returns(Orb::Price::Unit::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::Unit::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::Unit::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::Tiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::Tiered::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::Tiered::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        # Configuration for bulk pricing
        sig { returns(Orb::BulkConfig) }
        attr_reader :bulk_config

        sig { params(bulk_config: Orb::BulkConfig::OrHash).void }
        attr_writer :bulk_config

        sig { returns(Orb::Price::Bulk::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            bulk_config: Orb::BulkConfig::OrHash,
            cadence: Orb::Price::Bulk::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              bulk_config: Orb::BulkConfig,
              cadence: Orb::Price::Bulk::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::Package::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::Package::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::Package::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::Matrix::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::Matrix::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::Matrix::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::ThresholdTotalAmount::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::ThresholdTotalAmount::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

            # Quantity threshold
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
              # Quantity threshold
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

        sig { returns(Orb::Price::TieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::TieredPackage::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::TieredPackage::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

          # Package size
          sig { returns(String) }
          attr_accessor :package_size

          # Apply tiered pricing after rounding up the quantity to the package size. Tiers
          # are defined using exclusive lower bounds.
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
            # Package size
            package_size:,
            # Apply tiered pricing after rounding up the quantity to the package size. Tiers
            # are defined using exclusive lower bounds.
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

            # Tier lower bound
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
              # Tier lower bound
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

        sig { returns(Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::TieredWithMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::TieredWithMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

            # Minimum amount
            sig { returns(String) }
            attr_accessor :minimum_amount

            # Tier lower bound
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
              # Minimum amount
              minimum_amount:,
              # Tier lower bound
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

        sig { returns(Orb::Price::GroupedTiered::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::GroupedTiered::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::GroupedTiered::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

            # Tier lower bound
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
              # Tier lower bound
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
          returns(Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::TieredPackageWithMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence:
                Orb::Price::TieredPackageWithMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

          # Package size
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
            # Package size
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

            # Minimum amount
            sig { returns(String) }
            attr_accessor :minimum_amount

            # Price per package
            sig { returns(String) }
            attr_accessor :per_unit

            # Tier lower bound
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
            def self.new(
              # Minimum amount
              minimum_amount:,
              # Price per package
              per_unit:,
              # Tier lower bound
              tier_lower_bound:
            )
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
          returns(Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::PackageWithAllocation::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::PackageWithAllocation::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        class PackageWithAllocationConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Price::PackageWithAllocation::PackageWithAllocationConfig,
                Orb::Internal::AnyHash
              )
            end

          # Usage allocation
          sig { returns(String) }
          attr_accessor :allocation

          # Price per package
          sig { returns(String) }
          attr_accessor :package_amount

          # Package size
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
          def self.new(
            # Usage allocation
            allocation:,
            # Price per package
            package_amount:,
            # Package size
            package_size:
          )
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

        sig { returns(Orb::Price::UnitWithPercent::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::UnitWithPercent::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::UnitWithPercent::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::MatrixWithAllocation::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::MatrixWithAllocation::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::TieredWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::TieredWithProration::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::TieredWithProration::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::UnitWithProration::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::UnitWithProration::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::UnitWithProration::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::GroupedAllocation::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::GroupedAllocation::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::GroupedAllocation::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            bulk_with_proration_config:
              Orb::Price::BulkWithProration::BulkWithProrationConfig::OrHash,
            cadence: Orb::Price::BulkWithProration::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              bulk_with_proration_config:
                Orb::Price::BulkWithProration::BulkWithProrationConfig,
              cadence: Orb::Price::BulkWithProration::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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
          returns(Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::GroupedWithProratedMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence:
                Orb::Price::GroupedWithProratedMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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
          returns(Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::GroupedWithMeteredMinimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence:
                Orb::Price::GroupedWithMeteredMinimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

            # Scaling factor
            sig { returns(String) }
            attr_accessor :scaling_factor

            # Scaling value
            sig { returns(String) }
            attr_accessor :scaling_value

            # Configuration for a scaling factor
            sig do
              params(scaling_factor: String, scaling_value: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Scaling factor
              scaling_factor:,
              # Scaling value
              scaling_value:
            )
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

            # Pricing value
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
              # Pricing value
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
            Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence:
                Orb::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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
          returns(Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::MatrixWithDisplayName::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::MatrixWithDisplayName::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

        sig { returns(Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::GroupedTieredPackage::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::GroupedTieredPackage::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

          # Package size
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
            # Package size
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

            # Price per package
            sig { returns(String) }
            attr_accessor :per_unit

            # Tier lower bound
            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Configuration for a single tier
            sig do
              params(per_unit: String, tier_lower_bound: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Price per package
              per_unit:,
              # Tier lower bound
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
          returns(Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::MaxGroupTieredPackage::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::MaxGroupTieredPackage::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

          # Package size
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
            # Package size
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

            # Tier lower bound
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
              # Tier lower bound
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
            Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence:
              Orb::Price::ScalableMatrixWithUnitPricing::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence:
                Orb::Price::ScalableMatrixWithUnitPricing::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

            # First dimension value
            sig { returns(String) }
            attr_accessor :first_dimension_value

            # Scaling factor
            sig { returns(String) }
            attr_accessor :scaling_factor

            # Second dimension value (optional)
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
              # First dimension value
              first_dimension_value:,
              # Scaling factor
              scaling_factor:,
              # Second dimension value (optional)
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
            Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol
          )
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence:
              Orb::Price::ScalableMatrixWithTieredPricing::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence:
                Orb::Price::ScalableMatrixWithTieredPricing::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

          # Tier pricing structure
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
            # Tier pricing structure
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

            # First dimension value
            sig { returns(String) }
            attr_accessor :first_dimension_value

            # Scaling factor
            sig { returns(String) }
            attr_accessor :scaling_factor

            # Second dimension value (optional)
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
              # First dimension value
              first_dimension_value:,
              # Scaling factor
              scaling_factor:,
              # Second dimension value (optional)
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

            # Tier lower bound
            sig { returns(String) }
            attr_accessor :tier_lower_bound

            # Per unit amount
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for a single tier entry with business logic
            sig do
              params(tier_lower_bound: String, unit_amount: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Tier lower bound
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
          returns(Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol)
        end
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
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
            cadence: Orb::Price::CumulativeGroupedBulk::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
              cadence: Orb::Price::CumulativeGroupedBulk::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
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

          # Grouping key name
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
            # Grouping key name
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

      class Minimum < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Price::Minimum, Orb::Internal::AnyHash) }

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

        sig { returns(Orb::Price::Minimum::Cadence::TaggedSymbol) }
        attr_accessor :cadence

        sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
        attr_accessor :composite_price_filters

        sig { returns(T.nilable(Float)) }
        attr_accessor :conversion_rate

        sig do
          returns(
            T.nilable(Orb::Price::Minimum::ConversionRateConfig::Variants)
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

        # Configuration for minimum pricing
        sig { returns(Orb::Price::Minimum::MinimumConfig) }
        attr_reader :minimum_config

        sig do
          params(
            minimum_config: Orb::Price::Minimum::MinimumConfig::OrHash
          ).void
        end
        attr_writer :minimum_config

        # The pricing model type
        sig { returns(Symbol) }
        attr_accessor :model_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(Orb::Price::Minimum::PriceType::TaggedSymbol) }
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
            cadence: Orb::Price::Minimum::Cadence::OrSymbol,
            composite_price_filters:
              T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
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
            minimum_config: Orb::Price::Minimum::MinimumConfig::OrHash,
            name: String,
            plan_phase_order: T.nilable(Integer),
            price_type: Orb::Price::Minimum::PriceType::OrSymbol,
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
          # Configuration for minimum pricing
          minimum_config:,
          name:,
          plan_phase_order:,
          price_type:,
          # The price id this price replaces. This price will take the place of the replaced
          # price in plan version migrations.
          replaces_price_id:,
          dimensional_price_configuration: nil,
          # The pricing model type
          model_type: :minimum
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billable_metric: T.nilable(Orb::BillableMetricTiny),
              billing_cycle_configuration: Orb::BillingCycleConfiguration,
              cadence: Orb::Price::Minimum::Cadence::TaggedSymbol,
              composite_price_filters:
                T.nilable(T::Array[Orb::TransformPriceFilter]),
              conversion_rate: T.nilable(Float),
              conversion_rate_config:
                T.nilable(Orb::Price::Minimum::ConversionRateConfig::Variants),
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
              minimum_config: Orb::Price::Minimum::MinimumConfig,
              model_type: Symbol,
              name: String,
              plan_phase_order: T.nilable(Integer),
              price_type: Orb::Price::Minimum::PriceType::TaggedSymbol,
              replaces_price_id: T.nilable(String),
              dimensional_price_configuration:
                T.nilable(Orb::DimensionalPriceConfiguration)
            }
          )
        end
        def to_hash
        end

        module Cadence
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Price::Minimum::Cadence) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONE_TIME =
            T.let(:one_time, Orb::Price::Minimum::Cadence::TaggedSymbol)
          MONTHLY = T.let(:monthly, Orb::Price::Minimum::Cadence::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Price::Minimum::Cadence::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(:semi_annual, Orb::Price::Minimum::Cadence::TaggedSymbol)
          ANNUAL = T.let(:annual, Orb::Price::Minimum::Cadence::TaggedSymbol)
          CUSTOM = T.let(:custom, Orb::Price::Minimum::Cadence::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Price::Minimum::Cadence::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class MinimumConfig < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Orb::Price::Minimum::MinimumConfig, Orb::Internal::AnyHash)
            end

          # The minimum amount to apply
          sig { returns(String) }
          attr_accessor :minimum_amount

          # If true, subtotals from this price are prorated based on the service period
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :prorated

          sig { params(prorated: T::Boolean).void }
          attr_writer :prorated

          # Configuration for minimum pricing
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
            T.type_alias { T.all(Symbol, Orb::Price::Minimum::PriceType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USAGE_PRICE =
            T.let(:usage_price, Orb::Price::Minimum::PriceType::TaggedSymbol)
          FIXED_PRICE =
            T.let(:fixed_price, Orb::Price::Minimum::PriceType::TaggedSymbol)
          COMPOSITE_PRICE =
            T.let(
              :composite_price,
              Orb::Price::Minimum::PriceType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Price::Minimum::PriceType::TaggedSymbol]
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
