# typed: strong

module Orb
  module Models
    class Subscription < Orb::BaseModel
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

      sig { returns(T::Array[Orb::Models::AdjustmentIntervalModel]) }
      def adjustment_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::AdjustmentIntervalModel])
          .returns(T::Array[Orb::Models::AdjustmentIntervalModel])
      end
      def adjustment_intervals=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def auto_collection
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_collection=(_)
      end

      sig { returns(Orb::Models::BillingCycleAnchorConfigurationModel) }
      def billing_cycle_anchor_configuration
      end

      sig do
        params(_: Orb::Models::BillingCycleAnchorConfigurationModel)
          .returns(Orb::Models::BillingCycleAnchorConfigurationModel)
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

      sig { returns(Orb::Models::CustomerModel) }
      def customer
      end

      sig { params(_: Orb::Models::CustomerModel).returns(Orb::Models::CustomerModel) }
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
            Orb::Models::AmountDiscountIntervalModel,
            Orb::Models::PercentageDiscountIntervalModel,
            Orb::Models::UsageDiscountIntervalModel
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
            Orb::Models::AmountDiscountIntervalModel,
            Orb::Models::PercentageDiscountIntervalModel,
            Orb::Models::UsageDiscountIntervalModel
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::AmountDiscountIntervalModel,
              Orb::Models::PercentageDiscountIntervalModel,
              Orb::Models::UsageDiscountIntervalModel
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

      sig { returns(T::Array[Orb::Models::FixedFeeQuantityScheduleEntryModel]) }
      def fixed_fee_quantity_schedule
      end

      sig do
        params(_: T::Array[Orb::Models::FixedFeeQuantityScheduleEntryModel])
          .returns(T::Array[Orb::Models::FixedFeeQuantityScheduleEntryModel])
      end
      def fixed_fee_quantity_schedule=(_)
      end

      sig { returns(T.nilable(String)) }
      def invoicing_threshold
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoicing_threshold=(_)
      end

      sig { returns(T::Array[Orb::Models::MaximumIntervalModel]) }
      def maximum_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::MaximumIntervalModel]).returns(T::Array[Orb::Models::MaximumIntervalModel])
      end
      def maximum_intervals=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(T::Array[Orb::Models::MinimumIntervalModel]) }
      def minimum_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::MinimumIntervalModel]).returns(T::Array[Orb::Models::MinimumIntervalModel])
      end
      def minimum_intervals=(_)
      end

      sig { returns(Integer) }
      def net_terms
      end

      sig { params(_: Integer).returns(Integer) }
      def net_terms=(_)
      end

      sig { returns(Orb::Models::PlanModel) }
      def plan
      end

      sig { params(_: Orb::Models::PlanModel).returns(Orb::Models::PlanModel) }
      def plan=(_)
      end

      sig { returns(T::Array[Orb::Models::PriceIntervalModel]) }
      def price_intervals
      end

      sig { params(_: T::Array[Orb::Models::PriceIntervalModel]).returns(T::Array[Orb::Models::PriceIntervalModel]) }
      def price_intervals=(_)
      end

      sig { returns(T.nilable(Orb::Models::CouponRedemptionModel)) }
      def redeemed_coupon
      end

      sig do
        params(_: T.nilable(Orb::Models::CouponRedemptionModel))
          .returns(T.nilable(Orb::Models::CouponRedemptionModel))
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

      sig { returns(Orb::Models::SubscriptionTrialInfoModel) }
      def trial_info
      end

      sig { params(_: Orb::Models::SubscriptionTrialInfoModel).returns(Orb::Models::SubscriptionTrialInfoModel) }
      def trial_info=(_)
      end

      sig do
        params(
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[Orb::Models::AdjustmentIntervalModel],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration: Orb::Models::BillingCycleAnchorConfigurationModel,
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: Orb::Models::CustomerModel,
          default_invoice_memo: T.nilable(String),
          discount_intervals: T::Array[
          T.any(
            Orb::Models::AmountDiscountIntervalModel,
            Orb::Models::PercentageDiscountIntervalModel,
            Orb::Models::UsageDiscountIntervalModel
          )
          ],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule: T::Array[Orb::Models::FixedFeeQuantityScheduleEntryModel],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[Orb::Models::MaximumIntervalModel],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[Orb::Models::MinimumIntervalModel],
          net_terms: Integer,
          plan: Orb::Models::PlanModel,
          price_intervals: T::Array[Orb::Models::PriceIntervalModel],
          redeemed_coupon: T.nilable(Orb::Models::CouponRedemptionModel),
          start_date: Time,
          status: Symbol,
          trial_info: Orb::Models::SubscriptionTrialInfoModel
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
              adjustment_intervals: T::Array[Orb::Models::AdjustmentIntervalModel],
              auto_collection: T.nilable(T::Boolean),
              billing_cycle_anchor_configuration: Orb::Models::BillingCycleAnchorConfigurationModel,
              billing_cycle_day: Integer,
              created_at: Time,
              current_billing_period_end_date: T.nilable(Time),
              current_billing_period_start_date: T.nilable(Time),
              customer: Orb::Models::CustomerModel,
              default_invoice_memo: T.nilable(String),
              discount_intervals: T::Array[
              T.any(
                Orb::Models::AmountDiscountIntervalModel,
                Orb::Models::PercentageDiscountIntervalModel,
                Orb::Models::UsageDiscountIntervalModel
              )
              ],
              end_date: T.nilable(Time),
              fixed_fee_quantity_schedule: T::Array[Orb::Models::FixedFeeQuantityScheduleEntryModel],
              invoicing_threshold: T.nilable(String),
              maximum_intervals: T::Array[Orb::Models::MaximumIntervalModel],
              metadata: T::Hash[Symbol, String],
              minimum_intervals: T::Array[Orb::Models::MinimumIntervalModel],
              net_terms: Integer,
              plan: Orb::Models::PlanModel,
              price_intervals: T::Array[Orb::Models::PriceIntervalModel],
              redeemed_coupon: T.nilable(Orb::Models::CouponRedemptionModel),
              start_date: Time,
              status: Symbol,
              trial_info: Orb::Models::SubscriptionTrialInfoModel
            }
          )
      end
      def to_hash
      end

      class DiscountInterval < Orb::Union
        abstract!

        sig do
          override
            .returns(
              [[Symbol, Orb::Models::AmountDiscountIntervalModel], [Symbol, Orb::Models::PercentageDiscountIntervalModel], [Symbol, Orb::Models::UsageDiscountIntervalModel]]
            )
        end
        private_class_method def self.variants
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
    end
  end
end
