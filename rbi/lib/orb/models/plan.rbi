# typed: strong

module Orb
  module Models
    class Plan < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          T::Array[T.any(
            Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
          )]
        )
      end
      attr_accessor :adjustments

      sig { returns(T.nilable(Orb::Models::Plan::BasePlan)) }
      attr_accessor :base_plan

      sig { returns(T.nilable(String)) }
      attr_accessor :base_plan_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(String) }
      attr_accessor :description

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
      attr_accessor :external_plan_id

      sig { returns(String) }
      attr_accessor :invoicing_currency

      sig { returns(T.nilable(Orb::Models::Plan::Maximum)) }
      attr_accessor :maximum

      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(T.nilable(Orb::Models::Plan::Minimum)) }
      attr_accessor :minimum

      sig { returns(T.nilable(String)) }
      attr_accessor :minimum_amount

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig { returns(T.nilable(T::Array[Orb::Models::Plan::PlanPhase])) }
      attr_accessor :plan_phases

      sig do
        returns(
          T::Array[T.any(
            Orb::Models::Price::UnitPrice,
            Orb::Models::Price::PackagePrice,
            Orb::Models::Price::MatrixPrice,
            Orb::Models::Price::TieredPrice,
            Orb::Models::Price::TieredBpsPrice,
            Orb::Models::Price::BpsPrice,
            Orb::Models::Price::BulkBpsPrice,
            Orb::Models::Price::BulkPrice,
            Orb::Models::Price::ThresholdTotalAmountPrice,
            Orb::Models::Price::TieredPackagePrice,
            Orb::Models::Price::GroupedTieredPrice,
            Orb::Models::Price::TieredWithMinimumPrice,
            Orb::Models::Price::TieredPackageWithMinimumPrice,
            Orb::Models::Price::PackageWithAllocationPrice,
            Orb::Models::Price::UnitWithPercentPrice,
            Orb::Models::Price::MatrixWithAllocationPrice,
            Orb::Models::Price::TieredWithProrationPrice,
            Orb::Models::Price::UnitWithProrationPrice,
            Orb::Models::Price::GroupedAllocationPrice,
            Orb::Models::Price::GroupedWithProratedMinimumPrice,
            Orb::Models::Price::GroupedWithMeteredMinimumPrice,
            Orb::Models::Price::MatrixWithDisplayNamePrice,
            Orb::Models::Price::BulkWithProrationPrice,
            Orb::Models::Price::GroupedTieredPackagePrice,
            Orb::Models::Price::MaxGroupTieredPackagePrice,
            Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
          )]
        )
      end
      attr_accessor :prices

      sig { returns(Orb::Models::Plan::Product) }
      attr_accessor :product

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Orb::Models::Plan::TrialConfig) }
      attr_accessor :trial_config

      sig { returns(Integer) }
      attr_accessor :version

      sig do
        params(
          id: String,
          adjustments: T::Array[T.any(
            Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment,
            Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
          )],
          base_plan: T.nilable(Orb::Models::Plan::BasePlan),
          base_plan_id: T.nilable(String),
          created_at: Time,
          currency: String,
          default_invoice_memo: T.nilable(String),
          description: String,
          discount: T.nilable(
            T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::Discount::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          ),
          external_plan_id: T.nilable(String),
          invoicing_currency: String,
          maximum: T.nilable(Orb::Models::Plan::Maximum),
          maximum_amount: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          minimum: T.nilable(Orb::Models::Plan::Minimum),
          minimum_amount: T.nilable(String),
          name: String,
          net_terms: T.nilable(Integer),
          plan_phases: T.nilable(T::Array[Orb::Models::Plan::PlanPhase]),
          prices: T::Array[T.any(
            Orb::Models::Price::UnitPrice,
            Orb::Models::Price::PackagePrice,
            Orb::Models::Price::MatrixPrice,
            Orb::Models::Price::TieredPrice,
            Orb::Models::Price::TieredBpsPrice,
            Orb::Models::Price::BpsPrice,
            Orb::Models::Price::BulkBpsPrice,
            Orb::Models::Price::BulkPrice,
            Orb::Models::Price::ThresholdTotalAmountPrice,
            Orb::Models::Price::TieredPackagePrice,
            Orb::Models::Price::GroupedTieredPrice,
            Orb::Models::Price::TieredWithMinimumPrice,
            Orb::Models::Price::TieredPackageWithMinimumPrice,
            Orb::Models::Price::PackageWithAllocationPrice,
            Orb::Models::Price::UnitWithPercentPrice,
            Orb::Models::Price::MatrixWithAllocationPrice,
            Orb::Models::Price::TieredWithProrationPrice,
            Orb::Models::Price::UnitWithProrationPrice,
            Orb::Models::Price::GroupedAllocationPrice,
            Orb::Models::Price::GroupedWithProratedMinimumPrice,
            Orb::Models::Price::GroupedWithMeteredMinimumPrice,
            Orb::Models::Price::MatrixWithDisplayNamePrice,
            Orb::Models::Price::BulkWithProrationPrice,
            Orb::Models::Price::GroupedTieredPackagePrice,
            Orb::Models::Price::MaxGroupTieredPackagePrice,
            Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
            Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
          )],
          product: Orb::Models::Plan::Product,
          status: Symbol,
          trial_config: Orb::Models::Plan::TrialConfig,
          version: Integer
        ).void
      end
      def initialize(
        id:,
        adjustments:,
        base_plan:,
        base_plan_id:,
        created_at:,
        currency:,
        default_invoice_memo:,
        description:,
        discount:,
        external_plan_id:,
        invoicing_currency:,
        maximum:,
        maximum_amount:,
        metadata:,
        minimum:,
        minimum_amount:,
        name:,
        net_terms:,
        plan_phases:,
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
            adjustments: T::Array[T.any(
              Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment
            )],
            base_plan: T.nilable(Orb::Models::Plan::BasePlan),
            base_plan_id: T.nilable(String),
            created_at: Time,
            currency: String,
            default_invoice_memo: T.nilable(String),
            description: String,
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            external_plan_id: T.nilable(String),
            invoicing_currency: String,
            maximum: T.nilable(Orb::Models::Plan::Maximum),
            maximum_amount: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            minimum: T.nilable(Orb::Models::Plan::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            net_terms: T.nilable(Integer),
            plan_phases: T.nilable(T::Array[Orb::Models::Plan::PlanPhase]),
            prices: T::Array[T.any(
              Orb::Models::Price::UnitPrice,
              Orb::Models::Price::PackagePrice,
              Orb::Models::Price::MatrixPrice,
              Orb::Models::Price::TieredPrice,
              Orb::Models::Price::TieredBpsPrice,
              Orb::Models::Price::BpsPrice,
              Orb::Models::Price::BulkBpsPrice,
              Orb::Models::Price::BulkPrice,
              Orb::Models::Price::ThresholdTotalAmountPrice,
              Orb::Models::Price::TieredPackagePrice,
              Orb::Models::Price::GroupedTieredPrice,
              Orb::Models::Price::TieredWithMinimumPrice,
              Orb::Models::Price::TieredPackageWithMinimumPrice,
              Orb::Models::Price::PackageWithAllocationPrice,
              Orb::Models::Price::UnitWithPercentPrice,
              Orb::Models::Price::MatrixWithAllocationPrice,
              Orb::Models::Price::TieredWithProrationPrice,
              Orb::Models::Price::UnitWithProrationPrice,
              Orb::Models::Price::GroupedAllocationPrice,
              Orb::Models::Price::GroupedWithProratedMinimumPrice,
              Orb::Models::Price::GroupedWithMeteredMinimumPrice,
              Orb::Models::Price::MatrixWithDisplayNamePrice,
              Orb::Models::Price::BulkWithProrationPrice,
              Orb::Models::Price::GroupedTieredPackagePrice,
              Orb::Models::Price::MaxGroupTieredPackagePrice,
              Orb::Models::Price::ScalableMatrixWithUnitPricingPrice,
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice
            )],
            product: Orb::Models::Plan::Product,
            status: Symbol,
            trial_config: Orb::Models::Plan::TrialConfig,
            version: Integer
          }
        )
      end
      def to_hash
      end

      class Adjustment < Orb::Union
        abstract!

        class PlanPhaseUsageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig { returns(Float) }
          attr_accessor :usage_discount

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              usage_discount: Float,
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            plan_phase_order:,
            reason:,
            usage_discount:,
            adjustment_type: :usage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                usage_discount: Float
              }
            )
          end
          def to_hash
          end
        end

        class PlanPhaseAmountDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(String) }
          attr_accessor :amount_discount

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            amount_discount:,
            applies_to_price_ids:,
            is_invoice_level:,
            plan_phase_order:,
            reason:,
            adjustment_type: :amount_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class PlanPhasePercentageDiscountAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              percentage_discount: Float,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            percentage_discount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :percentage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                percentage_discount: Float,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class PlanPhaseMinimumAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(String) }
          attr_accessor :item_id

          sig { returns(String) }
          attr_accessor :minimum_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              item_id: String,
              minimum_amount: String,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            item_id:,
            minimum_amount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :minimum
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                item_id: String,
                minimum_amount: String,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class PlanPhaseMaximumAdjustment < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              maximum_amount: String,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              adjustment_type: Symbol
            ).void
          end
          def initialize(
            id:,
            applies_to_price_ids:,
            is_invoice_level:,
            maximum_amount:,
            plan_phase_order:,
            reason:,
            adjustment_type: :maximum
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                maximum_amount: String,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            [
              [Symbol, Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment]
            ]
          )
        end
        private_class_method def self.variants
        end
      end

      class BasePlan < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String)).void
        end
        def initialize(id:, external_plan_id:, name:)
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

      class PlanPhase < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

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

        sig { returns(T.nilable(Integer)) }
        attr_accessor :duration

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :duration_unit

        sig { returns(T.nilable(Orb::Models::Plan::PlanPhase::Maximum)) }
        attr_accessor :maximum

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T.nilable(Orb::Models::Plan::PlanPhase::Minimum)) }
        attr_accessor :minimum

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :order

        sig do
          params(
            id: String,
            description: T.nilable(String),
            discount: T.nilable(
              T.any(
                Orb::Models::PercentageDiscount,
                Orb::Models::TrialDiscount,
                Orb::Models::Discount::UsageDiscount,
                Orb::Models::AmountDiscount
              )
            ),
            duration: T.nilable(Integer),
            duration_unit: T.nilable(Symbol),
            maximum: T.nilable(Orb::Models::Plan::PlanPhase::Maximum),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Models::Plan::PlanPhase::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            order: Integer
          ).void
        end
        def initialize(
          id:,
          description:,
          discount:,
          duration:,
          duration_unit:,
          maximum:,
          maximum_amount:,
          minimum:,
          minimum_amount:,
          name:,
          order:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              description: T.nilable(String),
              discount: T.nilable(
                T.any(
                  Orb::Models::PercentageDiscount,
                  Orb::Models::TrialDiscount,
                  Orb::Models::Discount::UsageDiscount,
                  Orb::Models::AmountDiscount
                )
              ),
              duration: T.nilable(Integer),
              duration_unit: T.nilable(Symbol),
              maximum: T.nilable(Orb::Models::Plan::PlanPhase::Maximum),
              maximum_amount: T.nilable(String),
              minimum: T.nilable(Orb::Models::Plan::PlanPhase::Minimum),
              minimum_amount: T.nilable(String),
              name: String,
              order: Integer
            }
          )
        end
        def to_hash
        end

        class DurationUnit < Orb::Enum
          abstract!

          DAILY = T.let(:daily, T.nilable(Symbol))
          MONTHLY = T.let(:monthly, T.nilable(Symbol))
          QUARTERLY = T.let(:quarterly, T.nilable(Symbol))
          SEMI_ANNUAL = T.let(:semi_annual, T.nilable(Symbol))
          ANNUAL = T.let(:annual, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
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
      end

      class Product < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, created_at: Time, name: String).void }
        def initialize(id:, created_at:, name:)
        end

        sig { override.returns({id: String, created_at: Time, name: String}) }
        def to_hash
        end
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        ARCHIVED = :archived
        DRAFT = :draft

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class TrialConfig < Orb::BaseModel
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period

        sig { returns(Symbol) }
        attr_accessor :trial_period_unit

        sig { params(trial_period: T.nilable(Integer), trial_period_unit: Symbol).void }
        def initialize(trial_period:, trial_period_unit:)
        end

        sig { override.returns({trial_period: T.nilable(Integer), trial_period_unit: Symbol}) }
        def to_hash
        end

        class TrialPeriodUnit < Orb::Enum
          abstract!

          DAYS = :days

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
