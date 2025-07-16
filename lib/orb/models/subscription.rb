# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#update
    class Subscription < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute active_plan_phase_order
      #   The current plan phase that is active, only if the subscription's plan has
      #   phases.
      #
      #   @return [Integer, nil]
      required :active_plan_phase_order, Integer, nil?: true

      # @!attribute adjustment_intervals
      #   The adjustment intervals for this subscription sorted by the start_date of the
      #   adjustment interval.
      #
      #   @return [Array<Orb::Models::AdjustmentInterval>]
      required :adjustment_intervals, -> { Orb::Internal::Type::ArrayOf[Orb::AdjustmentInterval] }

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. This property defaults to
      #   the plan's behavior. If null, defaults to the customer's setting.
      #
      #   @return [Boolean, nil]
      required :auto_collection, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::Models::BillingCycleAnchorConfiguration]
      required :billing_cycle_anchor_configuration, -> { Orb::BillingCycleAnchorConfiguration }

      # @!attribute billing_cycle_day
      #   The day of the month on which the billing cycle is anchored. If the maximum
      #   number of days in a month is greater than this value, the last day of the month
      #   is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
      #   period begins on the 30th.
      #
      #   @return [Integer]
      required :billing_cycle_day, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute current_billing_period_end_date
      #   The end of the current billing period. This is an exclusive timestamp, such that
      #   the instant returned is not part of the billing period. Set to null for
      #   subscriptions that are not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_end_date, Time, nil?: true

      # @!attribute current_billing_period_start_date
      #   The start date of the current billing period. This is an inclusive timestamp;
      #   the instant returned is exactly the beginning of the billing period. Set to null
      #   if the subscription is not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_start_date, Time, nil?: true

      # @!attribute customer
      #   A customer is a buyer of your products, and the other party to the billing
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
      #
      #   @return [Orb::Models::Customer]
      required :customer, -> { Orb::Customer }

      # @!attribute default_invoice_memo
      #   Determines the default memo on this subscriptions' invoices. Note that if this
      #   is not provided, it is determined by the plan configuration.
      #
      #   @return [String, nil]
      required :default_invoice_memo, String, nil?: true

      # @!attribute discount_intervals
      #   @deprecated
      #
      #   The discount intervals for this subscription sorted by the start_date. This
      #   field is deprecated in favor of `adjustment_intervals`.
      #
      #   @return [Array<Orb::Models::AmountDiscountInterval, Orb::Models::PercentageDiscountInterval, Orb::Models::UsageDiscountInterval>]
      required :discount_intervals,
               -> { Orb::Internal::Type::ArrayOf[union: Orb::Subscription::DiscountInterval] }

      # @!attribute end_date
      #   The date Orb stops billing for this subscription.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute fixed_fee_quantity_schedule
      #
      #   @return [Array<Orb::Models::FixedFeeQuantityScheduleEntry>]
      required :fixed_fee_quantity_schedule,
               -> { Orb::Internal::Type::ArrayOf[Orb::FixedFeeQuantityScheduleEntry] }

      # @!attribute invoicing_threshold
      #
      #   @return [String, nil]
      required :invoicing_threshold, String, nil?: true

      # @!attribute maximum_intervals
      #   @deprecated
      #
      #   The maximum intervals for this subscription sorted by the start_date. This field
      #   is deprecated in favor of `adjustment_intervals`.
      #
      #   @return [Array<Orb::Models::MaximumInterval>]
      required :maximum_intervals, -> { Orb::Internal::Type::ArrayOf[Orb::MaximumInterval] }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute minimum_intervals
      #   @deprecated
      #
      #   The minimum intervals for this subscription sorted by the start_date. This field
      #   is deprecated in favor of `adjustment_intervals`.
      #
      #   @return [Array<Orb::Models::MinimumInterval>]
      required :minimum_intervals, -> { Orb::Internal::Type::ArrayOf[Orb::MinimumInterval] }

      # @!attribute name
      #   The name of the subscription.
      #
      #   @return [String]
      required :name, String

      # @!attribute net_terms
      #   Determines the difference between the invoice issue date for subscription
      #   invoices as the date that they are due. A value of `0` here represents that the
      #   invoice is due on issue, whereas a value of `30` represents that the customer
      #   has a month to pay the invoice.
      #
      #   @return [Integer]
      required :net_terms, Integer

      # @!attribute pending_subscription_change
      #   A pending subscription change if one exists on this subscription.
      #
      #   @return [Orb::Models::SubscriptionChangeMinified, nil]
      required :pending_subscription_change, -> { Orb::SubscriptionChangeMinified }, nil?: true

      # @!attribute plan
      #   The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #   subscribed to by a customer. Plans define the billing behavior of the
      #   subscription. You can see more about how to configure prices in the
      #   [Price resource](/reference/price).
      #
      #   @return [Orb::Models::Plan, nil]
      required :plan, -> { Orb::Plan }, nil?: true

      # @!attribute price_intervals
      #   The price intervals for this subscription.
      #
      #   @return [Array<Orb::Models::PriceInterval>]
      required :price_intervals, -> { Orb::Internal::Type::ArrayOf[Orb::PriceInterval] }

      # @!attribute redeemed_coupon
      #
      #   @return [Orb::Models::CouponRedemption, nil]
      required :redeemed_coupon, -> { Orb::CouponRedemption }, nil?: true

      # @!attribute start_date
      #   The date Orb starts billing for this subscription.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::Subscription::Status]
      required :status, enum: -> { Orb::Subscription::Status }

      # @!attribute trial_info
      #
      #   @return [Orb::Models::SubscriptionTrialInfo]
      required :trial_info, -> { Orb::SubscriptionTrialInfo }

      # @!method initialize(id:, active_plan_phase_order:, adjustment_intervals:, auto_collection:, billing_cycle_anchor_configuration:, billing_cycle_day:, created_at:, current_billing_period_end_date:, current_billing_period_start_date:, customer:, default_invoice_memo:, discount_intervals:, end_date:, fixed_fee_quantity_schedule:, invoicing_threshold:, maximum_intervals:, metadata:, minimum_intervals:, name:, net_terms:, pending_subscription_change:, plan:, price_intervals:, redeemed_coupon:, start_date:, status:, trial_info:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::Subscription} for more details.
      #
      #   A [subscription](/core-concepts#subscription) represents the purchase of a plan
      #   by a customer.
      #
      #   By default, subscriptions begin on the day that they're created and renew
      #   automatically for each billing cycle at the cadence that's configured in the
      #   plan definition.
      #
      #   Subscriptions also default to **beginning of month alignment**, which means the
      #   first invoice issued for the subscription will have pro-rated charges between
      #   the `start_date` and the first of the following month. Subsequent billing
      #   periods will always start and end on a month boundary (e.g. subsequent month
      #   starts for monthly billing).
      #
      #   Depending on the plan configuration, any _flat_ recurring fees will be billed
      #   either at the beginning (in-advance) or end (in-arrears) of each billing cycle.
      #   Plans default to **in-advance billing**. Usage-based fees are billed in arrears
      #   as usage is accumulated. In the normal course of events, you can expect an
      #   invoice to contain usage-based charges for the previous period, and a recurring
      #   fee for the following period.
      #
      #   @param id [String]
      #
      #   @param active_plan_phase_order [Integer, nil] The current plan phase that is active, only if the subscription's plan has phase
      #
      #   @param adjustment_intervals [Array<Orb::Models::AdjustmentInterval>] The adjustment intervals for this subscription sorted by the start_date of the a
      #
      #   @param auto_collection [Boolean, nil] Determines whether issued invoices for this subscription will automatically be c
      #
      #   @param billing_cycle_anchor_configuration [Orb::Models::BillingCycleAnchorConfiguration]
      #
      #   @param billing_cycle_day [Integer] The day of the month on which the billing cycle is anchored. If the maximum numb
      #
      #   @param created_at [Time]
      #
      #   @param current_billing_period_end_date [Time, nil] The end of the current billing period. This is an exclusive timestamp, such that
      #
      #   @param current_billing_period_start_date [Time, nil] The start date of the current billing period. This is an inclusive timestamp; th
      #
      #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
      #
      #   @param default_invoice_memo [String, nil] Determines the default memo on this subscriptions' invoices. Note that if this i
      #
      #   @param discount_intervals [Array<Orb::Models::AmountDiscountInterval, Orb::Models::PercentageDiscountInterval, Orb::Models::UsageDiscountInterval>] The discount intervals for this subscription sorted by the start_date. This fiel
      #
      #   @param end_date [Time, nil] The date Orb stops billing for this subscription.
      #
      #   @param fixed_fee_quantity_schedule [Array<Orb::Models::FixedFeeQuantityScheduleEntry>]
      #
      #   @param invoicing_threshold [String, nil]
      #
      #   @param maximum_intervals [Array<Orb::Models::MaximumInterval>] The maximum intervals for this subscription sorted by the start_date. This field
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param minimum_intervals [Array<Orb::Models::MinimumInterval>] The minimum intervals for this subscription sorted by the start_date. This field
      #
      #   @param name [String] The name of the subscription.
      #
      #   @param net_terms [Integer] Determines the difference between the invoice issue date for subscription invoic
      #
      #   @param pending_subscription_change [Orb::Models::SubscriptionChangeMinified, nil] A pending subscription change if one exists on this subscription.
      #
      #   @param plan [Orb::Models::Plan, nil] The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #
      #   @param price_intervals [Array<Orb::Models::PriceInterval>] The price intervals for this subscription.
      #
      #   @param redeemed_coupon [Orb::Models::CouponRedemption, nil]
      #
      #   @param start_date [Time] The date Orb starts billing for this subscription.
      #
      #   @param status [Symbol, Orb::Models::Subscription::Status]
      #
      #   @param trial_info [Orb::Models::SubscriptionTrialInfo]

      module DiscountInterval
        extend Orb::Internal::Type::Union

        discriminator :discount_type

        variant :amount, -> { Orb::AmountDiscountInterval }

        variant :percentage, -> { Orb::PercentageDiscountInterval }

        variant :usage, -> { Orb::UsageDiscountInterval }

        # @!method self.variants
        #   @return [Array(Orb::Models::AmountDiscountInterval, Orb::Models::PercentageDiscountInterval, Orb::Models::UsageDiscountInterval)]
      end

      # @see Orb::Models::Subscription#status
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
