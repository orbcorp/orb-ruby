# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialResponse < Orb::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :id

      # The current plan phase that is active, only if the subscription's plan has
      # phases.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :active_plan_phase_order

      # The adjustment intervals for this subscription sorted by the start_date of the
      # adjustment interval.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval]) }
      attr_accessor :adjustment_intervals

      # Determines whether issued invoices for this subscription will automatically be
      # charged with the saved payment method on the due date. This property defaults to
      # the plan's behavior. If null, defaults to the customer's setting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration) }
      attr_reader :billing_cycle_anchor_configuration

      sig do
        params(
          billing_cycle_anchor_configuration: T.any(
            Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration,
            Orb::Internal::AnyHash
          )
        )
          .void
      end
      attr_writer :billing_cycle_anchor_configuration

      # The day of the month on which the billing cycle is anchored. If the maximum
      # number of days in a month is greater than this value, the last day of the month
      # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
      # period begins on the 30th.
      sig { returns(Integer) }
      attr_accessor :billing_cycle_day

      sig { returns(Time) }
      attr_accessor :created_at

      # The end of the current billing period. This is an exclusive timestamp, such that
      # the instant returned is not part of the billing period. Set to null for
      # subscriptions that are not currently active.
      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_end_date

      # The start date of the current billing period. This is an inclusive timestamp;
      # the instant returned is exactly the beginning of the billing period. Set to null
      # if the subscription is not currently active.
      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_start_date

      # A customer is a buyer of your products, and the other party to the billing
      # relationship.
      #
      # In Orb, customers are assigned system generated identifiers automatically, but
      # it's often desirable to have these match existing identifiers in your system. To
      # avoid having to denormalize Orb ID information, you can pass in an
      # `external_customer_id` with your own identifier. See
      # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      # information about how these aliases work in Orb.
      #
      # In addition to having an identifier in your system, a customer may exist in a
      # payment provider solution like Stripe. Use the `payment_provider_id` and the
      # `payment_provider` enum field to express this mapping.
      #
      # A customer also has a timezone (from the standard
      # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      # your account's timezone. See [Timezone localization](/essentials/timezones) for
      # information on what this timezone parameter influences within Orb.
      sig { returns(Orb::Models::Customer) }
      attr_reader :customer

      sig { params(customer: T.any(Orb::Models::Customer, Orb::Internal::AnyHash)).void }
      attr_writer :customer

      # Determines the default memo on this subscriptions' invoices. Note that if this
      # is not provided, it is determined by the plan configuration.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      # The discount intervals for this subscription sorted by the start_date.
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
      attr_accessor :discount_intervals

      # The date Orb stops billing for this subscription.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule]) }
      attr_accessor :fixed_fee_quantity_schedule

      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      # The maximum intervals for this subscription sorted by the start_date.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval]) }
      attr_accessor :maximum_intervals

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The minimum intervals for this subscription sorted by the start_date.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval]) }
      attr_accessor :minimum_intervals

      # Determines the difference between the invoice issue date for subscription
      # invoices as the date that they are due. A value of `0` here represents that the
      # invoice is due on issue, whereas a value of `30` represents that the customer
      # has a month to pay the invoice.
      sig { returns(Integer) }
      attr_accessor :net_terms

      # A pending subscription change if one exists on this subscription.
      sig { returns(T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::PendingSubscriptionChange)) }
      attr_reader :pending_subscription_change

      sig do
        params(
          pending_subscription_change: T.nilable(
            T.any(Orb::Models::SubscriptionUpdateTrialResponse::PendingSubscriptionChange, Orb::Internal::AnyHash)
          )
        )
          .void
      end
      attr_writer :pending_subscription_change

      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      sig { returns(Orb::Models::Plan) }
      attr_reader :plan

      sig { params(plan: T.any(Orb::Models::Plan, Orb::Internal::AnyHash)).void }
      attr_writer :plan

      # The price intervals for this subscription.
      sig { returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval]) }
      attr_accessor :price_intervals

      sig { returns(T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon)) }
      attr_reader :redeemed_coupon

      sig do
        params(
          redeemed_coupon: T.nilable(T.any(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :redeemed_coupon

      # The date Orb starts billing for this subscription.
      sig { returns(Time) }
      attr_accessor :start_date

      sig { returns(Orb::Models::SubscriptionUpdateTrialResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo) }
      attr_reader :trial_info

      sig do
        params(trial_info: T.any(Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo, Orb::Internal::AnyHash))
          .void
      end
      attr_writer :trial_info

      # The resources that were changed as part of this operation. Only present when
      # fetched through the subscription changes API or if the
      # `include_changed_resources` parameter was passed in the request.
      sig { returns(T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::ChangedResources)) }
      attr_reader :changed_resources

      sig do
        params(
          changed_resources: T.nilable(T.any(Orb::Models::SubscriptionUpdateTrialResponse::ChangedResources, Orb::Internal::AnyHash))
        )
          .void
      end
      attr_writer :changed_resources

      sig do
        params(
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[T.any(Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval, Orb::Internal::AnyHash)],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration: T.any(
            Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration,
            Orb::Internal::AnyHash
          ),
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: T.any(Orb::Models::Customer, Orb::Internal::AnyHash),
          default_invoice_memo: T.nilable(String),
          discount_intervals: T::Array[
            T.any(
              Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval,
              Orb::Internal::AnyHash,
              Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval,
              Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval
            )
          ],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule: T::Array[T.any(Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule, Orb::Internal::AnyHash)],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[T.any(Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval, Orb::Internal::AnyHash)],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[T.any(Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval, Orb::Internal::AnyHash)],
          net_terms: Integer,
          pending_subscription_change: T.nilable(
            T.any(Orb::Models::SubscriptionUpdateTrialResponse::PendingSubscriptionChange, Orb::Internal::AnyHash)
          ),
          plan: T.any(Orb::Models::Plan, Orb::Internal::AnyHash),
          price_intervals: T::Array[T.any(Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval, Orb::Internal::AnyHash)],
          redeemed_coupon: T.nilable(T.any(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon, Orb::Internal::AnyHash)),
          start_date: Time,
          status: Orb::Models::SubscriptionUpdateTrialResponse::Status::OrSymbol,
          trial_info: T.any(Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo, Orb::Internal::AnyHash),
          changed_resources: T.nilable(T.any(Orb::Models::SubscriptionUpdateTrialResponse::ChangedResources, Orb::Internal::AnyHash))
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
        pending_subscription_change:,
        plan:,
        price_intervals:,
        redeemed_coupon:,
        start_date:,
        status:,
        trial_info:,
        changed_resources: nil
      ); end
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
              pending_subscription_change: T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::PendingSubscriptionChange),
              plan: Orb::Models::Plan,
              price_intervals: T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval],
              redeemed_coupon: T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon),
              start_date: Time,
              status: Orb::Models::SubscriptionUpdateTrialResponse::Status::TaggedSymbol,
              trial_info: Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo,
              changed_resources: T.nilable(Orb::Models::SubscriptionUpdateTrialResponse::ChangedResources)
            }
          )
      end
      def to_hash; end

      class AdjustmentInterval < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

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
        attr_accessor :adjustment

        # The price interval IDs that this adjustment applies to.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        # The end date of the adjustment interval.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # The start date of the adjustment interval.
        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(
            id: String,
            adjustment: T.any(
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment,
              Orb::Internal::AnyHash,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment,
              Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
            ),
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          )
            .returns(T.attached_class)
        end
        def self.new(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:); end

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
        def to_hash; end

        module Adjustment
          extend Orb::Internal::Type::Union

          class PlanPhaseUsageDiscountAdjustment < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

            # The reason for the adjustment.
            sig { returns(T.nilable(String)) }
            attr_accessor :reason

            # The number of usage units by which to discount the price this adjustment applies
            # to in a given billing period.
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
            ); end
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
            def to_hash; end
          end

          class PlanPhaseAmountDiscountAdjustment < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The amount by which to discount the prices this adjustment applies to in a given
            # billing period.
            sig { returns(String) }
            attr_accessor :amount_discount

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

            # The reason for the adjustment.
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
            ); end
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
            def to_hash; end
          end

          class PlanPhasePercentageDiscountAdjustment < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The percentage (as a value between 0 and 1) by which to discount the price
            # intervals this adjustment applies to in a given billing period.
            sig { returns(Float) }
            attr_accessor :percentage_discount

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

            # The reason for the adjustment.
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
            ); end
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
            def to_hash; end
          end

          class PlanPhaseMinimumAdjustment < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The item ID that revenue from this minimum will be attributed to.
            sig { returns(String) }
            attr_accessor :item_id

            # The minimum amount to charge in a given billing period for the prices this
            # adjustment applies to.
            sig { returns(String) }
            attr_accessor :minimum_amount

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

            # The reason for the adjustment.
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
            ); end
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
            def to_hash; end
          end

          class PlanPhaseMaximumAdjustment < Orb::Internal::Type::BaseModel
            sig { returns(String) }
            attr_accessor :id

            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            # The price IDs that this adjustment applies to.
            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            # True for adjustments that apply to an entire invocice, false for adjustments
            # that apply to only one price.
            sig { returns(T::Boolean) }
            attr_accessor :is_invoice_level

            # The maximum amount to charge in a given billing period for the prices this
            # adjustment applies to.
            sig { returns(String) }
            attr_accessor :maximum_amount

            # The plan phase in which this adjustment is active.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :plan_phase_order

            # The reason for the adjustment.
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
            ); end
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
            def to_hash; end
          end

          sig do
            override
              .returns(
                [Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment]
              )
          end
          def self.variants; end
        end
      end

      class BillingCycleAnchorConfiguration < Orb::Internal::Type::BaseModel
        # The day of the month on which the billing cycle is anchored. If the maximum
        # number of days in a month is greater than this value, the last day of the month
        # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        # period begins on the 30th.
        sig { returns(Integer) }
        attr_accessor :day

        # The month on which the billing cycle is anchored (e.g. a quarterly price
        # anchored in February would have cycles starting February, May, August, and
        # November).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :month

        # The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
        # anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :year

        sig do
          params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).returns(T.attached_class)
        end
        def self.new(day:, month: nil, year: nil); end

        sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
        def to_hash; end
      end

      module DiscountInterval
        extend Orb::Internal::Type::Union

        class AmountDiscountInterval < Orb::Internal::Type::BaseModel
          # Only available if discount_type is `amount`.
          sig { returns(String) }
          attr_accessor :amount_discount

          # The price ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The price interval ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          # The end date of the discount interval.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # The start date of the discount interval.
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
          ); end
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
          def to_hash; end
        end

        class PercentageDiscountInterval < Orb::Internal::Type::BaseModel
          # The price ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The price interval ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          # The end date of the discount interval.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # Only available if discount_type is `percentage`.This is a number between 0
          # and 1.
          sig { returns(Float) }
          attr_accessor :percentage_discount

          # The start date of the discount interval.
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
          ); end
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
          def to_hash; end
        end

        class UsageDiscountInterval < Orb::Internal::Type::BaseModel
          # The price ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The price interval ids that this discount interval applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_interval_ids

          sig { returns(Symbol) }
          attr_accessor :discount_type

          # The end date of the discount interval.
          sig { returns(T.nilable(Time)) }
          attr_accessor :end_date

          # The start date of the discount interval.
          sig { returns(Time) }
          attr_accessor :start_date

          # Only available if discount_type is `usage`. Number of usage units that this
          # discount is for
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
          ); end
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
          def to_hash; end
        end

        sig do
          override
            .returns(
              [Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval]
            )
        end
        def self.variants; end
      end

      class FixedFeeQuantitySchedule < Orb::Internal::Type::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(String) }
        attr_accessor :price_id

        sig { returns(Float) }
        attr_accessor :quantity

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time)
            .returns(T.attached_class)
        end
        def self.new(end_date:, price_id:, quantity:, start_date:); end

        sig do
          override.returns({end_date: T.nilable(Time), price_id: String, quantity: Float, start_date: Time})
        end
        def to_hash; end
      end

      class MaximumInterval < Orb::Internal::Type::BaseModel
        # The price ids that this maximum interval applies to.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # The price interval ids that this maximum interval applies to.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        # The end date of the maximum interval.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # The maximum amount to charge in a given billing period for the price intervals
        # this transform applies to.
        sig { returns(String) }
        attr_accessor :maximum_amount

        # The start date of the maximum interval.
        sig { returns(Time) }
        attr_accessor :start_date

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
        def self.new(
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
        def to_hash; end
      end

      class MinimumInterval < Orb::Internal::Type::BaseModel
        # The price ids that this minimum interval applies to.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_ids

        # The price interval ids that this minimum interval applies to.
        sig { returns(T::Array[String]) }
        attr_accessor :applies_to_price_interval_ids

        # The end date of the minimum interval.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # The minimum amount to charge in a given billing period for the price intervals
        # this minimum applies to.
        sig { returns(String) }
        attr_accessor :minimum_amount

        # The start date of the minimum interval.
        sig { returns(Time) }
        attr_accessor :start_date

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
        def self.new(
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
        def to_hash; end
      end

      class PendingSubscriptionChange < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # A pending subscription change if one exists on this subscription.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:); end

        sig { override.returns({id: String}) }
        def to_hash; end
      end

      class PriceInterval < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # The day of the month that Orb bills for this price
        sig { returns(Integer) }
        attr_accessor :billing_cycle_day

        # The end of the current billing period. This is an exclusive timestamp, such that
        # the instant returned is exactly the end of the billing period. Set to null if
        # this price interval is not currently active.
        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_end_date

        # The start date of the current billing period. This is an inclusive timestamp;
        # the instant returned is exactly the beginning of the billing period. Set to null
        # if this price interval is not currently active.
        sig { returns(T.nilable(Time)) }
        attr_accessor :current_billing_period_start_date

        # The end date of the price interval. This is the date that Orb stops billing for
        # this price.
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        # An additional filter to apply to usage queries.
        sig { returns(T.nilable(String)) }
        attr_accessor :filter

        # The fixed fee quantity transitions for this price interval. This is only
        # relevant for fixed fees.
        sig do
          returns(
            T.nilable(
              T::Array[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition]
            )
          )
        end
        attr_accessor :fixed_fee_quantity_transitions

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

        # The start date of the price interval. This is the date that Orb starts billing
        # for this price.
        sig { returns(Time) }
        attr_accessor :start_date

        # A list of customer IDs whose usage events will be aggregated and billed under
        # this price interval.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :usage_customer_ids

        # The Price Interval resource represents a period of time for which a price will
        # bill on a subscription. A subscription’s price intervals define its billing
        # behavior.
        sig do
          params(
            id: String,
            billing_cycle_day: Integer,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            end_date: T.nilable(Time),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions: T.nilable(
              T::Array[
                T.any(
                  Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition,
                  Orb::Internal::AnyHash
                )
              ]
            ),
            price: T.any(
              Orb::Models::Price::UnitPrice,
              Orb::Internal::AnyHash,
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
        ); end
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
        def to_hash; end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          sig { returns(Time) }
          attr_accessor :effective_date

          sig { returns(String) }
          attr_accessor :price_id

          sig { returns(Integer) }
          attr_accessor :quantity

          sig { params(effective_date: Time, price_id: String, quantity: Integer).returns(T.attached_class) }
          def self.new(effective_date:, price_id:, quantity:); end

          sig { override.returns({effective_date: Time, price_id: String, quantity: Integer}) }
          def to_hash; end
        end
      end

      class RedeemedCoupon < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :coupon_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(Time) }
        attr_accessor :start_date

        sig do
          params(coupon_id: String, end_date: T.nilable(Time), start_date: Time).returns(T.attached_class)
        end
        def self.new(coupon_id:, end_date:, start_date:); end

        sig { override.returns({coupon_id: String, end_date: T.nilable(Time), start_date: Time}) }
        def to_hash; end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::SubscriptionUpdateTrialResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Orb::Models::SubscriptionUpdateTrialResponse::Status::TaggedSymbol)
        ENDED = T.let(:ended, Orb::Models::SubscriptionUpdateTrialResponse::Status::TaggedSymbol)
        UPCOMING = T.let(:upcoming, Orb::Models::SubscriptionUpdateTrialResponse::Status::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::SubscriptionUpdateTrialResponse::Status::TaggedSymbol]) }
        def self.values; end
      end

      class TrialInfo < Orb::Internal::Type::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { params(end_date: T.nilable(Time)).returns(T.attached_class) }
        def self.new(end_date:); end

        sig { override.returns({end_date: T.nilable(Time)}) }
        def to_hash; end
      end

      class ChangedResources < Orb::Internal::Type::BaseModel
        # The credit notes that were created as part of this operation.
        sig { returns(T::Array[Orb::Models::CreditNote]) }
        attr_accessor :created_credit_notes

        # The invoices that were created as part of this operation.
        sig { returns(T::Array[Orb::Models::Invoice]) }
        attr_accessor :created_invoices

        # The credit notes that were voided as part of this operation.
        sig { returns(T::Array[Orb::Models::CreditNote]) }
        attr_accessor :voided_credit_notes

        # The invoices that were voided as part of this operation.
        sig { returns(T::Array[Orb::Models::Invoice]) }
        attr_accessor :voided_invoices

        # The resources that were changed as part of this operation. Only present when
        # fetched through the subscription changes API or if the
        # `include_changed_resources` parameter was passed in the request.
        sig do
          params(
            created_credit_notes: T::Array[T.any(Orb::Models::CreditNote, Orb::Internal::AnyHash)],
            created_invoices: T::Array[T.any(Orb::Models::Invoice, Orb::Internal::AnyHash)],
            voided_credit_notes: T::Array[T.any(Orb::Models::CreditNote, Orb::Internal::AnyHash)],
            voided_invoices: T::Array[T.any(Orb::Models::Invoice, Orb::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(created_credit_notes:, created_invoices:, voided_credit_notes:, voided_invoices:); end

        sig do
          override
            .returns(
              {
                created_credit_notes: T::Array[Orb::Models::CreditNote],
                created_invoices: T::Array[Orb::Models::Invoice],
                voided_credit_notes: T::Array[Orb::Models::CreditNote],
                voided_invoices: T::Array[Orb::Models::Invoice]
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
