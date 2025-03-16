# typed: strong

module Orb
  module Models
    class SubscriptionUpdateFixedFeeQuantityResponse < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The current plan phase that is active, only if the subscription's plan has
      #   phases.
      sig { returns(T.nilable(Integer)) }
      def active_plan_phase_order
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def active_plan_phase_order=(_)
      end

      # The adjustment intervals for this subscription sorted by the start_date of the
      #   adjustment interval.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval]) }
      def adjustment_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval])
      end
      def adjustment_intervals=(_)
      end

      # Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. This property defaults to
      #   the plan's behavior. If null, defaults to the customer's setting.
      sig { returns(T.nilable(T::Boolean)) }
      def auto_collection
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_collection=(_)
      end

      sig { returns(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::BillingCycleAnchorConfiguration) }
      def billing_cycle_anchor_configuration
      end

      sig do
        params(_: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::BillingCycleAnchorConfiguration)
          .returns(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::BillingCycleAnchorConfiguration)
      end
      def billing_cycle_anchor_configuration=(_)
      end

      # The day of the month on which the billing cycle is anchored. If the maximum
      #   number of days in a month is greater than this value, the last day of the month
      #   is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
      #   period begins on the 30th.
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

      # The end of the current billing period. This is an exclusive timestamp, such that
      #   the instant returned is not part of the billing period. Set to null for
      #   subscriptions that are not currently active.
      sig { returns(T.nilable(Time)) }
      def current_billing_period_end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def current_billing_period_end_date=(_)
      end

      # The start date of the current billing period. This is an inclusive timestamp;
      #   the instant returned is exactly the beginning of the billing period. Set to null
      #   if the subscription is not currently active.
      sig { returns(T.nilable(Time)) }
      def current_billing_period_start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def current_billing_period_start_date=(_)
      end

      # A customer is a buyer of your products, and the other party to the billing
      #   relationship.
      #
      #   In Orb, customers are assigned system generated identifiers automatically, but
      #   it's often desirable to have these match existing identifiers in your system. To
      #   avoid having to denormalize Orb ID information, you can pass in an
      #   `external_customer_id` with your own identifier. See
      #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      #   information about how these aliases work in Orb.
      #
      #   In addition to having an identifier in your system, a customer may exist in a
      #   payment provider solution like Stripe. Use the `payment_provider_id` and the
      #   `payment_provider` enum field to express this mapping.
      #
      #   A customer also has a timezone (from the standard
      #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      #   your account's timezone. See [Timezone localization](/essentials/timezones) for
      #   information on what this timezone parameter influences within Orb.
      sig { returns(Orb::Models::Customer) }
      def customer
      end

      sig { params(_: Orb::Models::Customer).returns(Orb::Models::Customer) }
      def customer=(_)
      end

      # Determines the default memo on this subscriptions' invoices. Note that if this
      #   is not provided, it is determined by the plan configuration.
      sig { returns(T.nilable(String)) }
      def default_invoice_memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_invoice_memo=(_)
      end

      # The discount intervals for this subscription sorted by the start_date.
      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::AmountDiscountInterval,
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::PercentageDiscountInterval,
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::UsageDiscountInterval
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
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::AmountDiscountInterval,
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::PercentageDiscountInterval,
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::UsageDiscountInterval
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::AmountDiscountInterval,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::PercentageDiscountInterval,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::UsageDiscountInterval
            )
            ]
          )
      end
      def discount_intervals=(_)
      end

      # The date Orb stops billing for this subscription.
      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::FixedFeeQuantitySchedule]) }
      def fixed_fee_quantity_schedule
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::FixedFeeQuantitySchedule])
          .returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::FixedFeeQuantitySchedule])
      end
      def fixed_fee_quantity_schedule=(_)
      end

      sig { returns(T.nilable(String)) }
      def invoicing_threshold
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoicing_threshold=(_)
      end

      # The maximum intervals for this subscription sorted by the start_date.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MaximumInterval]) }
      def maximum_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MaximumInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MaximumInterval])
      end
      def maximum_intervals=(_)
      end

      # User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # The minimum intervals for this subscription sorted by the start_date.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MinimumInterval]) }
      def minimum_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MinimumInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MinimumInterval])
      end
      def minimum_intervals=(_)
      end

      # Determines the difference between the invoice issue date for subscription
      #   invoices as the date that they are due. A value of `0` here represents that the
      #   invoice is due on issue, whereas a value of `30` represents that the customer
      #   has a month to pay the invoice.
      sig { returns(Integer) }
      def net_terms
      end

      sig { params(_: Integer).returns(Integer) }
      def net_terms=(_)
      end

      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #   subscribed to by a customer. Plans define the billing behavior of the
      #   subscription. You can see more about how to configure prices in the
      #   [Price resource](/reference/price).
      sig { returns(Orb::Models::Plan) }
      def plan
      end

      sig { params(_: Orb::Models::Plan).returns(Orb::Models::Plan) }
      def plan=(_)
      end

      # The price intervals for this subscription.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval]) }
      def price_intervals
      end

      sig do
        params(_: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval])
          .returns(T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval])
      end
      def price_intervals=(_)
      end

      sig { returns(T.nilable(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::RedeemedCoupon)) }
      def redeemed_coupon
      end

      sig do
        params(_: T.nilable(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::RedeemedCoupon))
          .returns(T.nilable(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::RedeemedCoupon))
      end
      def redeemed_coupon=(_)
      end

      # The date Orb starts billing for this subscription.
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

      sig { returns(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::TrialInfo) }
      def trial_info
      end

      sig do
        params(_: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::TrialInfo)
          .returns(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::TrialInfo)
      end
      def trial_info=(_)
      end

      sig do
        params(
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::BillingCycleAnchorConfiguration,
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: Orb::Models::Customer,
          default_invoice_memo: T.nilable(String),
          discount_intervals: T::Array[
          T.any(
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::AmountDiscountInterval,
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::PercentageDiscountInterval,
            Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::UsageDiscountInterval
          )
          ],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::FixedFeeQuantitySchedule],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MaximumInterval],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MinimumInterval],
          net_terms: Integer,
          plan: Orb::Models::Plan,
          price_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval],
          redeemed_coupon: T.nilable(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::RedeemedCoupon),
          start_date: Time,
          status: Symbol,
          trial_info: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::TrialInfo
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              adjustment_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval],
              auto_collection: T.nilable(T::Boolean),
              billing_cycle_anchor_configuration: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::BillingCycleAnchorConfiguration,
              billing_cycle_day: Integer,
              created_at: Time,
              current_billing_period_end_date: T.nilable(Time),
              current_billing_period_start_date: T.nilable(Time),
              customer: Orb::Models::Customer,
              default_invoice_memo: T.nilable(String),
              discount_intervals: T::Array[
              T.any(
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::AmountDiscountInterval,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::PercentageDiscountInterval,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::UsageDiscountInterval
              )
              ],
              end_date: T.nilable(Time),
              fixed_fee_quantity_schedule: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::FixedFeeQuantitySchedule],
              invoicing_threshold: T.nilable(String),
              maximum_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MaximumInterval],
              metadata: T::Hash[Symbol, String],
              minimum_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::MinimumInterval],
              net_terms: Integer,
              plan: Orb::Models::Plan,
              price_intervals: T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval],
              redeemed_coupon: T.nilable(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::RedeemedCoupon),
              start_date: Time,
              status: Symbol,
              trial_info: Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::TrialInfo
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
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            )
          )
        end
        def adjustment
        end

        sig do
          params(
            _: T.any(
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            )
          )
            .returns(
              T.any(
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
              )
            )
        end
        def adjustment=(_)
        end

        # The price interval IDs that this adjustment applies to.
        sig { returns(T::Array[String]) }
        def applies_to_price_interval_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_interval_ids=(_)
        end

        # The end date of the adjustment interval.
        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        # The start date of the adjustment interval.
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
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            ),
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          )
            .returns(T.attached_class)
        end
        def self.new(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:)
        end

        sig do
          override
            .returns(
              {
                id: String,
                adjustment: T.any(
                  Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
                  Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
                  Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
                  Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
                  Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
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

          Variants = type_template(:out) do
            {
              fixed: T.any(
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
                Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
              )
            }
          end

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

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            def reason
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reason=(_)
            end

            # The number of usage units by which to discount the price this adjustment applies
            #   to in a given billing period.
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
                .returns(T.attached_class)
            end
            def self.new(
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

            # The amount by which to discount the prices this adjustment applies to in a given
            #   billing period.
            sig { returns(String) }
            def amount_discount
            end

            sig { params(_: String).returns(String) }
            def amount_discount=(_)
            end

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            # The reason for the adjustment.
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
                .returns(T.attached_class)
            end
            def self.new(
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

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The percentage (as a value between 0 and 1) by which to discount the price
            #   intervals this adjustment applies to in a given billing period.
            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            # The reason for the adjustment.
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
                .returns(T.attached_class)
            end
            def self.new(
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

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The item ID that revenue from this minimum will be attributed to.
            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            # The minimum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            sig { returns(String) }
            def minimum_amount
            end

            sig { params(_: String).returns(String) }
            def minimum_amount=(_)
            end

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            # The reason for the adjustment.
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
                .returns(T.attached_class)
            end
            def self.new(
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

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            # True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            sig { returns(T::Boolean) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            # The maximum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            sig { returns(String) }
            def maximum_amount
            end

            sig { params(_: String).returns(String) }
            def maximum_amount=(_)
            end

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            def plan_phase_order
            end

            sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def plan_phase_order=(_)
            end

            # The reason for the adjustment.
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
                .returns(T.attached_class)
            end
            def self.new(
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
        end
      end

      class BillingCycleAnchorConfiguration < Orb::BaseModel
        # The day of the month on which the billing cycle is anchored. If the maximum
        #   number of days in a month is greater than this value, the last day of the month
        #   is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        #   period begins on the 30th.
        sig { returns(Integer) }
        def day
        end

        sig { params(_: Integer).returns(Integer) }
        def day=(_)
        end

        # The month on which the billing cycle is anchored (e.g. a quarterly price
        #   anchored in February would have cycles starting February, May, August, and
        #   November).
        sig { returns(T.nilable(Integer)) }
        def month
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def month=(_)
        end

        # The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
        #   anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
        sig { returns(T.nilable(Integer)) }
        def year
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def year=(_)
        end

        sig do
          params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).returns(T.attached_class)
        end
        def self.new(day:, month: nil, year: nil)
        end

        sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
        def to_hash
        end
      end

      class DiscountInterval < Orb::Union
        abstract!

        Variants = type_template(:out) do
          {
            fixed: T.any(
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::AmountDiscountInterval,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::PercentageDiscountInterval,
              Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::DiscountInterval::UsageDiscountInterval
            )
          }
        end

        class AmountDiscountInterval < Orb::BaseModel
          # Only available if discount_type is `amount`.
          sig { returns(String) }
          def amount_discount
          end

          sig { params(_: String).returns(String) }
          def amount_discount=(_)
          end

          # The price ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # The price interval ids that this discount interval applies to.
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

          # The end date of the discount interval.
          sig { returns(T.nilable(Time)) }
          def end_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def end_date=(_)
          end

          # The start date of the discount interval.
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
              .returns(T.attached_class)
          end
          def self.new(
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
          # The price ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # The price interval ids that this discount interval applies to.
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

          # The end date of the discount interval.
          sig { returns(T.nilable(Time)) }
          def end_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def end_date=(_)
          end

          # Only available if discount_type is `percentage`.This is a number between 0
          #   and 1.
          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

          # The start date of the discount interval.
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
              .returns(T.attached_class)
          end
          def self.new(
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
          # The price ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          def applies_to_price_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def applies_to_price_ids=(_)
          end

          # The price interval ids that this discount interval applies to.
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

          # The end date of the discount interval.
          sig { returns(T.nilable(Time)) }
          def end_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def end_date=(_)
          end

          # The start date of the discount interval.
          sig { returns(Time) }
          def start_date
          end

          sig { params(_: Time).returns(Time) }
          def start_date=(_)
          end

          # Only available if discount_type is `usage`. Number of usage units that this
          #   discount is for
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
              .returns(T.attached_class)
          end
          def self.new(
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

        sig do
          params(end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time)
            .returns(T.attached_class)
        end
        def self.new(end_date:, price_id:, quantity:, start_date:)
        end

        sig do
          override.returns({end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time})
        end
        def to_hash
        end
      end

      class MaximumInterval < Orb::BaseModel
        # The price ids that this maximum interval applies to.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # The price interval ids that this maximum interval applies to.
        sig { returns(T::Array[String]) }
        def applies_to_price_interval_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_interval_ids=(_)
        end

        # The end date of the maximum interval.
        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        # The maximum amount to charge in a given billing period for the price intervals
        #   this transform applies to.
        sig { returns(String) }
        def maximum_amount
        end

        sig { params(_: String).returns(String) }
        def maximum_amount=(_)
        end

        # The start date of the maximum interval.
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
            .returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, maximum_amount:, start_date:)
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
        # The price ids that this minimum interval applies to.
        sig { returns(T::Array[String]) }
        def applies_to_price_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_ids=(_)
        end

        # The price interval ids that this minimum interval applies to.
        sig { returns(T::Array[String]) }
        def applies_to_price_interval_ids
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def applies_to_price_interval_ids=(_)
        end

        # The end date of the minimum interval.
        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        # The minimum amount to charge in a given billing period for the price intervals
        #   this minimum applies to.
        sig { returns(String) }
        def minimum_amount
        end

        sig { params(_: String).returns(String) }
        def minimum_amount=(_)
        end

        # The start date of the minimum interval.
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
            .returns(T.attached_class)
        end
        def self.new(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, minimum_amount:, start_date:)
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

        # The day of the month that Orb bills for this price
        sig { returns(Integer) }
        def billing_cycle_day
        end

        sig { params(_: Integer).returns(Integer) }
        def billing_cycle_day=(_)
        end

        # The end of the current billing period. This is an exclusive timestamp, such that
        #   the instant returned is exactly the end of the billing period. Set to null if
        #   this price interval is not currently active.
        sig { returns(T.nilable(Time)) }
        def current_billing_period_end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def current_billing_period_end_date=(_)
        end

        # The start date of the current billing period. This is an inclusive timestamp;
        #   the instant returned is exactly the beginning of the billing period. Set to null
        #   if this price interval is not currently active.
        sig { returns(T.nilable(Time)) }
        def current_billing_period_start_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def current_billing_period_start_date=(_)
        end

        # The end date of the price interval. This is the date that Orb stops billing for
        #   this price.
        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        # An additional filter to apply to usage queries.
        sig { returns(T.nilable(String)) }
        def filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def filter=(_)
        end

        # The fixed fee quantity transitions for this price interval. This is only
        #   relevant for fixed fees.
        sig do
          returns(
            T.nilable(
              T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval::FixedFeeQuantityTransition]
            )
          )
        end
        def fixed_fee_quantity_transitions
        end

        sig do
          params(
            _: T.nilable(
              T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval::FixedFeeQuantityTransition]
            )
          )
            .returns(
              T.nilable(
                T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval::FixedFeeQuantityTransition]
              )
            )
        end
        def fixed_fee_quantity_transitions=(_)
        end

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

        # The start date of the price interval. This is the date that Orb starts billing
        #   for this price.
        sig { returns(Time) }
        def start_date
        end

        sig { params(_: Time).returns(Time) }
        def start_date=(_)
        end

        # A list of customer IDs whose usage events will be aggregated and billed under
        #   this price interval.
        sig { returns(T.nilable(T::Array[String])) }
        def usage_customer_ids
        end

        sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def usage_customer_ids=(_)
        end

        # The Price Interval resource represents a period of time for which a price will
        #   bill on a subscription. A subscription’s price intervals define its billing
        #   behavior.
        sig do
          params(
            id: String,
            billing_cycle_day: Integer,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            end_date: T.nilable(Time),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(
              T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval::FixedFeeQuantityTransition]
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
            .returns(T.attached_class)
        end
        def self.new(
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
                  T::Array[Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse::PriceInterval::FixedFeeQuantityTransition]
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

          sig { params(effective_date: Time, price_id: String, quantity: Integer).returns(T.attached_class) }
          def self.new(effective_date:, price_id:, quantity:)
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

        sig do
          params(coupon_id: String, end_date: T.nilable(Time), start_date: Time).returns(T.attached_class)
        end
        def self.new(coupon_id:, end_date:, start_date:)
        end

        sig { override.returns({coupon_id: String, end_date: T.nilable(Time), start_date: Time}) }
        def to_hash
        end
      end

      class Status < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming
      end

      class TrialInfo < Orb::BaseModel
        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { params(end_date: T.nilable(Time)).returns(T.attached_class) }
        def self.new(end_date:)
        end

        sig { override.returns({end_date: T.nilable(Time)}) }
        def to_hash
        end
      end
    end
  end
end
