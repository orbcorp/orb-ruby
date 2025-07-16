# typed: strong

module Orb
  module Models
    class Subscription < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Subscription, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The current plan phase that is active, only if the subscription's plan has
      # phases.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :active_plan_phase_order

      # The adjustment intervals for this subscription sorted by the start_date of the
      # adjustment interval.
      sig { returns(T::Array[Orb::AdjustmentInterval]) }
      attr_accessor :adjustment_intervals

      # Determines whether issued invoices for this subscription will automatically be
      # charged with the saved payment method on the due date. This property defaults to
      # the plan's behavior. If null, defaults to the customer's setting.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(Orb::BillingCycleAnchorConfiguration) }
      attr_reader :billing_cycle_anchor_configuration

      sig do
        params(
          billing_cycle_anchor_configuration:
            Orb::BillingCycleAnchorConfiguration::OrHash
        ).void
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
      sig { returns(Orb::Customer) }
      attr_reader :customer

      sig { params(customer: Orb::Customer::OrHash).void }
      attr_writer :customer

      # Determines the default memo on this subscriptions' invoices. Note that if this
      # is not provided, it is determined by the plan configuration.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      # The discount intervals for this subscription sorted by the start_date. This
      # field is deprecated in favor of `adjustment_intervals`.
      sig { returns(T::Array[Orb::Subscription::DiscountInterval::Variants]) }
      attr_accessor :discount_intervals

      # The date Orb stops billing for this subscription.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(T::Array[Orb::FixedFeeQuantityScheduleEntry]) }
      attr_accessor :fixed_fee_quantity_schedule

      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      # The maximum intervals for this subscription sorted by the start_date. This field
      # is deprecated in favor of `adjustment_intervals`.
      sig { returns(T::Array[Orb::MaximumInterval]) }
      attr_accessor :maximum_intervals

      # User specified key-value pairs for the resource. If not present, this defaults
      # to an empty dictionary. Individual keys can be removed by setting the value to
      # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      # `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # The minimum intervals for this subscription sorted by the start_date. This field
      # is deprecated in favor of `adjustment_intervals`.
      sig { returns(T::Array[Orb::MinimumInterval]) }
      attr_accessor :minimum_intervals

      # The name of the subscription.
      sig { returns(String) }
      attr_accessor :name

      # Determines the difference between the invoice issue date for subscription
      # invoices as the date that they are due. A value of `0` here represents that the
      # invoice is due on issue, whereas a value of `30` represents that the customer
      # has a month to pay the invoice.
      sig { returns(Integer) }
      attr_accessor :net_terms

      # A pending subscription change if one exists on this subscription.
      sig { returns(T.nilable(Orb::SubscriptionChangeMinified)) }
      attr_reader :pending_subscription_change

      sig do
        params(
          pending_subscription_change:
            T.nilable(Orb::SubscriptionChangeMinified::OrHash)
        ).void
      end
      attr_writer :pending_subscription_change

      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      sig { returns(T.nilable(Orb::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(Orb::Plan::OrHash)).void }
      attr_writer :plan

      # The price intervals for this subscription.
      sig { returns(T::Array[Orb::PriceInterval]) }
      attr_accessor :price_intervals

      sig { returns(T.nilable(Orb::CouponRedemption)) }
      attr_reader :redeemed_coupon

      sig do
        params(redeemed_coupon: T.nilable(Orb::CouponRedemption::OrHash)).void
      end
      attr_writer :redeemed_coupon

      # The date Orb starts billing for this subscription.
      sig { returns(Time) }
      attr_accessor :start_date

      sig { returns(Orb::Subscription::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(Orb::SubscriptionTrialInfo) }
      attr_reader :trial_info

      sig { params(trial_info: Orb::SubscriptionTrialInfo::OrHash).void }
      attr_writer :trial_info

      # A [subscription](/core-concepts#subscription) represents the purchase of a plan
      # by a customer.
      #
      # By default, subscriptions begin on the day that they're created and renew
      # automatically for each billing cycle at the cadence that's configured in the
      # plan definition.
      #
      # Subscriptions also default to **beginning of month alignment**, which means the
      # first invoice issued for the subscription will have pro-rated charges between
      # the `start_date` and the first of the following month. Subsequent billing
      # periods will always start and end on a month boundary (e.g. subsequent month
      # starts for monthly billing).
      #
      # Depending on the plan configuration, any _flat_ recurring fees will be billed
      # either at the beginning (in-advance) or end (in-arrears) of each billing cycle.
      # Plans default to **in-advance billing**. Usage-based fees are billed in arrears
      # as usage is accumulated. In the normal course of events, you can expect an
      # invoice to contain usage-based charges for the previous period, and a recurring
      # fee for the following period.
      sig do
        params(
          id: String,
          active_plan_phase_order: T.nilable(Integer),
          adjustment_intervals: T::Array[Orb::AdjustmentInterval::OrHash],
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_anchor_configuration:
            Orb::BillingCycleAnchorConfiguration::OrHash,
          billing_cycle_day: Integer,
          created_at: Time,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          customer: Orb::Customer::OrHash,
          default_invoice_memo: T.nilable(String),
          discount_intervals:
            T::Array[
              T.any(
                Orb::AmountDiscountInterval::OrHash,
                Orb::PercentageDiscountInterval::OrHash,
                Orb::UsageDiscountInterval::OrHash
              )
            ],
          end_date: T.nilable(Time),
          fixed_fee_quantity_schedule:
            T::Array[Orb::FixedFeeQuantityScheduleEntry::OrHash],
          invoicing_threshold: T.nilable(String),
          maximum_intervals: T::Array[Orb::MaximumInterval::OrHash],
          metadata: T::Hash[Symbol, String],
          minimum_intervals: T::Array[Orb::MinimumInterval::OrHash],
          name: String,
          net_terms: Integer,
          pending_subscription_change:
            T.nilable(Orb::SubscriptionChangeMinified::OrHash),
          plan: T.nilable(Orb::Plan::OrHash),
          price_intervals: T::Array[Orb::PriceInterval::OrHash],
          redeemed_coupon: T.nilable(Orb::CouponRedemption::OrHash),
          start_date: Time,
          status: Orb::Subscription::Status::OrSymbol,
          trial_info: Orb::SubscriptionTrialInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The current plan phase that is active, only if the subscription's plan has
        # phases.
        active_plan_phase_order:,
        # The adjustment intervals for this subscription sorted by the start_date of the
        # adjustment interval.
        adjustment_intervals:,
        # Determines whether issued invoices for this subscription will automatically be
        # charged with the saved payment method on the due date. This property defaults to
        # the plan's behavior. If null, defaults to the customer's setting.
        auto_collection:,
        billing_cycle_anchor_configuration:,
        # The day of the month on which the billing cycle is anchored. If the maximum
        # number of days in a month is greater than this value, the last day of the month
        # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        # period begins on the 30th.
        billing_cycle_day:,
        created_at:,
        # The end of the current billing period. This is an exclusive timestamp, such that
        # the instant returned is not part of the billing period. Set to null for
        # subscriptions that are not currently active.
        current_billing_period_end_date:,
        # The start date of the current billing period. This is an inclusive timestamp;
        # the instant returned is exactly the beginning of the billing period. Set to null
        # if the subscription is not currently active.
        current_billing_period_start_date:,
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
        customer:,
        # Determines the default memo on this subscriptions' invoices. Note that if this
        # is not provided, it is determined by the plan configuration.
        default_invoice_memo:,
        # The discount intervals for this subscription sorted by the start_date. This
        # field is deprecated in favor of `adjustment_intervals`.
        discount_intervals:,
        # The date Orb stops billing for this subscription.
        end_date:,
        fixed_fee_quantity_schedule:,
        invoicing_threshold:,
        # The maximum intervals for this subscription sorted by the start_date. This field
        # is deprecated in favor of `adjustment_intervals`.
        maximum_intervals:,
        # User specified key-value pairs for the resource. If not present, this defaults
        # to an empty dictionary. Individual keys can be removed by setting the value to
        # `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        # `null`.
        metadata:,
        # The minimum intervals for this subscription sorted by the start_date. This field
        # is deprecated in favor of `adjustment_intervals`.
        minimum_intervals:,
        # The name of the subscription.
        name:,
        # Determines the difference between the invoice issue date for subscription
        # invoices as the date that they are due. A value of `0` here represents that the
        # invoice is due on issue, whereas a value of `30` represents that the customer
        # has a month to pay the invoice.
        net_terms:,
        # A pending subscription change if one exists on this subscription.
        pending_subscription_change:,
        # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
        # subscribed to by a customer. Plans define the billing behavior of the
        # subscription. You can see more about how to configure prices in the
        # [Price resource](/reference/price).
        plan:,
        # The price intervals for this subscription.
        price_intervals:,
        redeemed_coupon:,
        # The date Orb starts billing for this subscription.
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
            adjustment_intervals: T::Array[Orb::AdjustmentInterval],
            auto_collection: T.nilable(T::Boolean),
            billing_cycle_anchor_configuration:
              Orb::BillingCycleAnchorConfiguration,
            billing_cycle_day: Integer,
            created_at: Time,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            customer: Orb::Customer,
            default_invoice_memo: T.nilable(String),
            discount_intervals:
              T::Array[Orb::Subscription::DiscountInterval::Variants],
            end_date: T.nilable(Time),
            fixed_fee_quantity_schedule:
              T::Array[Orb::FixedFeeQuantityScheduleEntry],
            invoicing_threshold: T.nilable(String),
            maximum_intervals: T::Array[Orb::MaximumInterval],
            metadata: T::Hash[Symbol, String],
            minimum_intervals: T::Array[Orb::MinimumInterval],
            name: String,
            net_terms: Integer,
            pending_subscription_change:
              T.nilable(Orb::SubscriptionChangeMinified),
            plan: T.nilable(Orb::Plan),
            price_intervals: T::Array[Orb::PriceInterval],
            redeemed_coupon: T.nilable(Orb::CouponRedemption),
            start_date: Time,
            status: Orb::Subscription::Status::TaggedSymbol,
            trial_info: Orb::SubscriptionTrialInfo
          }
        )
      end
      def to_hash
      end

      module DiscountInterval
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::AmountDiscountInterval,
              Orb::PercentageDiscountInterval,
              Orb::UsageDiscountInterval
            )
          end

        sig do
          override.returns(
            T::Array[Orb::Subscription::DiscountInterval::Variants]
          )
        end
        def self.variants
        end
      end

      module Status
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Subscription::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE = T.let(:active, Orb::Subscription::Status::TaggedSymbol)
        ENDED = T.let(:ended, Orb::Subscription::Status::TaggedSymbol)
        UPCOMING = T.let(:upcoming, Orb::Subscription::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::Subscription::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
