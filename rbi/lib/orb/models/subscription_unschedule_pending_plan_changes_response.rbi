# typed: strong

module Orb
  module Models
    class SubscriptionUnschedulePendingPlanChangesResponse < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :active_plan_phase_order

      sig do
        returns(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval])
      end
      attr_accessor :adjustment_intervals

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig do
        returns(Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::BillingCycleAnchorConfiguration)
      end
      attr_accessor :billing_cycle_anchor_configuration

      sig { returns(Integer) }
      attr_accessor :billing_cycle_day

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_end_date

      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_start_date

      sig { returns(Orb::Models::Customer) }
      attr_accessor :customer

      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig do
        returns(
          T::Array[T.any(
            Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::UsageDiscountInterval
          )]
        )
      end
      attr_accessor :discount_intervals

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig do
        returns(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::FixedFeeQuantitySchedule])
      end
      attr_accessor :fixed_fee_quantity_schedule

      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      sig do
        returns(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MaximumInterval])
      end
      attr_accessor :maximum_intervals

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig do
        returns(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MinimumInterval])
      end
      attr_accessor :minimum_intervals

      sig { returns(Integer) }
      attr_accessor :net_terms

      sig { returns(Orb::Models::Plan) }
      attr_accessor :plan

      sig { returns(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::PriceInterval]) }
      attr_accessor :price_intervals

      sig do
        returns(T.nilable(Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::RedeemedCoupon))
      end
      attr_accessor :redeemed_coupon

      sig { returns(Time) }
      attr_accessor :start_date

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::TrialInfo) }
      attr_accessor :trial_info

      sig do
        params(
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::BillingCycleAnchorConfiguration,
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: Orb::Models::Customer,
          default_invoice_memo: T.nilable(String),
          discount_intervals: T::Array[T.any(
            Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::UsageDiscountInterval
          )],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::FixedFeeQuantitySchedule],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MaximumInterval],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MinimumInterval],
          net_terms: Integer,
          plan: Orb::Models::Plan,
          price_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::PriceInterval],
          redeemed_coupon: T.nilable(Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::RedeemedCoupon),
          start_date: Time,
          status: Symbol,
          trial_info: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::TrialInfo
        ).void
      end
      def initialize(
        id:,
        active_plan_phase_order:,
        adjustment_intervals:,
        auto_collection:,
        billing_cycle_anchor_configuration:,
        billing_cycle_day:,
        created_at:,
        current_billing_period_end_date:,
        current_billing_period_start_date:,
        customer:,
        default_invoice_memo:,
        discount_intervals:,
        end_date:,
        fixed_fee_quantity_schedule:,
        invoicing_threshold:,
        maximum_intervals:,
        metadata:,
        minimum_intervals:,
        net_terms:,
        plan:,
        price_intervals:,
        redeemed_coupon:,
        start_date:,
        status:,
        trial_info:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active_plan_phase_order: T.nilable(Integer),
            adjustment_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval],
            auto_collection: T.nilable(T::Boolean),
            billing_cycle_anchor_configuration: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::BillingCycleAnchorConfiguration,
            billing_cycle_day: Integer,
            created_at: Time,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            customer: Orb::Models::Customer,
            default_invoice_memo: T.nilable(String),
            discount_intervals: T::Array[T.any(
              Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::UsageDiscountInterval
            )],
            end_date: T.nilable(Time),
            fixed_fee_quantity_schedule: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::FixedFeeQuantitySchedule],
            invoicing_threshold: T.nilable(String),
            maximum_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MaximumInterval],
            metadata: T::Hash[Symbol, String],
            minimum_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::MinimumInterval],
            net_terms: Integer,
            plan: Orb::Models::Plan,
            price_intervals: T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::PriceInterval],
            redeemed_coupon: T.nilable(Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::RedeemedCoupon),
            start_date: Time,
            status: Symbol,
            trial_info: Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::TrialInfo
          }
        )
      end
      def to_hash
      end

      class AdjustmentInterval < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            )
          )
        end
        attr_accessor :adjustment

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            id: String,
            adjustment: T.any(
              Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            ),
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          ).void
        end
        def initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:)
        end

        sig do
          override.returns(
            {
              id: String,
              adjustment: T.any(
                Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
              ),
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time
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
                [
                  Symbol,
                  Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
                ]
              ]
            )
          end
          private_class_method def self.variants
          end
        end
      end

      class BillingCycleAnchorConfiguration < Orb::BaseModel
        sig { returns(Integer) }
        attr_accessor :day

        sig { returns(T.nilable(Integer)) }
        attr_accessor :month

        sig { returns(T.nilable(Integer)) }
        attr_accessor :year

        sig { params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).void }
        def initialize(day:, month: nil, year: nil)
        end

        sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
        def to_hash
        end
      end

      class DiscountInterval < Orb::Union
        abstract!

        class AmountDiscountInterval < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :amount_discount

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time,
              discount_type: Symbol
            ).void
          end
          def initialize(
            amount_discount:,
            applies_to_price_ids:,
            applies_to_price_interval_ids:,
            end_date:,
            start_date:,
            discount_type: :amount
          )
          end

          sig do
            override.returns(
              {
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                applies_to_price_interval_ids: T::Array[String],
                discount_type: Symbol,
                end_date: T.nilable(Time),
                start_date: Time
              }
            )
          end
          def to_hash
          end
        end

        class PercentageDiscountInterval < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { returns(Time) }
          attr_accessor :start_date

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              percentage_discount: Float,
              start_date: Time,
              discount_type: Symbol
            ).void
          end
          def initialize(
            applies_to_price_ids:,
            applies_to_price_interval_ids:,
            end_date:,
            percentage_discount:,
            start_date:,
            discount_type: :percentage
          )
          end

          sig do
            override.returns(
              {
                applies_to_price_ids: T::Array[String],
                applies_to_price_interval_ids: T::Array[String],
                discount_type: Symbol,
                end_date: T.nilable(Time),
                percentage_discount: Float,
                start_date: Time
              }
            )
          end
          def to_hash
          end
        end

        class UsageDiscountInterval < Orb::BaseModel
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          sig { returns(Time) }
          attr_accessor :start_date

          sig { returns(Float) }
          attr_accessor :usage_discount

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time,
              usage_discount: Float,
              discount_type: Symbol
            ).void
          end
          def initialize(
            applies_to_price_ids:,
            applies_to_price_interval_ids:,
            end_date:,
            start_date:,
            usage_discount:,
            discount_type: :usage
          )
          end

          sig do
            override.returns(
              {
                applies_to_price_ids: T::Array[String],
                applies_to_price_interval_ids: T::Array[String],
                discount_type: Symbol,
                end_date: T.nilable(Time),
                start_date: Time,
                usage_discount: Float
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            [
              [
                Symbol,
                Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::AmountDiscountInterval
              ],
              [
                Symbol,
                Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::PercentageDiscountInterval
              ],
              [
                Symbol,
                Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::DiscountInterval::UsageDiscountInterval
              ]
            ]
          )
        end
        private_class_method def self.variants
        end
      end

      class FixedFeeQuantitySchedule < Orb::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :price_id

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Time) }
        attr_accessor :start_date

        sig { params(end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time).void }
        def initialize(end_date:, price_id:, quantity:, start_date:)
        end

        sig do
          override.returns({end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time})
        end
        def to_hash
        end
      end

      class MaximumInterval < Orb::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :maximum_amount

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            maximum_amount: String,
            start_date: Time
          ).void
        end
        def initialize(
          applies_to_price_ids:,
          applies_to_price_interval_ids:,
          end_date:,
          maximum_amount:,
          start_date:
        )
        end

        sig do
          override.returns(
            {
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              maximum_amount: String,
              start_date: Time
            }
          )
        end
        def to_hash
        end
      end

      class MinimumInterval < Orb::BaseModel
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :minimum_amount

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            minimum_amount: String,
            start_date: Time
          ).void
        end
        def initialize(
          applies_to_price_ids:,
          applies_to_price_interval_ids:,
          end_date:,
          minimum_amount:,
          start_date:
        )
        end

        sig do
          override.returns(
            {
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              minimum_amount: String,
              start_date: Time
            }
          )
        end
        def to_hash
        end
      end

      class PriceInterval < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :billing_cycle_day

        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_end_date

        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_start_date

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig do
          returns(T.nilable(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::PriceInterval::FixedFeeQuantityTransition]))
        end
        attr_accessor :fixed_fee_quantity_transitions

        sig do
          returns(
            T.any(
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
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::Price::CumulativeGroupedBulkPrice
            )
          )
        end
        attr_accessor :price

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            id: String,
            billing_cycle_day: Integer,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            end_date: T.nilable(Time),
            fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::PriceInterval::FixedFeeQuantityTransition]),
            price: T.any(
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
              Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
              Orb::Models::Price::CumulativeGroupedBulkPrice
            ),
            start_date: Time
          ).void
        end
        def initialize(
          id:,
          billing_cycle_day:,
          current_billing_period_end_date:,
          current_billing_period_start_date:,
          end_date:,
          fixed_fee_quantity_transitions:,
          price:,
          start_date:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_cycle_day: Integer,
              current_billing_period_end_date: T.nilable(Time),
              current_billing_period_start_date: T.nilable(Time),
              end_date: T.nilable(Time),
              fixed_fee_quantity_transitions: T.nilable(T::Array[Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse::PriceInterval::FixedFeeQuantityTransition]),
              price: T.any(
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
                Orb::Models::Price::ScalableMatrixWithTieredPricingPrice,
                Orb::Models::Price::CumulativeGroupedBulkPrice
              ),
              start_date: Time
            }
          )
        end
        def to_hash
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          sig { returns(Time) }
          attr_accessor :effective_date

          sig { returns(String) }
          attr_accessor :price_id

          sig { returns(Integer) }
          attr_accessor :quantity

          sig { params(effective_date: Time, price_id: String, quantity: Integer).void }
          def initialize(effective_date:, price_id:, quantity:)
          end

          sig { override.returns({effective_date: Time, price_id: String, quantity: Integer}) }
          def to_hash
          end
        end
      end

      class RedeemedCoupon < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :coupon_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(Time) }
        attr_accessor :start_date

        sig { params(coupon_id: String, end_date: T.nilable(Time), start_date: Time).void }
        def initialize(coupon_id:, end_date:, start_date:)
        end

        sig { override.returns({coupon_id: String, end_date: T.nilable(Time), start_date: Time}) }
        def to_hash
        end
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class TrialInfo < Orb::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { params(end_date: T.nilable(Time)).void }
        def initialize(end_date:)
        end

        sig { override.returns({end_date: T.nilable(Time)}) }
        def to_hash
        end
      end
    end
  end
end
