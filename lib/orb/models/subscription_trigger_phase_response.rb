# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # subscription_trigger_phase_response => {
    #   id: String,
    #   active_plan_phase_order: Integer,
    #   adjustment_intervals: -> { Orb::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval] === _1 },
    #   auto_collection: Orb::BooleanModel,
    #   billing_cycle_anchor_configuration: Orb::Models::SubscriptionTriggerPhaseResponse::BillingCycleAnchorConfiguration,
    #   **_
    # }
    # ```
    class SubscriptionTriggerPhaseResponse < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute active_plan_phase_order
      #   The current plan phase that is active, only if the subscription's plan has
      #     phases.
      #
      #   @return [Integer, nil]
      required :active_plan_phase_order, Integer, nil?: true

      # @!attribute adjustment_intervals
      #   The adjustment intervals for this subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval>]
      required :adjustment_intervals,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval] }

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #     charged with the saved payment method on the due date. This property defaults to
      #     the plan's behavior. If null, defaults to the customer's setting.
      #
      #   @return [Boolean, nil]
      required :auto_collection, Orb::BooleanModel, nil?: true

      # @!attribute billing_cycle_anchor_configuration
      #
      #   @return [Orb::Models::SubscriptionTriggerPhaseResponse::BillingCycleAnchorConfiguration]
      required :billing_cycle_anchor_configuration,
               -> { Orb::Models::SubscriptionTriggerPhaseResponse::BillingCycleAnchorConfiguration }

      # @!attribute billing_cycle_day
      #   The day of the month on which the billing cycle is anchored. If the maximum
      #     number of days in a month is greater than this value, the last day of the month
      #     is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
      #     period begins on the 30th.
      #
      #   @return [Integer]
      required :billing_cycle_day, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute current_billing_period_end_date
      #   The end of the current billing period. This is an exclusive timestamp, such that
      #     the instant returned is not part of the billing period. Set to null for
      #     subscriptions that are not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_end_date, Time, nil?: true

      # @!attribute current_billing_period_start_date
      #   The start date of the current billing period. This is an inclusive timestamp;
      #     the instant returned is exactly the beginning of the billing period. Set to null
      #     if the subscription is not currently active.
      #
      #   @return [Time, nil]
      required :current_billing_period_start_date, Time, nil?: true

      # @!attribute customer
      #   A customer is a buyer of your products, and the other party to the billing
      #     relationship.
      #
      #     In Orb, customers are assigned system generated identifiers automatically, but
      #     it's often desirable to have these match existing identifiers in your system. To
      #     avoid having to denormalize Orb ID information, you can pass in an
      #     `external_customer_id` with your own identifier. See
      #     [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      #     information about how these aliases work in Orb.
      #
      #     In addition to having an identifier in your system, a customer may exist in a
      #     payment provider solution like Stripe. Use the `payment_provider_id` and the
      #     `payment_provider` enum field to express this mapping.
      #
      #     A customer also has a timezone (from the standard
      #     [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      #     your account's timezone. See [Timezone localization](/essentials/timezones) for
      #     information on what this timezone parameter influences within Orb.
      #
      #   @return [Orb::Models::Customer]
      required :customer, -> { Orb::Models::Customer }

      # @!attribute default_invoice_memo
      #   Determines the default memo on this subscriptions' invoices. Note that if this
      #     is not provided, it is determined by the plan configuration.
      #
      #   @return [String, nil]
      required :default_invoice_memo, String, nil?: true

      # @!attribute discount_intervals
      #   The discount intervals for this subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::UsageDiscountInterval>]
      required :discount_intervals,
               -> { Orb::ArrayOf[union: Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval] }

      # @!attribute end_date
      #   The date Orb stops billing for this subscription.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute fixed_fee_quantity_schedule
      #
      #   @return [Array<Orb::Models::SubscriptionTriggerPhaseResponse::FixedFeeQuantitySchedule>]
      required :fixed_fee_quantity_schedule,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::FixedFeeQuantitySchedule] }

      # @!attribute invoicing_threshold
      #
      #   @return [String, nil]
      required :invoicing_threshold, String, nil?: true

      # @!attribute maximum_intervals
      #   The maximum intervals for this subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionTriggerPhaseResponse::MaximumInterval>]
      required :maximum_intervals,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::MaximumInterval] }

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #     to an empty dictionary. Individual keys can be removed by setting the value to
      #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #     `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::HashOf[String]

      # @!attribute minimum_intervals
      #   The minimum intervals for this subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionTriggerPhaseResponse::MinimumInterval>]
      required :minimum_intervals,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::MinimumInterval] }

      # @!attribute net_terms
      #   Determines the difference between the invoice issue date for subscription
      #     invoices as the date that they are due. A value of `0` here represents that the
      #     invoice is due on issue, whereas a value of `30` represents that the customer
      #     has a month to pay the invoice.
      #
      #   @return [Integer]
      required :net_terms, Integer

      # @!attribute plan
      #   The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #     subscribed to by a customer. Plans define the billing behavior of the
      #     subscription. You can see more about how to configure prices in the
      #     [Price resource](/reference/price).
      #
      #   @return [Orb::Models::Plan]
      required :plan, -> { Orb::Models::Plan }

      # @!attribute price_intervals
      #   The price intervals for this subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionTriggerPhaseResponse::PriceInterval>]
      required :price_intervals,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::PriceInterval] }

      # @!attribute redeemed_coupon
      #
      #   @return [Orb::Models::SubscriptionTriggerPhaseResponse::RedeemedCoupon, nil]
      required :redeemed_coupon,
               -> { Orb::Models::SubscriptionTriggerPhaseResponse::RedeemedCoupon },
               nil?: true

      # @!attribute start_date
      #   The date Orb starts billing for this subscription.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionTriggerPhaseResponse::Status]
      required :status, enum: -> { Orb::Models::SubscriptionTriggerPhaseResponse::Status }

      # @!attribute trial_info
      #
      #   @return [Orb::Models::SubscriptionTriggerPhaseResponse::TrialInfo]
      required :trial_info, -> { Orb::Models::SubscriptionTriggerPhaseResponse::TrialInfo }

      # @!parse
      #   # @param id [String]
      #   # @param active_plan_phase_order [Integer, nil]
      #   # @param adjustment_intervals [Array<Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval>]
      #   # @param auto_collection [Boolean, nil]
      #   # @param billing_cycle_anchor_configuration [Orb::Models::SubscriptionTriggerPhaseResponse::BillingCycleAnchorConfiguration]
      #   # @param billing_cycle_day [Integer]
      #   # @param created_at [Time]
      #   # @param current_billing_period_end_date [Time, nil]
      #   # @param current_billing_period_start_date [Time, nil]
      #   # @param customer [Orb::Models::Customer]
      #   # @param default_invoice_memo [String, nil]
      #   # @param discount_intervals [Array<Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::AmountDiscountInterval, Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::PercentageDiscountInterval, Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::UsageDiscountInterval>]
      #   # @param end_date [Time, nil]
      #   # @param fixed_fee_quantity_schedule [Array<Orb::Models::SubscriptionTriggerPhaseResponse::FixedFeeQuantitySchedule>]
      #   # @param invoicing_threshold [String, nil]
      #   # @param maximum_intervals [Array<Orb::Models::SubscriptionTriggerPhaseResponse::MaximumInterval>]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param minimum_intervals [Array<Orb::Models::SubscriptionTriggerPhaseResponse::MinimumInterval>]
      #   # @param net_terms [Integer]
      #   # @param plan [Orb::Models::Plan]
      #   # @param price_intervals [Array<Orb::Models::SubscriptionTriggerPhaseResponse::PriceInterval>]
      #   # @param redeemed_coupon [Orb::Models::SubscriptionTriggerPhaseResponse::RedeemedCoupon, nil]
      #   # @param start_date [Time]
      #   # @param status [Symbol, Orb::Models::SubscriptionTriggerPhaseResponse::Status]
      #   # @param trial_info [Orb::Models::SubscriptionTriggerPhaseResponse::TrialInfo]
      #   #
      #   def initialize(
      #     id:,
      #     active_plan_phase_order:,
      #     adjustment_intervals:,
      #     auto_collection:,
      #     billing_cycle_anchor_configuration:,
      #     billing_cycle_day:,
      #     created_at:,
      #     current_billing_period_end_date:,
      #     current_billing_period_start_date:,
      #     customer:,
      #     default_invoice_memo:,
      #     discount_intervals:,
      #     end_date:,
      #     fixed_fee_quantity_schedule:,
      #     invoicing_threshold:,
      #     maximum_intervals:,
      #     metadata:,
      #     minimum_intervals:,
      #     net_terms:,
      #     plan:,
      #     price_intervals:,
      #     redeemed_coupon:,
      #     start_date:,
      #     status:,
      #     trial_info:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @example
      # ```ruby
      # adjustment_interval => {
      #   id: String,
      #   adjustment: Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment,
      #   applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 },
      #   end_date: Time,
      #   start_date: Time
      # }
      # ```
      class AdjustmentInterval < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute adjustment
        #
        #   @return [Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment]
        required :adjustment,
                 union: -> { Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment }

        # @!attribute applies_to_price_interval_ids
        #   The price interval IDs that this adjustment applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_interval_ids, Orb::ArrayOf[String]

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

        # @!parse
        #   # @param id [String]
        #   # @param adjustment [Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment]
        #   # @param applies_to_price_interval_ids [Array<String>]
        #   # @param end_date [Time, nil]
        #   # @param start_date [Time]
        #   #
        #   def initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case adjustment
        # in {adjustment_type: "usage_discount", id: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, is_invoice_level: Orb::BooleanModel}
        #   # Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment ...
        # in {adjustment_type: "amount_discount", id: String, amount_discount: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }}
        #   # Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment ...
        # in {adjustment_type: "percentage_discount", id: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, is_invoice_level: Orb::BooleanModel}
        #   # Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment ...
        # in {adjustment_type: "minimum", id: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, is_invoice_level: Orb::BooleanModel}
        #   # Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment ...
        # in {adjustment_type: "maximum", id: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, is_invoice_level: Orb::BooleanModel}
        #   # Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment ...
        # end
        # ```
        #
        # @example
        # ```ruby
        # case adjustment
        # in Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment
        #   # ...
        # in Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment
        #   # ...
        # in Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment
        #   # ...
        # in Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment
        #   # ...
        # in Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment
        #   # ...
        # end
        # ```
        class Adjustment < Orb::Union
          discriminator :adjustment_type

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseUsageDiscountAdjustment }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseAmountDiscountAdjustment }

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhasePercentageDiscountAdjustment }

          variant :minimum,
                  -> { Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMinimumAdjustment }

          variant :maximum,
                  -> { Orb::Models::SubscriptionTriggerPhaseResponse::AdjustmentInterval::Adjustment::PlanPhaseMaximumAdjustment }

          # @example
          # ```ruby
          # plan_phase_usage_discount_adjustment => {
          #   id: String,
          #   adjustment_type: :usage_discount,
          #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
          #   is_invoice_level: Orb::BooleanModel,
          #   plan_phase_order: Integer,
          #   **_
          # }
          # ```
          class PlanPhaseUsageDiscountAdjustment < Orb::BaseModel
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
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #     that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::BooleanModel

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
            #     to in a given billing period.
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!parse
            #   # @param id [String]
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param is_invoice_level [Boolean]
            #   # @param plan_phase_order [Integer, nil]
            #   # @param reason [String, nil]
            #   # @param usage_discount [Float]
            #   # @param adjustment_type [Symbol, :usage_discount]
            #   #
            #   def initialize(
            #     id:,
            #     applies_to_price_ids:,
            #     is_invoice_level:,
            #     plan_phase_order:,
            #     reason:,
            #     usage_discount:,
            #     adjustment_type: :usage_discount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @example
          # ```ruby
          # plan_phase_amount_discount_adjustment => {
          #   id: String,
          #   adjustment_type: :amount_discount,
          #   amount_discount: String,
          #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
          #   is_invoice_level: Orb::BooleanModel,
          #   **_
          # }
          # ```
          class PlanPhaseAmountDiscountAdjustment < Orb::BaseModel
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
            #     billing period.
            #
            #   @return [String]
            required :amount_discount, String

            # @!attribute applies_to_price_ids
            #   The price IDs that this adjustment applies to.
            #
            #   @return [Array<String>]
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #     that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::BooleanModel

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

            # @!parse
            #   # @param id [String]
            #   # @param amount_discount [String]
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param is_invoice_level [Boolean]
            #   # @param plan_phase_order [Integer, nil]
            #   # @param reason [String, nil]
            #   # @param adjustment_type [Symbol, :amount_discount]
            #   #
            #   def initialize(
            #     id:,
            #     amount_discount:,
            #     applies_to_price_ids:,
            #     is_invoice_level:,
            #     plan_phase_order:,
            #     reason:,
            #     adjustment_type: :amount_discount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @example
          # ```ruby
          # plan_phase_percentage_discount_adjustment => {
          #   id: String,
          #   adjustment_type: :percentage_discount,
          #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
          #   is_invoice_level: Orb::BooleanModel,
          #   percentage_discount: Float,
          #   **_
          # }
          # ```
          class PlanPhasePercentageDiscountAdjustment < Orb::BaseModel
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
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #     that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::BooleanModel

            # @!attribute percentage_discount
            #   The percentage (as a value between 0 and 1) by which to discount the price
            #     intervals this adjustment applies to in a given billing period.
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

            # @!parse
            #   # @param id [String]
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param is_invoice_level [Boolean]
            #   # @param percentage_discount [Float]
            #   # @param plan_phase_order [Integer, nil]
            #   # @param reason [String, nil]
            #   # @param adjustment_type [Symbol, :percentage_discount]
            #   #
            #   def initialize(
            #     id:,
            #     applies_to_price_ids:,
            #     is_invoice_level:,
            #     percentage_discount:,
            #     plan_phase_order:,
            #     reason:,
            #     adjustment_type: :percentage_discount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @example
          # ```ruby
          # plan_phase_minimum_adjustment => {
          #   id: String,
          #   adjustment_type: :minimum,
          #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
          #   is_invoice_level: Orb::BooleanModel,
          #   item_id: String,
          #   **_
          # }
          # ```
          class PlanPhaseMinimumAdjustment < Orb::BaseModel
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
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #     that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::BooleanModel

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #   The minimum amount to charge in a given billing period for the prices this
            #     adjustment applies to.
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

            # @!parse
            #   # @param id [String]
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param is_invoice_level [Boolean]
            #   # @param item_id [String]
            #   # @param minimum_amount [String]
            #   # @param plan_phase_order [Integer, nil]
            #   # @param reason [String, nil]
            #   # @param adjustment_type [Symbol, :minimum]
            #   #
            #   def initialize(
            #     id:,
            #     applies_to_price_ids:,
            #     is_invoice_level:,
            #     item_id:,
            #     minimum_amount:,
            #     plan_phase_order:,
            #     reason:,
            #     adjustment_type: :minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          # @example
          # ```ruby
          # plan_phase_maximum_adjustment => {
          #   id: String,
          #   adjustment_type: :maximum,
          #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
          #   is_invoice_level: Orb::BooleanModel,
          #   maximum_amount: String,
          #   **_
          # }
          # ```
          class PlanPhaseMaximumAdjustment < Orb::BaseModel
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
            required :applies_to_price_ids, Orb::ArrayOf[String]

            # @!attribute is_invoice_level
            #   True for adjustments that apply to an entire invocice, false for adjustments
            #     that apply to only one price.
            #
            #   @return [Boolean]
            required :is_invoice_level, Orb::BooleanModel

            # @!attribute maximum_amount
            #   The maximum amount to charge in a given billing period for the prices this
            #     adjustment applies to.
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

            # @!parse
            #   # @param id [String]
            #   # @param applies_to_price_ids [Array<String>]
            #   # @param is_invoice_level [Boolean]
            #   # @param maximum_amount [String]
            #   # @param plan_phase_order [Integer, nil]
            #   # @param reason [String, nil]
            #   # @param adjustment_type [Symbol, :maximum]
            #   #
            #   def initialize(
            #     id:,
            #     applies_to_price_ids:,
            #     is_invoice_level:,
            #     maximum_amount:,
            #     plan_phase_order:,
            #     reason:,
            #     adjustment_type: :maximum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end
      end

      # @example
      # ```ruby
      # billing_cycle_anchor_configuration => {
      #   day: Integer,
      #   month: Integer,
      #   year: Integer
      # }
      # ```
      class BillingCycleAnchorConfiguration < Orb::BaseModel
        # @!attribute day
        #   The day of the month on which the billing cycle is anchored. If the maximum
        #     number of days in a month is greater than this value, the last day of the month
        #     is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        #     period begins on the 30th.
        #
        #   @return [Integer]
        required :day, Integer

        # @!attribute month
        #   The month on which the billing cycle is anchored (e.g. a quarterly price
        #     anchored in February would have cycles starting February, May, August, and
        #     November).
        #
        #   @return [Integer, nil]
        optional :month, Integer, nil?: true

        # @!attribute year
        #   The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
        #     anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
        #
        #   @return [Integer, nil]
        optional :year, Integer, nil?: true

        # @!parse
        #   # @param day [Integer]
        #   # @param month [Integer, nil]
        #   # @param year [Integer, nil]
        #   #
        #   def initialize(day:, month: nil, year: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case discount_interval
      # in {discount_type: "amount", amount_discount: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 }}
      #   # Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::AmountDiscountInterval ...
      # in {discount_type: "percentage", applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 }, end_date: Time}
      #   # Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::PercentageDiscountInterval ...
      # in {discount_type: "usage", applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 }, end_date: Time}
      #   # Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::UsageDiscountInterval ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case discount_interval
      # in Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::AmountDiscountInterval
      #   # ...
      # in Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::PercentageDiscountInterval
      #   # ...
      # in Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::UsageDiscountInterval
      #   # ...
      # end
      # ```
      class DiscountInterval < Orb::Union
        discriminator :discount_type

        variant :amount,
                -> { Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::AmountDiscountInterval }

        variant :percentage,
                -> { Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::PercentageDiscountInterval }

        variant :usage,
                -> { Orb::Models::SubscriptionTriggerPhaseResponse::DiscountInterval::UsageDiscountInterval }

        # @example
        # ```ruby
        # amount_discount_interval => {
        #   amount_discount: String,
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 },
        #   discount_type: :amount,
        #   end_date: Time
        # }
        # ```
        class AmountDiscountInterval < Orb::BaseModel
          # @!attribute amount_discount
          #   Only available if discount_type is `amount`.
          #
          #   @return [String]
          required :amount_discount, String

          # @!attribute applies_to_price_ids
          #   The price ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute applies_to_price_interval_ids
          #   The price interval ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_interval_ids, Orb::ArrayOf[String]

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

          # @!parse
          #   # @param amount_discount [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param applies_to_price_interval_ids [Array<String>]
          #   # @param end_date [Time, nil]
          #   # @param start_date [Time]
          #   # @param discount_type [Symbol, :amount]
          #   #
          #   def initialize(
          #     amount_discount:,
          #     applies_to_price_ids:,
          #     applies_to_price_interval_ids:,
          #     end_date:,
          #     start_date:,
          #     discount_type: :amount,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # percentage_discount_interval => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 },
        #   discount_type: :percentage,
        #   end_date: Time,
        #   percentage_discount: Float
        # }
        # ```
        class PercentageDiscountInterval < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   The price ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute applies_to_price_interval_ids
          #   The price interval ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_interval_ids, Orb::ArrayOf[String]

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
          #     and 1.
          #
          #   @return [Float]
          required :percentage_discount, Float

          # @!attribute start_date
          #   The start date of the discount interval.
          #
          #   @return [Time]
          required :start_date, Time

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param applies_to_price_interval_ids [Array<String>]
          #   # @param end_date [Time, nil]
          #   # @param percentage_discount [Float]
          #   # @param start_date [Time]
          #   # @param discount_type [Symbol, :percentage]
          #   #
          #   def initialize(
          #     applies_to_price_ids:,
          #     applies_to_price_interval_ids:,
          #     end_date:,
          #     percentage_discount:,
          #     start_date:,
          #     discount_type: :percentage,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # @example
        # ```ruby
        # usage_discount_interval => {
        #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
        #   applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 },
        #   discount_type: :usage,
        #   end_date: Time,
        #   start_date: Time
        # }
        # ```
        class UsageDiscountInterval < Orb::BaseModel
          # @!attribute applies_to_price_ids
          #   The price ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute applies_to_price_interval_ids
          #   The price interval ids that this discount interval applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_interval_ids, Orb::ArrayOf[String]

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
          #     discount is for
          #
          #   @return [Float]
          required :usage_discount, Float

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param applies_to_price_interval_ids [Array<String>]
          #   # @param end_date [Time, nil]
          #   # @param start_date [Time]
          #   # @param usage_discount [Float]
          #   # @param discount_type [Symbol, :usage]
          #   #
          #   def initialize(
          #     applies_to_price_ids:,
          #     applies_to_price_interval_ids:,
          #     end_date:,
          #     start_date:,
          #     usage_discount:,
          #     discount_type: :usage,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # fixed_fee_quantity_schedule => {
      #   end_date: Time,
      #   price_id: String,
      #   quantity: Float,
      #   start_date: Time
      # }
      # ```
      class FixedFeeQuantitySchedule < Orb::BaseModel
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

        # @!parse
        #   # @param end_date [Time, nil]
        #   # @param price_id [String]
        #   # @param quantity [Float]
        #   # @param start_date [Time]
        #   #
        #   def initialize(end_date:, price_id:, quantity:, start_date:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @example
      # ```ruby
      # maximum_interval => {
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
      #   applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 },
      #   end_date: Time,
      #   maximum_amount: String,
      #   start_date: Time
      # }
      # ```
      class MaximumInterval < Orb::BaseModel
        # @!attribute applies_to_price_ids
        #   The price ids that this maximum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute applies_to_price_interval_ids
        #   The price interval ids that this maximum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_interval_ids, Orb::ArrayOf[String]

        # @!attribute end_date
        #   The end date of the maximum interval.
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute maximum_amount
        #   The maximum amount to charge in a given billing period for the price intervals
        #     this transform applies to.
        #
        #   @return [String]
        required :maximum_amount, String

        # @!attribute start_date
        #   The start date of the maximum interval.
        #
        #   @return [Time]
        required :start_date, Time

        # @!parse
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param applies_to_price_interval_ids [Array<String>]
        #   # @param end_date [Time, nil]
        #   # @param maximum_amount [String]
        #   # @param start_date [Time]
        #   #
        #   def initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, maximum_amount:, start_date:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @example
      # ```ruby
      # minimum_interval => {
      #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
      #   applies_to_price_interval_ids: -> { Orb::ArrayOf[String] === _1 },
      #   end_date: Time,
      #   minimum_amount: String,
      #   start_date: Time
      # }
      # ```
      class MinimumInterval < Orb::BaseModel
        # @!attribute applies_to_price_ids
        #   The price ids that this minimum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute applies_to_price_interval_ids
        #   The price interval ids that this minimum interval applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_interval_ids, Orb::ArrayOf[String]

        # @!attribute end_date
        #   The end date of the minimum interval.
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute minimum_amount
        #   The minimum amount to charge in a given billing period for the price intervals
        #     this minimum applies to.
        #
        #   @return [String]
        required :minimum_amount, String

        # @!attribute start_date
        #   The start date of the minimum interval.
        #
        #   @return [Time]
        required :start_date, Time

        # @!parse
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param applies_to_price_interval_ids [Array<String>]
        #   # @param end_date [Time, nil]
        #   # @param minimum_amount [String]
        #   # @param start_date [Time]
        #   #
        #   def initialize(applies_to_price_ids:, applies_to_price_interval_ids:, end_date:, minimum_amount:, start_date:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @example
      # ```ruby
      # price_interval => {
      #   id: String,
      #   billing_cycle_day: Integer,
      #   current_billing_period_end_date: Time,
      #   current_billing_period_start_date: Time,
      #   end_date: Time,
      #   **_
      # }
      # ```
      class PriceInterval < Orb::BaseModel
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
        #     the instant returned is exactly the end of the billing period. Set to null if
        #     this price interval is not currently active.
        #
        #   @return [Time, nil]
        required :current_billing_period_end_date, Time, nil?: true

        # @!attribute current_billing_period_start_date
        #   The start date of the current billing period. This is an inclusive timestamp;
        #     the instant returned is exactly the beginning of the billing period. Set to null
        #     if this price interval is not currently active.
        #
        #   @return [Time, nil]
        required :current_billing_period_start_date, Time, nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that Orb stops billing for
        #     this price.
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   The fixed fee quantity transitions for this price interval. This is only
        #     relevant for fixed fees.
        #
        #   @return [Array<Orb::Models::SubscriptionTriggerPhaseResponse::PriceInterval::FixedFeeQuantityTransition>, nil]
        required :fixed_fee_quantity_transitions,
                 -> {
                   Orb::ArrayOf[Orb::Models::SubscriptionTriggerPhaseResponse::PriceInterval::FixedFeeQuantityTransition]
                 },
                 nil?: true

        # @!attribute price
        #   The Price resource represents a price that can be billed on a subscription,
        #     resulting in a charge on an invoice in the form of an invoice line item. Prices
        #     take a quantity and determine an amount to bill.
        #
        #     Orb supports a few different pricing models out of the box. Each of these models
        #     is serialized differently in a given Price object. The model_type field
        #     determines the key for the configuration object that is present.
        #
        #     For more on the types of prices, see
        #     [the core concepts documentation](/core-concepts#plan-and-price)
        #
        #   @return [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice]
        required :price, union: -> { Orb::Models::Price }

        # @!attribute start_date
        #   The start date of the price interval. This is the date that Orb starts billing
        #     for this price.
        #
        #   @return [Time]
        required :start_date, Time

        # @!parse
        #   # The Price Interval resource represents a period of time for which a price will
        #   #   bill on a subscription. A subscription’s price intervals define its billing
        #   #   behavior.
        #   #
        #   # @param id [String]
        #   # @param billing_cycle_day [Integer]
        #   # @param current_billing_period_end_date [Time, nil]
        #   # @param current_billing_period_start_date [Time, nil]
        #   # @param end_date [Time, nil]
        #   # @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionTriggerPhaseResponse::PriceInterval::FixedFeeQuantityTransition>, nil]
        #   # @param price [Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice]
        #   # @param start_date [Time]
        #   #
        #   def initialize(
        #     id:,
        #     billing_cycle_day:,
        #     current_billing_period_end_date:,
        #     current_billing_period_start_date:,
        #     end_date:,
        #     fixed_fee_quantity_transitions:,
        #     price:,
        #     start_date:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @example
        # ```ruby
        # fixed_fee_quantity_transition => {
        #   effective_date: Time,
        #   price_id: String,
        #   quantity: Integer
        # }
        # ```
        class FixedFeeQuantityTransition < Orb::BaseModel
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

          # @!parse
          #   # @param effective_date [Time]
          #   # @param price_id [String]
          #   # @param quantity [Integer]
          #   #
          #   def initialize(effective_date:, price_id:, quantity:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      # @example
      # ```ruby
      # redeemed_coupon => {
      #   coupon_id: String,
      #   end_date: Time,
      #   start_date: Time
      # }
      # ```
      class RedeemedCoupon < Orb::BaseModel
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

        # @!parse
        #   # @param coupon_id [String]
        #   # @param end_date [Time, nil]
        #   # @param start_date [Time]
        #   #
        #   def initialize(coupon_id:, end_date:, start_date:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :ended
      #   # ...
      # in :upcoming
      #   # ...
      # end
      # ```
      class Status < Orb::Enum
        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @example
      # ```ruby
      # trial_info => {
      #   end_date: Time
      # }
      # ```
      class TrialInfo < Orb::BaseModel
        # @!attribute end_date
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!parse
        #   # @param end_date [Time, nil]
        #   #
        #   def initialize(end_date:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
