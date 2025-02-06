# typed: strong

module Orb
  module Models
    class Plan < Orb::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          adjustments: T::Array[Orb::Models::Plan::Adjustment::Variants],
          base_plan: T.nilable(Orb::Models::Plan::BasePlan),
          base_plan_id: T.nilable(String),
          created_at: Time,
          currency: String,
          default_invoice_memo: T.nilable(String),
          description: String,
          discount: T.nilable(Orb::Models::Discount::Variants),
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
          prices: T::Array[Orb::Models::Price::Variants],
          product: Orb::Models::Plan::Product,
          status: Symbol,
          trial_config: Orb::Models::Plan::TrialConfig,
          version: Integer
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[Orb::Models::Plan::Adjustment::Variants]) }
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

      sig { returns(T.nilable(Orb::Models::Discount::Variants)) }
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

      sig { returns(T::Array[Orb::Models::Price::Variants]) }
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
          adjustments: T::Array[Orb::Models::Plan::Adjustment::Variants],
          base_plan: T.nilable(Orb::Models::Plan::BasePlan),
          base_plan_id: T.nilable(String),
          created_at: Time,
          currency: String,
          default_invoice_memo: T.nilable(String),
          description: String,
          discount: T.nilable(Orb::Models::Discount::Variants),
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
          prices: T::Array[Orb::Models::Price::Variants],
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
      ); end

      sig { returns(Orb::Models::Plan::Shape) }
      def to_h; end

      class Adjustment < Orb::Union
        abstract!

        Variants = T.type_alias do
          T.any(
            Orb::Models::Plan::Adjustment::AmountDiscountAdjustment,
            Orb::Models::Plan::Adjustment::PercentageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::UsageDiscountAdjustment,
            Orb::Models::Plan::Adjustment::MinimumAdjustment,
            Orb::Models::Plan::Adjustment::MaximumAdjustment
          )
        end

        class AmountDiscountAdjustment < Orb::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              adjustment_type: Symbol,
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String)
            }
          end

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
          ); end

          sig { returns(Orb::Models::Plan::Adjustment::AmountDiscountAdjustment::Shape) }
          def to_h; end
        end

        class PercentageDiscountAdjustment < Orb::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              adjustment_type: Symbol,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              percentage_discount: Float,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String)
            }
          end

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
          ); end

          sig { returns(Orb::Models::Plan::Adjustment::PercentageDiscountAdjustment::Shape) }
          def to_h; end
        end

        class UsageDiscountAdjustment < Orb::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              adjustment_type: Symbol,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              usage_discount: Float
            }
          end

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
          ); end

          sig { returns(Orb::Models::Plan::Adjustment::UsageDiscountAdjustment::Shape) }
          def to_h; end
        end

        class MinimumAdjustment < Orb::BaseModel
          Shape = T.type_alias do
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
          end

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
          ); end

          sig { returns(Orb::Models::Plan::Adjustment::MinimumAdjustment::Shape) }
          def to_h; end
        end

        class MaximumAdjustment < Orb::BaseModel
          Shape = T.type_alias do
            {
              id: String,
              adjustment_type: Symbol,
              applies_to_price_ids: T::Array[String],
              is_invoice_level: T::Boolean,
              maximum_amount: String,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String)
            }
          end

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
          ); end

          sig { returns(Orb::Models::Plan::Adjustment::MaximumAdjustment::Shape) }
          def to_h; end
        end

        sig do
          override.returns(
            [
              [Symbol, Orb::Models::Plan::Adjustment::AmountDiscountAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::PercentageDiscountAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::UsageDiscountAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::MinimumAdjustment],
              [Symbol, Orb::Models::Plan::Adjustment::MaximumAdjustment]
            ]
          )
        end
        private_class_method def self.variants; end
      end

      class BasePlan < Orb::BaseModel
        Shape = T.type_alias do
          {id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String)}
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String)).void
        end
        def initialize(id:, external_plan_id:, name:); end

        sig { returns(Orb::Models::Plan::BasePlan::Shape) }
        def to_h; end
      end

      class Maximum < Orb::BaseModel
        Shape = T.type_alias { {applies_to_price_ids: T::Array[String], maximum_amount: String} }

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(String) }
        attr_accessor :maximum_amount

        sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
        def initialize(applies_to_price_ids:, maximum_amount:); end

        sig { returns(Orb::Models::Plan::Maximum::Shape) }
        def to_h; end
      end

      class Minimum < Orb::BaseModel
        Shape = T.type_alias { {applies_to_price_ids: T::Array[String], minimum_amount: String} }

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(String) }
        attr_accessor :minimum_amount

        sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
        def initialize(applies_to_price_ids:, minimum_amount:); end

        sig { returns(Orb::Models::Plan::Minimum::Shape) }
        def to_h; end
      end

      class PlanPhase < Orb::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            description: T.nilable(String),
            discount: T.nilable(Orb::Models::Discount::Variants),
            duration: T.nilable(Integer),
            duration_unit: T.nilable(Symbol),
            maximum: T.nilable(Orb::Models::Plan::PlanPhase::Maximum),
            maximum_amount: T.nilable(String),
            minimum: T.nilable(Orb::Models::Plan::PlanPhase::Minimum),
            minimum_amount: T.nilable(String),
            name: String,
            order: Integer
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(T.nilable(Orb::Models::Discount::Variants)) }
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
            discount: T.nilable(Orb::Models::Discount::Variants),
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
        ); end

        sig { returns(Orb::Models::Plan::PlanPhase::Shape) }
        def to_h; end

        class DurationUnit < Orb::Enum
          abstract!

          DAILY = T.let(:daily, T.nilable(Symbol))
          MONTHLY = T.let(:monthly, T.nilable(Symbol))
          QUARTERLY = T.let(:quarterly, T.nilable(Symbol))
          SEMI_ANNUAL = T.let(:semi_annual, T.nilable(Symbol))
          ANNUAL = T.let(:annual, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        class Maximum < Orb::BaseModel
          Shape = T.type_alias { {applies_to_price_ids: T::Array[String], maximum_amount: String} }

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :maximum_amount

          sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
          def initialize(applies_to_price_ids:, maximum_amount:); end

          sig { returns(Orb::Models::Plan::PlanPhase::Maximum::Shape) }
          def to_h; end
        end

        class Minimum < Orb::BaseModel
          Shape = T.type_alias { {applies_to_price_ids: T::Array[String], minimum_amount: String} }

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(String) }
          attr_accessor :minimum_amount

          sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
          def initialize(applies_to_price_ids:, minimum_amount:); end

          sig { returns(Orb::Models::Plan::PlanPhase::Minimum::Shape) }
          def to_h; end
        end
      end

      class Product < Orb::BaseModel
        Shape = T.type_alias { {id: String, created_at: Time, name: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, created_at: Time, name: String).void }
        def initialize(id:, created_at:, name:); end

        sig { returns(Orb::Models::Plan::Product::Shape) }
        def to_h; end
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        ARCHIVED = :archived
        DRAFT = :draft

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class TrialConfig < Orb::BaseModel
        Shape = T.type_alias { {trial_period: T.nilable(Integer), trial_period_unit: Symbol} }

        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period

        sig { returns(Symbol) }
        attr_accessor :trial_period_unit

        sig { params(trial_period: T.nilable(Integer), trial_period_unit: Symbol).void }
        def initialize(trial_period:, trial_period_unit:); end

        sig { returns(Orb::Models::Plan::TrialConfig::Shape) }
        def to_h; end

        class TrialPeriodUnit < Orb::Enum
          abstract!

          DAYS = :days

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
