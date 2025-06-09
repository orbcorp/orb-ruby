# typed: strong

module Orb
  module Models
    class Plan < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Plan, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # Adjustments for this plan. If the plan has phases, this includes adjustments
      # across all phases of the plan.
      sig { returns(T::Array[Orb::Plan::Adjustment::Variants]) }
      attr_accessor :adjustments

      sig { returns(T.nilable(Orb::Plan::BasePlan)) }
      attr_reader :base_plan

      sig { params(base_plan: T.nilable(Orb::Plan::BasePlan::OrHash)).void }
      attr_writer :base_plan

      # The parent plan id if the given plan was created by overriding one or more of
      # the parent's prices
      sig { returns(T.nilable(String)) }
      attr_accessor :base_plan_id

      sig { returns(Time) }
      attr_accessor :created_at

      # An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's
      # prices.
      sig { returns(String) }
      attr_accessor :currency

      # The default memo text on the invoices corresponding to subscriptions on this
      # plan. Note that each subscription may configure its own memo.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T.nilable(Orb::Discount::Variants)) }
      attr_accessor :discount

      # An optional user-defined ID for this plan resource, used throughout the system
      # as an alias for this Plan. Use this field to identify a plan by an existing
      # identifier in your system.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      # An ISO 4217 currency string for which this plan is billed in. Matches `currency`
      # unless `currency` is a custom pricing unit.
      sig { returns(String) }
      attr_accessor :invoicing_currency

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

      sig { returns(String) }
      attr_accessor :name

      # Determines the difference between the invoice issue date and the due date. A
      # value of "0" here signifies that invoices are due on issue, whereas a value of
      # "30" means that the customer has a month to pay the invoice before its overdue.
      # Note that individual subscriptions or invoices may set a different net terms
      # configuration.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig { returns(T.nilable(T::Array[Orb::Plan::PlanPhase])) }
      attr_accessor :plan_phases

      # Prices for this plan. If the plan has phases, this includes prices across all
      # phases of the plan.
      sig { returns(T::Array[Orb::Price::Variants]) }
      attr_accessor :prices

      sig { returns(Orb::Plan::Product) }
      attr_reader :product

      sig { params(product: Orb::Plan::Product::OrHash).void }
      attr_writer :product

      sig { returns(Orb::Plan::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Orb::Plan::TrialConfig) }
      attr_reader :trial_config

      sig { params(trial_config: Orb::Plan::TrialConfig::OrHash).void }
      attr_writer :trial_config

      sig { returns(Integer) }
      attr_accessor :version

      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      sig do
        params(
          id: String,
          adjustments:
            T::Array[
              T.any(
                Orb::PlanPhaseUsageDiscountAdjustment::OrHash,
                Orb::PlanPhaseAmountDiscountAdjustment::OrHash,
                Orb::PlanPhasePercentageDiscountAdjustment::OrHash,
                Orb::PlanPhaseMinimumAdjustment::OrHash,
                Orb::PlanPhaseMaximumAdjustment::OrHash
              )
            ],
          base_plan: T.nilable(Orb::Plan::BasePlan::OrHash),
          base_plan_id: T.nilable(String),
          created_at: Time,
          currency: String,
          default_invoice_memo: T.nilable(String),
          description: String,
          discount:
            T.nilable(
              T.any(
                Orb::PercentageDiscount::OrHash,
                Orb::TrialDiscount::OrHash,
                Orb::UsageDiscount::OrHash,
                Orb::AmountDiscount::OrHash
              )
            ),
          external_plan_id: T.nilable(String),
          invoicing_currency: String,
          maximum: T.nilable(Orb::Maximum::OrHash),
          maximum_amount: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(Orb::Minimum::OrHash),
          minimum_amount: T.nilable(String),
          name: String,
          net_terms: T.nilable(Integer),
          plan_phases: T.nilable(T::Array[Orb::Plan::PlanPhase::OrHash]),
          prices:
            T::Array[
              T.any(
                Orb::Price::Unit::OrHash,
                Orb::Price::Package::OrHash,
                Orb::Price::Matrix::OrHash,
                Orb::Price::Tiered::OrHash,
                Orb::Price::TieredBPS::OrHash,
                Orb::Price::BPS::OrHash,
                Orb::Price::BulkBPS::OrHash,
                Orb::Price::Bulk::OrHash,
                Orb::Price::ThresholdTotalAmount::OrHash,
                Orb::Price::TieredPackage::OrHash,
                Orb::Price::GroupedTiered::OrHash,
                Orb::Price::TieredWithMinimum::OrHash,
                Orb::Price::TieredPackageWithMinimum::OrHash,
                Orb::Price::PackageWithAllocation::OrHash,
                Orb::Price::UnitWithPercent::OrHash,
                Orb::Price::MatrixWithAllocation::OrHash,
                Orb::Price::TieredWithProration::OrHash,
                Orb::Price::UnitWithProration::OrHash,
                Orb::Price::GroupedAllocation::OrHash,
                Orb::Price::GroupedWithProratedMinimum::OrHash,
                Orb::Price::GroupedWithMeteredMinimum::OrHash,
                Orb::Price::MatrixWithDisplayName::OrHash,
                Orb::Price::BulkWithProration::OrHash,
                Orb::Price::GroupedTieredPackage::OrHash,
                Orb::Price::MaxGroupTieredPackage::OrHash,
                Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
                Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
                Orb::Price::CumulativeGroupedBulk::OrHash
              )
            ],
          product: Orb::Plan::Product::OrHash,
          status: Orb::Plan::Status::OrSymbol,
          trial_config: Orb::Plan::TrialConfig::OrHash,
          version: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Adjustments for this plan. If the plan has phases, this includes adjustments
        # across all phases of the plan.
        adjustments:,
        base_plan:,
        # The parent plan id if the given plan was created by overriding one or more of
        # the parent's prices
        base_plan_id:,
        created_at:,
        # An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's
        # prices.
        currency:,
        # The default memo text on the invoices corresponding to subscriptions on this
        # plan. Note that each subscription may configure its own memo.
        default_invoice_memo:,
        description:,
        discount:,
        # An optional user-defined ID for this plan resource, used throughout the system
        # as an alias for this Plan. Use this field to identify a plan by an existing
        # identifier in your system.
        external_plan_id:,
        # An ISO 4217 currency string for which this plan is billed in. Matches `currency`
        # unless `currency` is a custom pricing unit.
        invoicing_currency:,
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
        # Determines the difference between the invoice issue date and the due date. A
        # value of "0" here signifies that invoices are due on issue, whereas a value of
        # "30" means that the customer has a month to pay the invoice before its overdue.
        # Note that individual subscriptions or invoices may set a different net terms
        # configuration.
        net_terms:,
        plan_phases:,
        # Prices for this plan. If the plan has phases, this includes prices across all
        # phases of the plan.
        prices:,
        product:,
        status:,
        trial_config:,
        version:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjustments: T::Array[Orb::Plan::Adjustment::Variants],
            base_plan: T.nilable(Orb::Plan::BasePlan),
            base_plan_id: T.nilable(String),
            created_at: Time,
            currency: String,
            default_invoice_memo: T.nilable(String),
            description: String,
            discount: T.nilable(Orb::Discount::Variants),
            external_plan_id: T.nilable(String),
            invoicing_currency: String,
            maximum: T.nilable(Orb::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            net_terms: T.nilable(Integer),
            plan_phases: T.nilable(T::Array[Orb::Plan::PlanPhase]),
            prices: T::Array[Orb::Price::Variants],
            product: Orb::Plan::Product,
            status: Orb::Plan::Status::TaggedSymbol,
            trial_config: Orb::Plan::TrialConfig,
            version: Integer
          }
        )
      end
      def to_hash
      end

      module Adjustment
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::PlanPhaseUsageDiscountAdjustment,
              Orb::PlanPhaseAmountDiscountAdjustment,
              Orb::PlanPhasePercentageDiscountAdjustment,
              Orb::PlanPhaseMinimumAdjustment,
              Orb::PlanPhaseMaximumAdjustment
            )
          end

        sig { override.returns(T::Array[Orb::Plan::Adjustment::Variants]) }
        def self.variants
        end
      end

      class BasePlan < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Plan::BasePlan, Orb::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # An optional user-defined ID for this plan resource, used throughout the system
        # as an alias for this Plan. Use this field to identify a plan by an existing
        # identifier in your system.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(
            id: T.nilable(String),
            external_plan_id: T.nilable(String),
            name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # An optional user-defined ID for this plan resource, used throughout the system
          # as an alias for this Plan. Use this field to identify a plan by an existing
          # identifier in your system.
          external_plan_id:,
          name:
        )
        end

        sig do
          override.returns(
            {
              id: T.nilable(String),
              external_plan_id: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class PlanPhase < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Plan::PlanPhase, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(Orb::Discount::Variants)) }
        attr_accessor :discount

        # How many terms of length `duration_unit` this phase is active for. If null, this
        # phase is evergreen and active indefinitely
        sig { returns(T.nilable(Integer)) }
        attr_accessor :duration

        sig do
          returns(T.nilable(Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol))
        end
        attr_accessor :duration_unit

        sig { returns(T.nilable(Orb::Maximum)) }
        attr_reader :maximum

        sig { params(maximum: T.nilable(Orb::Maximum::OrHash)).void }
        attr_writer :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T.nilable(Orb::Minimum)) }
        attr_reader :minimum

        sig { params(minimum: T.nilable(Orb::Minimum::OrHash)).void }
        attr_writer :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(String) }
        attr_accessor :name

        # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
        sig { returns(Integer) }
        attr_accessor :order

        sig do
          params(
            id: String,
            description: T.nilable(String),
            discount:
              T.nilable(
                T.any(
                  Orb::PercentageDiscount::OrHash,
                  Orb::TrialDiscount::OrHash,
                  Orb::UsageDiscount::OrHash,
                  Orb::AmountDiscount::OrHash
                )
              ),
            duration: T.nilable(Integer),
            duration_unit:
              T.nilable(Orb::Plan::PlanPhase::DurationUnit::OrSymbol),
            maximum: T.nilable(Orb::Maximum::OrHash),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Minimum::OrHash),
            minimum_amount: T.nilable(String),
            name: String,
            order: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          description:,
          discount:,
          # How many terms of length `duration_unit` this phase is active for. If null, this
          # phase is evergreen and active indefinitely
          duration:,
          duration_unit:,
          maximum:,
          maximum_amount:,
          minimum:,
          minimum_amount:,
          name:,
          # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
          order:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: T.nilable(String),
              discount: T.nilable(Orb::Discount::Variants),
              duration: T.nilable(Integer),
              duration_unit:
                T.nilable(Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol),
              maximum: T.nilable(Orb::Maximum),
              maximum_amount: T.nilable(String),
              minimum: T.nilable(Orb::Minimum),
              minimum_amount: T.nilable(String),
              name: String,
              order: Integer
            }
          )
        end
        def to_hash
        end

        module DurationUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Plan::PlanPhase::DurationUnit) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAILY =
            T.let(:daily, Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol)
          MONTHLY =
            T.let(:monthly, Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol)
          QUARTERLY =
            T.let(:quarterly, Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol)
          SEMI_ANNUAL =
            T.let(
              :semi_annual,
              Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol
            )
          ANNUAL =
            T.let(:annual, Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Plan::PlanPhase::DurationUnit::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Product < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Plan::Product, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig do
          params(id: String, created_at: Time, name: String).returns(
            T.attached_class
          )
        end
        def self.new(id:, created_at:, name:)
        end

        sig { override.returns({ id: String, created_at: Time, name: String }) }
        def to_hash
        end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Plan::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Orb::Plan::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, Orb::Plan::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::Plan::Status::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Plan::Status::TaggedSymbol]) }
        def self.values
        end
      end

      class TrialConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Plan::TrialConfig, Orb::Internal::AnyHash) }

        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period

        sig { returns(Orb::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol) }
        attr_accessor :trial_period_unit

        sig do
          params(
            trial_period: T.nilable(Integer),
            trial_period_unit: Orb::Plan::TrialConfig::TrialPeriodUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(trial_period:, trial_period_unit:)
        end

        sig do
          override.returns(
            {
              trial_period: T.nilable(Integer),
              trial_period_unit:
                Orb::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module TrialPeriodUnit
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::Plan::TrialConfig::TrialPeriodUnit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAYS =
            T.let(:days, Orb::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Plan::TrialConfig::TrialPeriodUnit::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
