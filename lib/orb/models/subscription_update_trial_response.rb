# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#update_trial
    class SubscriptionUpdateTrialResponse < Orb::Internal::Type::BaseModel
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
      #   @return [Array<Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval>]
      required :adjustment_intervals,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval] }

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #   charged with the saved payment method on the due date. This property defaults to
      #   the plan's behavior. If null, defaults to the customer's setting.
      #
      #   @return [Boolean, nil]
      required :auto_collection, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration]
      required :billing_cycle_anchor_configuration,
               -> { Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration }

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
      required :customer, -> { Orb::Models::Customer }

      # @!attribute default_invoice_memo
      #   Determines the default memo on this subscriptions' invoices. Note that if this
      #   is not provided, it is determined by the plan configuration.
      #
      #   @return [String, nil]
      required :default_invoice_memo, String, nil?: true

      # @!attribute discount_intervals
      #   The discount intervals for this subscription sorted by the start_date.
      #
      #   @return [Array<Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval>]
      required :discount_intervals,
               -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval] }

      # @!attribute end_date
      #   The date Orb stops billing for this subscription.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute fixed_fee_quantity_schedule
      #
      #   @return [Array<Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule>]
      required :fixed_fee_quantity_schedule,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule] }

      # @!attribute invoicing_threshold
      #
      #   @return [String, nil]
      required :invoicing_threshold, String, nil?: true

      # @!attribute maximum_intervals
      #   The maximum intervals for this subscription sorted by the start_date.
      #
      #   @return [Array<Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval>]
      required :maximum_intervals,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval] }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute minimum_intervals
      #   The minimum intervals for this subscription sorted by the start_date.
      #
      #   @return [Array<Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval>]
      required :minimum_intervals,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval] }

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
      #   @return [Orb::Models::SubscriptionUpdateTrialResponse::PendingSubscriptionChange, nil]
      required :pending_subscription_change,
               -> { Orb::Models::SubscriptionUpdateTrialResponse::PendingSubscriptionChange },
               nil?: true

      # @!attribute plan
      #   The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #   subscribed to by a customer. Plans define the billing behavior of the
      #   subscription. You can see more about how to configure prices in the
      #   [Price resource](/reference/price).
      #
      #   @return [Orb::Models::Plan]
      required :plan, -> { Orb::Models::Plan }

      # @!attribute price_intervals
      #   The price intervals for this subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval>]
      required :price_intervals,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval] }

      # @!attribute redeemed_coupon
      #
      #   @return [Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon, nil]
      required :redeemed_coupon, -> { Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon }, nil?: true

      # @!attribute start_date
      #   The date Orb starts billing for this subscription.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::Status]
      required :status, enum: -> { Orb::Models::SubscriptionUpdateTrialResponse::Status }

      # @!attribute trial_info
      #
      #   @return [Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo]
      required :trial_info, -> { Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo }

      # @!attribute changed_resources
      #   The resources that were changed as part of this operation. Only present when
      #   fetched through the subscription changes API or if the
      #   `include_changed_resources` parameter was passed in the request.
      #
      #   @return [Orb::Models::SubscriptionUpdateTrialResponse::ChangedResources, nil]
      optional :changed_resources,
               -> { Orb::Models::SubscriptionUpdateTrialResponse::ChangedResources },
               nil?: true

      # @!method initialize(id:, active_plan_phase_order:, adjustment_intervals:, auto_collection:, billing_cycle_anchor_configuration:, billing_cycle_day:, created_at:, current_billing_period_end_date:, current_billing_period_start_date:, customer:, default_invoice_memo:, discount_intervals:, end_date:, fixed_fee_quantity_schedule:, invoicing_threshold:, maximum_intervals:, metadata:, minimum_intervals:, net_terms:, pending_subscription_change:, plan:, price_intervals:, redeemed_coupon:, start_date:, status:, trial_info:, changed_resources: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionUpdateTrialResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param active_plan_phase_order [Integer, nil] The current plan phase that is active, only if the subscription's plan has phase
      #   ...
      #
      #   @param adjustment_intervals [Array<Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval>] The adjustment intervals for this subscription sorted by the start_date of the a
      #   ...
      #
      #   @param auto_collection [Boolean, nil] Determines whether issued invoices for this subscription will automatically be c
      #   ...
      #
      #   @param billing_cycle_anchor_configuration [Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration]
      #
      #   @param billing_cycle_day [Integer] The day of the month on which the billing cycle is anchored. If the maximum numb
      #   ...
      #
      #   @param created_at [Time]
      #
      #   @param current_billing_period_end_date [Time, nil] The end of the current billing period. This is an exclusive timestamp, such that
      #   ...
      #
      #   @param current_billing_period_start_date [Time, nil] The start date of the current billing period. This is an inclusive timestamp; th
      #   ...
      #
      #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
      #   ...
      #
      #   @param default_invoice_memo [String, nil] Determines the default memo on this subscriptions' invoices. Note that if this i
      #   ...
      #
      #   @param discount_intervals [Array<Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval>] The discount intervals for this subscription sorted by the start_date.
      #
      #   @param end_date [Time, nil] The date Orb stops billing for this subscription.
      #
      #   @param fixed_fee_quantity_schedule [Array<Orb::Models::SubscriptionUpdateTrialResponse::FixedFeeQuantitySchedule>]
      #
      #   @param invoicing_threshold [String, nil]
      #
      #   @param maximum_intervals [Array<Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval>] The maximum intervals for this subscription sorted by the start_date.
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #   ...
      #
      #   @param minimum_intervals [Array<Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval>] The minimum intervals for this subscription sorted by the start_date.
      #
      #   @param net_terms [Integer] Determines the difference between the invoice issue date for subscription invoic
      #   ...
      #
      #   @param pending_subscription_change [Orb::Models::SubscriptionUpdateTrialResponse::PendingSubscriptionChange, nil] A pending subscription change if one exists on this subscription.
      #
      #   @param plan [Orb::Models::Plan] The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #   ...
      #
      #   @param price_intervals [Array<Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval>] The price intervals for this subscription.
      #
      #   @param redeemed_coupon [Orb::Models::SubscriptionUpdateTrialResponse::RedeemedCoupon, nil]
      #
      #   @param start_date [Time] The date Orb starts billing for this subscription.
      #
      #   @param status [Symbol, Orb::Models::SubscriptionUpdateTrialResponse::Status]
      #
      #   @param trial_info [Orb::Models::SubscriptionUpdateTrialResponse::TrialInfo]
      #
      #   @param changed_resources [Orb::Models::SubscriptionUpdateTrialResponse::ChangedResources, nil] The resources that were changed as part of this operation. Only present when fet
      #   ...

      class AdjustmentInterval < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute adjustment
        #
        #   @return [Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment]
        required :adjustment,
                 union: -> { Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment }

        # @!attribute applies_to_price_interval_ids
        #   The price interval IDs that this adjustment applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute end_date
        #   The end date of the adjustment interval.
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute start_date
        #   The start date of the adjustment interval.
        #
        #   @return [Time]
        required :start_date, Time

        # @!method initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:)
        #   @param id [String]
        #
        #   @param adjustment [Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment]
        #
        #   @param applies_to_price_interval_ids [Array<String>] The price interval IDs that this adjustment applies to.
        #
        #   @param end_date [Time, nil] The end date of the adjustment interval.
        #
        #   @param start_date [Time] The start date of the adjustment interval.

        # @see Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment }

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment }

          variant :minimum,
                  -> { Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment }

          variant :maximum,
                  -> { Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment }

          class PlanPhaseUsageDiscountAdjustment < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute plan_phase_order
            #   The plan phase in which this adjustment is active.
            #
            #   @return [Integer, nil]
            required :plan_phase_order, Integer, nil?: true

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!attribute usage_discount
            #   The number of usage units by which to discount the price this adjustment applies
            #   to in a given billing period.
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, plan_phase_order:, reason:, usage_discount:, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #   ...
            #
            #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param usage_discount [Float] The number of usage units by which to discount the price this adjustment applies
            #   ...
            #
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class PlanPhaseAmountDiscountAdjustment < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :amount_discount]
            required :adjustment_type, const: :amount_discount

            # @!attribute amount_discount
            #   The amount by which to discount the prices this adjustment applies to in a given
            #   billing period.
            #
            #   @return [String]
            required :amount_discount, String

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute plan_phase_order
            #   The plan phase in which this adjustment is active.
            #
            #   @return [Integer, nil]
            required :plan_phase_order, Integer, nil?: true

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, amount_discount:, applies_to_price_ids:, is_invoice_level:, plan_phase_order:, reason:, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param amount_discount [String] The amount by which to discount the prices this adjustment applies to in a given
            #   ...
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #   ...
            #
            #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class PlanPhasePercentageDiscountAdjustment < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute percentage_discount
            #   The percentage (as a value between 0 and 1) by which to discount the price
            #   intervals this adjustment applies to in a given billing period.
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute plan_phase_order
            #   The plan phase in which this adjustment is active.
            #
            #   @return [Integer, nil]
            required :plan_phase_order, Integer, nil?: true

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, percentage_discount:, plan_phase_order:, reason:, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #   ...
            #
            #   @param percentage_discount [Float] The percentage (as a value between 0 and 1) by which to discount the price inter
            #   ...
            #
            #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class PlanPhaseMinimumAdjustment < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #   The minimum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute plan_phase_order
            #   The plan phase in which this adjustment is active.
            #
            #   @return [Integer, nil]
            required :plan_phase_order, Integer, nil?: true

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, item_id:, minimum_amount:, plan_phase_order:, reason:, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #   ...
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String] The minimum amount to charge in a given billing period for the prices this adjus
            #   ...
            #
            #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :minimum]
          end

          class PlanPhaseMaximumAdjustment < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #   that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute maximum_amount
            #   The maximum amount to charge in a given billing period for the prices this
            #   adjustment applies to.
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute plan_phase_order
            #   The plan phase in which this adjustment is active.
            #
            #   @return [Integer, nil]
            required :plan_phase_order, Integer, nil?: true

            # @!attribute reason
            #   The reason for the adjustment.
            #
            #   @return [String, nil]
            required :reason, String, nil?: true

            # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, maximum_amount:, plan_phase_order:, reason:, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
            #
            #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
            #   ...
            #
            #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the prices this adjus
            #   ...
            #
            #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
            #
            #   @param reason [String, nil] The reason for the adjustment.
            #
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionUpdateTrialResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment)]
        end
      end

      # @see Orb::Models::SubscriptionUpdateTrialResponse#billing_cycle_anchor_configuration
      class BillingCycleAnchorConfiguration < Orb::Internal::Type::BaseModel
        # @!attribute day
        #   The day of the month on which the billing cycle is anchored. If the maximum
        #   number of days in a month is greater than this value, the last day of the month
        #   is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        #   period begins on the 30th.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #   The month on which the billing cycle is anchored (e.g. a quarterly price
        #   anchored in February would have cycles starting February, May, August, and
        #   November).
        #
        #   @return [Integer, nil]
        optional :month, Integer, nil?: true

        # @!attribute year
        #   The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
        #   anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
        #
        #   @return [Integer, nil]
        optional :year, Integer, nil?: true

        # @!method initialize(day:, month: nil, year: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionUpdateTrialResponse::BillingCycleAnchorConfiguration}
        #   for more details.
        #
        #   @param day [Integer] The day of the month on which the billing cycle is anchored. If the maximum numb
        #   ...
        #
        #   @param month [Integer, nil] The month on which the billing cycle is anchored (e.g. a quarterly price anchore
        #   ...
        #
        #   @param year [Integer, nil] The year on which the billing cycle is anchored (e.g. a 2 year billing cycle anc
        #   ...
      end

      module DiscountInterval
        extend Orb::Internal::Type::Union

        discriminator :discount_type

        variant :amount,
                -> { Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval }

        variant :percentage,
                -> { Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval }

        variant :usage,
                -> { Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval }

        class AmountDiscountInterval < Orb::Internal::Type::BaseModel
          # @!attribute amount_discount
          #   Only available if discount_type is `amount`.
          #
          #   @return [String]
          required :amount_discount, String

          # @!attribute applies_to_price_ids
          #   The price ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute applies_to_price_interval_ids
          #   The price interval ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute discount_type
          #
          #   @return [Symbol, :amount]
          required :discount_type, const: :amount

          # @!attribute end_date
          #   The end date of the discount interval.
          #
          #   @return [Time, nil]
          required :end_date, Time, nil?: true

          # @!attribute start_date
          #   The start date of the discount interval.
          #
          #   @return [Time]
          required :start_date, Time

          # @!method initialize(amount_discount:, applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, start_date:, discount_type: :amount)
          #   @param amount_discount [String] Only available if discount_type is `amount`.
          #
          #   @param applies_to_price_ids [Array<String>] The price ids that this discount interval applies to.
          #
          #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
          #
          #   @param end_date [Time, nil] The end date of the discount interval.
          #
          #   @param start_date [Time] The start date of the discount interval.
          #
          #   @param discount_type [Symbol, :amount]
        end

        class PercentageDiscountInterval < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   The price ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute applies_to_price_interval_ids
          #   The price interval ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute discount_type
          #
          #   @return [Symbol, :percentage]
          required :discount_type, const: :percentage

          # @!attribute end_date
          #   The end date of the discount interval.
          #
          #   @return [Time, nil]
          required :end_date, Time, nil?: true

          # @!attribute percentage_discount
          #   Only available if discount_type is `percentage`.This is a number between 0
          #   and 1.
          #
          #   @return [Float]
          required :percentage_discount, Float

          # @!attribute start_date
          #   The start date of the discount interval.
          #
          #   @return [Time]
          required :start_date, Time

          # @!method initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, percentage_discount:, start_date:, discount_type: :percentage)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval}
          #   for more details.
          #
          #   @param applies_to_price_ids [Array<String>] The price ids that this discount interval applies to.
          #
          #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
          #
          #   @param end_date [Time, nil] The end date of the discount interval.
          #
          #   @param percentage_discount [Float] Only available if discount_type is `percentage`.This is a number between 0 and 1
          #   ...
          #
          #   @param start_date [Time] The start date of the discount interval.
          #
          #   @param discount_type [Symbol, :percentage]
        end

        class UsageDiscountInterval < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   The price ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute applies_to_price_interval_ids
          #   The price interval ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute discount_type
          #
          #   @return [Symbol, :usage]
          required :discount_type, const: :usage

          # @!attribute end_date
          #   The end date of the discount interval.
          #
          #   @return [Time, nil]
          required :end_date, Time, nil?: true

          # @!attribute start_date
          #   The start date of the discount interval.
          #
          #   @return [Time]
          required :start_date, Time

          # @!attribute usage_discount
          #   Only available if discount_type is `usage`. Number of usage units that this
          #   discount is for
          #
          #   @return [Float]
          required :usage_discount, Float

          # @!method initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, start_date:, usage_discount:, discount_type: :usage)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval}
          #   for more details.
          #
          #   @param applies_to_price_ids [Array<String>] The price ids that this discount interval applies to.
          #
          #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
          #
          #   @param end_date [Time, nil] The end date of the discount interval.
          #
          #   @param start_date [Time] The start date of the discount interval.
          #
          #   @param usage_discount [Float] Only available if discount_type is `usage`. Number of usage units that this disc
          #   ...
          #
          #   @param discount_type [Symbol, :usage]
        end

        # @!method self.variants
        #   @return [Array(Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionUpdateTrialResponse::DiscountInterval::UsageDiscountInterval)]
      end

      class FixedFeeQuantitySchedule < Orb::Internal::Type::BaseModel
        # @!attribute end_date
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute price_id
        #
        #   @return [String]
        required :price_id, String

        # @!attribute quantity
        #
        #   @return [Float]
        required :quantity, Float

        # @!attribute start_date
        #
        #   @return [Time]
        required :start_date, Time

        # @!method initialize(end_date:, price_id:, quantity:, start_date:)
        #   @param end_date [Time, nil]
        #   @param price_id [String]
        #   @param quantity [Float]
        #   @param start_date [Time]
      end

      class MaximumInterval < Orb::Internal::Type::BaseModel
        # @!attribute applies_to_price_ids
        #   The price ids that this maximum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute applies_to_price_interval_ids
        #   The price interval ids that this maximum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute end_date
        #   The end date of the maximum interval.
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute maximum_amount
        #   The maximum amount to charge in a given billing period for the price intervals
        #   this transform applies to.
        #
        #   @return [String]
        required :maximum_amount, String

        # @!attribute start_date
        #   The start date of the maximum interval.
        #
        #   @return [Time]
        required :start_date, Time

        # @!method initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, maximum_amount:, start_date:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionUpdateTrialResponse::MaximumInterval} for more
        #   details.
        #
        #   @param applies_to_price_ids [Array<String>] The price ids that this maximum interval applies to.
        #
        #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this maximum interval applies to.
        #
        #   @param end_date [Time, nil] The end date of the maximum interval.
        #
        #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the price intervals t
        #   ...
        #
        #   @param start_date [Time] The start date of the maximum interval.
      end

      class MinimumInterval < Orb::Internal::Type::BaseModel
        # @!attribute applies_to_price_ids
        #   The price ids that this minimum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute applies_to_price_interval_ids
        #   The price interval ids that this minimum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute end_date
        #   The end date of the minimum interval.
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute minimum_amount
        #   The minimum amount to charge in a given billing period for the price intervals
        #   this minimum applies to.
        #
        #   @return [String]
        required :minimum_amount, String

        # @!attribute start_date
        #   The start date of the minimum interval.
        #
        #   @return [Time]
        required :start_date, Time

        # @!method initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, minimum_amount:, start_date:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionUpdateTrialResponse::MinimumInterval} for more
        #   details.
        #
        #   @param applies_to_price_ids [Array<String>] The price ids that this minimum interval applies to.
        #
        #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this minimum interval applies to.
        #
        #   @param end_date [Time, nil] The end date of the minimum interval.
        #
        #   @param minimum_amount [String] The minimum amount to charge in a given billing period for the price intervals t
        #   ...
        #
        #   @param start_date [Time] The start date of the minimum interval.
      end

      # @see Orb::Models::SubscriptionUpdateTrialResponse#pending_subscription_change
      class PendingSubscriptionChange < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   A pending subscription change if one exists on this subscription.
        #
        #   @param id [String]
      end

      class PriceInterval < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute billing_cycle_day
        #   The day of the month that Orb bills for this price
        #
        #   @return [Integer]
        required :billing_cycle_day, Integer

        # @!attribute current_billing_period_end_date
        #   The end of the current billing period. This is an exclusive timestamp, such that
        #   the instant returned is exactly the end of the billing period. Set to null if
        #   this price interval is not currently active.
        #
        #   @return [Time, nil]
        required :current_billing_period_end_date, Time, nil?: true

        # @!attribute current_billing_period_start_date
        #   The start date of the current billing period. This is an inclusive timestamp;
        #   the instant returned is exactly the beginning of the billing period. Set to null
        #   if this price interval is not currently active.
        #
        #   @return [Time, nil]
        required :current_billing_period_start_date, Time, nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that Orb stops billing for
        #   this price.
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute filter
        #   An additional filter to apply to usage queries.
        #
        #   @return [String, nil]
        required :filter, String, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   The fixed fee quantity transitions for this price interval. This is only
        #   relevant for fixed fees.
        #
        #   @return [Array<Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition>, nil]
        required :fixed_fee_quantity_transitions,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition] },
                 nil?: true

        # @!attribute price
        #   The Price resource represents a price that can be billed on a subscription,
        #   resulting in a charge on an invoice in the form of an invoice line item. Prices
        #   take a quantity and determine an amount to bill.
        #
        #   Orb supports a few different pricing models out of the box. Each of these models
        #   is serialized differently in a given Price object. The model_type field
        #   determines the key for the configuration object that is present.
        #
        #   For more on the types of prices, see
        #   [the core concepts documentation](/core-concepts#plan-and-price)
        #
        #   @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice]
        required :price, union: -> { Orb::Models::Price }

        # @!attribute start_date
        #   The start date of the price interval. This is the date that Orb starts billing
        #   for this price.
        #
        #   @return [Time]
        required :start_date, Time

        # @!attribute usage_customer_ids
        #   A list of customer IDs whose usage events will be aggregated and billed under
        #   this price interval.
        #
        #   @return [Array<String>, nil]
        required :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(id:, billing_cycle_day:, current_billing_period_end_date:, current_billing_period_start_date:, end_date:, filter:, fixed_fee_quantity_transitions:, price:, start_date:, usage_customer_ids:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval} for more details.
        #
        #   The Price Interval resource represents a period of time for which a price will
        #   bill on a subscription. A subscription’s price intervals define its billing
        #   behavior.
        #
        #   @param id [String]
        #
        #   @param billing_cycle_day [Integer] The day of the month that Orb bills for this price
        #
        #   @param current_billing_period_end_date [Time, nil] The end of the current billing period. This is an exclusive timestamp, such that
        #   ...
        #
        #   @param current_billing_period_start_date [Time, nil] The start date of the current billing period. This is an inclusive timestamp; th
        #   ...
        #
        #   @param end_date [Time, nil] The end date of the price interval. This is the date that Orb stops billing for
        #   ...
        #
        #   @param filter [String, nil] An additional filter to apply to usage queries.
        #
        #   @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionUpdateTrialResponse::PriceInterval::FixedFeeQuantityTransition>, nil] The fixed fee quantity transitions for this price interval. This is only relevan
        #   ...
        #
        #   @param price [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice] The Price resource represents a price that can be billed on a subscription, resu
        #   ...
        #
        #   @param start_date [Time] The start date of the price interval. This is the date that Orb starts billing f
        #   ...
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th
        #   ...

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
          # @!attribute effective_date
          #
          #   @return [Time]
          required :effective_date, Time

          # @!attribute price_id
          #
          #   @return [String]
          required :price_id, String

          # @!attribute quantity
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!method initialize(effective_date:, price_id:, quantity:)
          #   @param effective_date [Time]
          #   @param price_id [String]
          #   @param quantity [Integer]
        end
      end

      # @see Orb::Models::SubscriptionUpdateTrialResponse#redeemed_coupon
      class RedeemedCoupon < Orb::Internal::Type::BaseModel
        # @!attribute coupon_id
        #
        #   @return [String]
        required :coupon_id, String

        # @!attribute end_date
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute start_date
        #
        #   @return [Time]
        required :start_date, Time

        # @!method initialize(coupon_id:, end_date:, start_date:)
        #   @param coupon_id [String]
        #   @param end_date [Time, nil]
        #   @param start_date [Time]
      end

      # @see Orb::Models::SubscriptionUpdateTrialResponse#status
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::SubscriptionUpdateTrialResponse#trial_info
      class TrialInfo < Orb::Internal::Type::BaseModel
        # @!attribute end_date
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!method initialize(end_date:)
        #   @param end_date [Time, nil]
      end

      # @see Orb::Models::SubscriptionUpdateTrialResponse#changed_resources
      class ChangedResources < Orb::Internal::Type::BaseModel
        # @!attribute created_credit_notes
        #   The credit notes that were created as part of this operation.
        #
        #   @return [Array<Orb::Models::CreditNote>]
        required :created_credit_notes, -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote] }

        # @!attribute created_invoices
        #   The invoices that were created as part of this operation.
        #
        #   @return [Array<Orb::Models::Invoice>]
        required :created_invoices, -> { Orb::Internal::Type::ArrayOf[Orb::Models::Invoice] }

        # @!attribute voided_credit_notes
        #   The credit notes that were voided as part of this operation.
        #
        #   @return [Array<Orb::Models::CreditNote>]
        required :voided_credit_notes, -> { Orb::Internal::Type::ArrayOf[Orb::Models::CreditNote] }

        # @!attribute voided_invoices
        #   The invoices that were voided as part of this operation.
        #
        #   @return [Array<Orb::Models::Invoice>]
        required :voided_invoices, -> { Orb::Internal::Type::ArrayOf[Orb::Models::Invoice] }

        # @!method initialize(created_credit_notes:, created_invoices:, voided_credit_notes:, voided_invoices:)
        #   The resources that were changed as part of this operation. Only present when
        #   fetched through the subscription changes API or if the
        #   `include_changed_resources` parameter was passed in the request.
        #
        #   @param created_credit_notes [Array<Orb::Models::CreditNote>] The credit notes that were created as part of this operation.
        #
        #   @param created_invoices [Array<Orb::Models::Invoice>] The invoices that were created as part of this operation.
        #
        #   @param voided_credit_notes [Array<Orb::Models::CreditNote>] The credit notes that were voided as part of this operation.
        #
        #   @param voided_invoices [Array<Orb::Models::Invoice>] The invoices that were voided as part of this operation.
      end
    end
  end
end
