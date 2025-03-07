# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialResponse < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def active_plan_phase_order
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def active_plan_phase_order=(_)
      end

      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval]) }
      def adjustment_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval])
      end
      def adjustment_intervals=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def auto_collection
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_collection=(_)
      end

      sig { returns(Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration) }
      def billing_cycle_anchor_configuration
      end

      sig do
        params(_: Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration)
          .returns(Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration)
      end
      def billing_cycle_anchor_configuration=(_)
      end

      sig { returns(Integer) }
      def billing_cycle_day
      end

      sig { params(_: Integer).returns(Integer) }
      def billing_cycle_day=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def current_billing_period_end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def current_billing_period_end_date=(_)
      end

      sig { returns(T.nilable(Time)) }
      def current_billing_period_start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def current_billing_period_start_date=(_)
      end

      sig { returns(Orb::Models::Customer) }
      def customer
      end

      sig { params(_: Orb::Models::Customer).returns(Orb::Models::Customer) }
      def customer=(_)
      end

      sig { returns(T.nilable(String)) }
      def default_invoice_memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_invoice_memo=(_)
      end

      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval,
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval,
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval
          )
          ]
        )
      end
      def discount_intervals
      end

      sig do
        params(
          _: T::Array[
          T.any(
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval,
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval,
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval,
              Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval,
              Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval
            )
            ]
          )
      end
      def discount_intervals=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule]) }
      def fixed_fee_quantity_schedule
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule])
          .returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule])
      end
      def fixed_fee_quantity_schedule=(_)
      end

      sig { returns(T.nilable(String)) }
      def invoicing_threshold
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoicing_threshold=(_)
      end

      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval]) }
      def maximum_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval])
      end
      def maximum_intervals=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval]) }
      def minimum_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval])
      end
      def minimum_intervals=(_)
      end

      sig { returns(Integer) }
      def net_terms
      end

      sig { params(_: Integer).returns(Integer) }
      def net_terms=(_)
      end

      sig { returns(Orb::Models::Plan) }
      def plan
      end

      sig { params(_: Orb::Models::Plan).returns(Orb::Models::Plan) }
      def plan=(_)
      end

      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval]) }
      def price_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval])
      end
      def price_intervals=(_)
      end

      sig { returns(T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon)) }
      def redeemed_coupon
      end

      sig do
        params(_: T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon))
          .returns(T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon))
      end
      def redeemed_coupon=(_)
      end

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo) }
      def trial_info
      end

      sig do
        params(_: Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo)
          .returns(Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo)
      end
      def trial_info=(_)
      end

      sig do
        params(
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration: Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration,
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: Orb::Models::Customer,
          default_invoice_memo: T.nilable(String),
          discount_intervals: T::Array[
          T.any(
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval,
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval,
            Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval
          )
          ],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval],
          net_terms: Integer,
          plan: Orb::Models::Plan,
          price_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval],
          redeemed_coupon: T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon),
          start_date: Time,
          status: Symbol,
          trial_info: Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo
        )
          .void
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
        override
          .returns(
            {
              id: String,
              active_plan_phase_order: T.nilable(Integer),
              adjustment_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval],
              auto_collection: T.nilable(T::Boolean),
              billing_cycle_anchor_configuration: Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration,
              billing_cycle_day: Integer,
              created_at: Time,
              current_billing_period_end_date: T.nilable(Time),
              current_billing_period_start_date: T.nilable(Time),
              customer: Orb::Models::Customer,
              default_invoice_memo: T.nilable(String),
              discount_intervals: T::Array[
              T.any(
                Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval,
                Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval,
                Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval
              )
              ],
              end_date: T.nilable(Time),
              fixed_fee_quantity_schedule: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule],
              invoicing_threshold: T.nilable(String),
              maximum_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval],
              metadata: T::Hash[Symbol, String],
              minimum_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval],
              net_terms: Integer,
              plan: Orb::Models::Plan,
              price_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval],
              redeemed_coupon: T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon),
              start_date: Time,
              status: Symbol,
              trial_info: Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo
            }
          )
      end
      def to_hash
      end

      class AdjustmentInterval < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            )
          )
        end
        def adjustment
        end

        sig do
          params(
            _: T.any(
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            )
          )
            .returns(
              T.any(
                Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
                Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
                Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
                Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
                Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
              )
            )
        end
        def adjustment=(_)
        end

        sig { returns(T::Array[String]) }
        def applies_to_price_interval_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_interval_ids=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

        sig do
          params(
            id: String,
            adjustment: T.any(
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            ),
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          )
            .void
        end
        def initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                adjustment: T.any(
                  Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
                  Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
                  Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
                  Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
                  Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
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
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

            sig do
              params(
                id: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                usage_discount: Float,
                adjustment_type: Symbol
              )
                .void
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
              override
                .returns(
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
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount_discount
            end

            sig { params(_: String).returns(String) }
            def amount_discount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig do
              params(
                id: String,
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .void
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
              override
                .returns(
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
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig do
              params(
                id: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                percentage_discount: Float,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .void
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
              override
                .returns(
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
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(String) }
            def minimum_amount
            end

            sig { params(_: String).returns(String) }
            def minimum_amount=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

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
              )
                .void
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
              override
                .returns(
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
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig { returns(String) }
            def maximum_amount
            end

            sig { params(_: String).returns(String) }
            def maximum_amount=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            sig do
              params(
                id: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                maximum_amount: String,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                adjustment_type: Symbol
              )
                .void
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
              override
                .returns(
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

          class << self
            sig do
              override
                .returns(
                  [[Symbol, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment], [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment], [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment], [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment], [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment]]
                )
            end
            private def variants
            end
          end
        end
      end

      class BillingCycleAnchorConfiguration < Orb::BaseModel
        sig { returns(Integer) }
        def day
        end

        sig { params(_: Integer).returns(Integer) }
        def day=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def month
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def month=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def year
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def year=(_)
        end

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
          def amount_discount
          end

          sig { params(_: String).returns(String) }
          def amount_discount=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_interval_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_interval_ids=(_)
          end

          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { returns(T.nilable(Time)) }
          def end_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def end_date=(_)
          end

          sig { returns(Time) }
          def start_date
          end

          sig { params(_: Time).returns(Time) }
          def start_date=(_)
          end

          sig do
            params(
              amount_discount: String,
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time,
              discount_type: Symbol
            )
              .void
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
            override
              .returns(
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
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_interval_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_interval_ids=(_)
          end

          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { returns(T.nilable(Time)) }
          def end_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def end_date=(_)
          end

          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

          sig { returns(Time) }
          def start_date
          end

          sig { params(_: Time).returns(Time) }
          def start_date=(_)
          end

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              percentage_discount: Float,
              start_date: Time,
              discount_type: Symbol
            )
              .void
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
            override
              .returns(
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
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          sig { returns(T::Array[String]) }
          def applies_to_price_interval_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_interval_ids=(_)
          end

          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { returns(T.nilable(Time)) }
          def end_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def end_date=(_)
          end

          sig { returns(Time) }
          def start_date
          end

          sig { params(_: Time).returns(Time) }
          def start_date=(_)
          end

          sig { returns(Float) }
          def usage_discount
          end

          sig { params(_: Float).returns(Float) }
          def usage_discount=(_)
          end

          sig do
            params(
              applies_to_price_ids: T::Array[String],
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time,
              usage_discount: Float,
              discount_type: Symbol
            )
              .void
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
            override
              .returns(
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

        class << self
          sig do
            override
              .returns(
                [[Symbol, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval], [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval], [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval]]
              )
          end
          private def variants
          end
        end
      end

      class FixedFeeQuantitySchedule < Orb::BaseModel
        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(String) }
        def price_id
        end

        sig { params(_: String).returns(String) }
        def price_id=(_)
        end

        sig { returns(Float) }
        def quantity
        end

        sig { params(_: Float).returns(Float) }
        def quantity=(_)
        end

        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

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
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(T::Array[String]) }
        def applies_to_price_interval_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_interval_ids=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

        sig do
          params(
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            maximum_amount: String,
            start_date: Time
          )
            .void
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
          override
            .returns(
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
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        sig { returns(T::Array[String]) }
        def applies_to_price_interval_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_interval_ids=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

        sig do
          params(
            applies_to_price_ids: T::Array[String],
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            minimum_amount: String,
            start_date: Time
          )
            .void
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
          override
            .returns(
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
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Integer) }
        def billing_cycle_day
        end

        sig { params(_: Integer).returns(Integer) }
        def billing_cycle_day=(_)
        end

        sig { returns(T.nilable(Time)) }
        def current_billing_period_end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def current_billing_period_end_date=(_)
        end

        sig { returns(T.nilable(Time)) }
        def current_billing_period_start_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def current_billing_period_start_date=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def filter=(_)
        end

        sig do
          returns(
            T.nilable(
              T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition]
            )
          )
        end
        def fixed_fee_quantity_transitions
        end

        sig do
          params(
            _: T.nilable(
              T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition]
            )
          )
            .returns(
              T.nilable(
                T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition]
              )
            )
        end
        def fixed_fee_quantity_transitions=(_)
        end

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
        def price
        end

        sig do
          params(
            _: T.any(
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
            .returns(
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
        def price=(_)
        end

        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

        sig { returns(T.nilable(T::Array[String])) }
        def usage_customer_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def usage_customer_ids=(_)
        end

        sig do
          params(
            id: String,
            billing_cycle_day: Integer,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            end_date: T.nilable(Time),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(
              T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition]
            ),
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
            start_date: Time,
            usage_customer_ids: T.nilable(T::Array[String])
          )
            .void
        end
        def initialize(
          id:,
          billing_cycle_day:,
          current_billing_period_end_date:,
          current_billing_period_start_date:,
          end_date:,
          filter:,
          fixed_fee_quantity_transitions:,
          price:,
          start_date:,
          usage_customer_ids:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                billing_cycle_day: Integer,
                current_billing_period_end_date: T.nilable(Time),
                current_billing_period_start_date: T.nilable(Time),
                end_date: T.nilable(Time),
                filter: T.nilable(String),
                fixed_fee_quantity_transitions: T.nilable(
                  T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition]
                ),
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
                start_date: Time,
                usage_customer_ids: T.nilable(T::Array[String])
              }
            )
        end
        def to_hash
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          sig { returns(Time) }
          def effective_date
          end

          sig { params(_: Time).returns(Time) }
          def effective_date=(_)
          end

          sig { returns(String) }
          def price_id
          end

          sig { params(_: String).returns(String) }
          def price_id=(_)
          end

          sig { returns(Integer) }
          def quantity
          end

          sig { params(_: Integer).returns(Integer) }
          def quantity=(_)
          end

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
        def coupon_id
        end

        sig { params(_: String).returns(String) }
        def coupon_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class TrialInfo < Orb::BaseModel
        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

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
